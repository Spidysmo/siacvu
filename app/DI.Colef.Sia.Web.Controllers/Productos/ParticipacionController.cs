using System;
using System.Web.Mvc;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData;
using SharpArch.Web.NHibernate;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Productos
{
    [HandleError]
    public class ParticipacionController : BaseController<Participacion, ParticipacionForm>
    {
        readonly ICatalogoService catalogoService;
        readonly IEstadoPaisMapper estadoPaisMapper;
        readonly IInvestigadorMapper investigadorMapper;
        readonly IInvestigadorService investigadorService;
        readonly IOtraParticipacionMapper otraParticipacionMapper;
        readonly IPaisMapper paisMapper;
        readonly IParticipacionMapper participacionMapper;
        readonly IParticipacionService participacionService;
        readonly IPeriodoReferenciaMapper periodoReferenciaMapper;
        readonly IProyectoMapper proyectoMapper;
        readonly ITipoPresentacionMapper tipoPresentacionMapper;

        public ParticipacionController(IParticipacionService participacionService,
                                       IParticipacionMapper participacionMapper,
                                       ICatalogoService catalogoService,
                                       IUsuarioService usuarioService,
                                       IInvestigadorMapper investigadorMapper,
                                       IOtraParticipacionMapper otraParticipacionMapper,
                                       ITipoPresentacionMapper tipoPresentacionMapper,
                                       IPeriodoReferenciaMapper periodoReferenciaMapper,
                                       IProyectoMapper proyectoMapper,
                                       IPaisMapper paisMapper,
                                       IInvestigadorService investigadorService,
                                       IEstadoPaisMapper estadoPaisMapper, ISearchService searchService)
            : base(usuarioService, searchService)
        {
            this.catalogoService = catalogoService;
            this.participacionService = participacionService;
            this.participacionMapper = participacionMapper;
            this.investigadorMapper = investigadorMapper;
            this.otraParticipacionMapper = otraParticipacionMapper;
            this.tipoPresentacionMapper = tipoPresentacionMapper;
            this.periodoReferenciaMapper = periodoReferenciaMapper;
            this.proyectoMapper = proyectoMapper;
            this.paisMapper = paisMapper;
            this.estadoPaisMapper = estadoPaisMapper;
            this.investigadorService = investigadorService;
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index()
        {
            var data = CreateViewDataWithTitle(Title.Index);

            var participacions = participacionService.GetAllParticipacions();
            data.List = participacionMapper.Map(participacions);

            return View(data);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {
            var data = CreateViewDataWithTitle(Title.New);
            data.Form = SetupNewForm();

            return View(data);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var participacion = participacionService.GetParticipacionById(id);

            if (participacion == null)
                return RedirectToIndex("no ha sido encontrado", true);

            if (participacion.Investigador.Id != CurrentInvestigador().Id)
                return RedirectToIndex("no lo puede modificar", true);

            var participacionForm = participacionMapper.Map(participacion);

            data.Form = SetupNewForm(participacionForm);
            FormSetCombos(data.Form);

            ViewData.Model = data;
            return View();
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var participacion = participacionService.GetParticipacionById(id);
            data.Form = participacionMapper.Map(participacion);

            ViewData.Model = data;
            return View();
        }

        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(ParticipacionForm form)
        {
            var participacion = participacionMapper.Map(form, CurrentUser(), CurrentInvestigador());

            if (!IsValidateModel(participacion, form, Title.New, "Participacion"))
            {
                ((GenericViewData<ParticipacionForm>) ViewData.Model).Form = SetupNewForm();
                return ViewNew();
            }

            participacionService.SaveParticipacion(participacion);

            return RedirectToIndex(String.Format("Participaci�n {0} ha sido creada", participacion.Titulo));
        }

        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(ParticipacionForm form)
        {
            var participacion = participacionMapper.Map(form, CurrentUser(), CurrentInvestigador());

            if (!IsValidateModel(participacion, form, Title.Edit))
            {
                var participacionForm = participacionMapper.Map(participacion);

                ((GenericViewData<ParticipacionForm>) ViewData.Model).Form = SetupNewForm(participacionForm);
                FormSetCombos(participacionForm);
                return ViewEdit();
            }

            participacionService.SaveParticipacion(participacion);

            return RedirectToIndex(String.Format("Participaci�n {0} ha sido modificada", participacion.Titulo));
        }

        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var participacion = participacionService.GetParticipacionById(id);

            if (participacion.Investigador.Id != CurrentInvestigador().Id)
                return RedirectToIndex("no lo puede modificar", true);

            participacion.Activo = true;
            participacion.ModificadoPor = CurrentUser();
            participacionService.SaveParticipacion(participacion);

            var form = participacionMapper.Map(participacion);

            return Rjs(form);
        }

        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var participacion = participacionService.GetParticipacionById(id);

            if (participacion.Investigador.Id != CurrentInvestigador().Id)
                return RedirectToIndex("no lo puede modificar", true);

            participacion.Activo = false;
            participacion.ModificadoPor = CurrentUser();
            participacionService.SaveParticipacion(participacion);

            var form = participacionMapper.Map(participacion);

            return Rjs("Activate", form);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<Participacion>(x => x.Titulo, q);
            return Content(data);
        }

        ParticipacionForm SetupNewForm()
        {
            return SetupNewForm(null);
        }

        ParticipacionForm SetupNewForm(ParticipacionForm form)
        {
            form = form ?? new ParticipacionForm();

            form.Autores = investigadorMapper.Map(investigadorService.GetActiveInvestigadores());
            form.OtrasParticipaciones = otraParticipacionMapper.Map(catalogoService.GetActiveOtraParticipaciones());
            form.TiposPresentaciones = tipoPresentacionMapper.Map(catalogoService.GetActiveTipoPresentaciones());
            form.PeriodosReferencias = periodoReferenciaMapper.Map(catalogoService.GetActivePeriodoReferencias());
            form.Proyectos = proyectoMapper.Map(catalogoService.GetActiveProyectos());
            form.Paises = paisMapper.Map(catalogoService.GetActivePaises());
            form.EstadosPaises = estadoPaisMapper.Map(catalogoService.GetActiveEstadoPaises());

            return form;
        }

        void FormSetCombos(ParticipacionForm form)
        {
            ViewData["Autor"] = form.AutorId;
            ViewData["OtraParticipacion"] = form.OtraParticipacionId;
            ViewData["TipoPresentacion"] = form.TipoPresentacionId;
            ViewData["PeriodoReferencia"] = form.PeriodoReferenciaId;
            ViewData["Proyecto"] = form.ProyectoId;
            ViewData["Pais"] = form.PaisId;
            ViewData["EstadoPais"] = form.EstadoPaisId;
        }
    }
}