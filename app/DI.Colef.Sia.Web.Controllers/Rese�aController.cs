using System;
using System.Web.Mvc;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Helpers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData;
using SharpArch.Web.NHibernate;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers
{
    [HandleError]
    public class Rese�aController : BaseController<Rese�a, Rese�aForm>
    {
        readonly IAreaMapper areaMapper;
        readonly ICatalogoService catalogoService;
        readonly ICoautorExternoRese�aMapper coautorExternoRese�aMapper;
        readonly ICoautorInternoRese�aMapper coautorInternoRese�aMapper;
        readonly IDisciplinaMapper disciplinaMapper;
        readonly IEstadoProductoMapper estadoProductoMapper;
        readonly IInvestigadorExternoMapper investigadorExternoMapper;
        readonly IInvestigadorMapper investigadorMapper;
        readonly IInvestigadorService investigadorService;
        readonly ILineaTematicaMapper lineaTematicaMapper;
        readonly IPaisMapper paisMapper;
        readonly IPeriodoReferenciaMapper periodoReferenciaMapper;
        readonly IProyectoMapper proyectoMapper;
        readonly IRese�aMapper rese�aMapper;
        readonly IRese�aService rese�aService;
        readonly ISubdisciplinaMapper subdisciplinaMapper;


        public Rese�aController(IRese�aService rese�aService, IRese�aMapper rese�aMapper,
                                ICatalogoService catalogoService,
                                IUsuarioService usuarioService, IEstadoProductoMapper estadoProductoMapper,
                                IPeriodoReferenciaMapper periodoReferenciaMapper,
                                IProyectoMapper proyectoMapper, ILineaTematicaMapper lineaTematicaMapper,
                                IInvestigadorExternoMapper investigadorExternoMapper,
                                IInvestigadorMapper investigadorMapper, IPaisMapper paisMapper, IAreaMapper areaMapper,
                                IDisciplinaMapper disciplinaMapper,
                                ISubdisciplinaMapper subdisciplinaMapper, IInvestigadorService investigadorService,
                                ICoautorExternoRese�aMapper coautorExternoRese�aMapper,
                                ICoautorInternoRese�aMapper coautorInternoRese�aMapper, ISearchService searchService)
            : base(usuarioService, searchService)
        {
            this.catalogoService = catalogoService;
            this.rese�aService = rese�aService;
            this.rese�aMapper = rese�aMapper;
            this.estadoProductoMapper = estadoProductoMapper;
            this.periodoReferenciaMapper = periodoReferenciaMapper;
            this.proyectoMapper = proyectoMapper;
            this.lineaTematicaMapper = lineaTematicaMapper;
            this.investigadorExternoMapper = investigadorExternoMapper;
            this.investigadorMapper = investigadorMapper;
            this.paisMapper = paisMapper;
            this.areaMapper = areaMapper;
            this.disciplinaMapper = disciplinaMapper;
            this.subdisciplinaMapper = subdisciplinaMapper;
            this.investigadorService = investigadorService;
            this.coautorExternoRese�aMapper = coautorExternoRese�aMapper;
            this.coautorInternoRese�aMapper = coautorInternoRese�aMapper;
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index()
        {
            var data = CreateViewDataWithTitle(Title.Index);

            var rese�as = rese�aService.GetAllRese�as();
            data.List = rese�aMapper.Map(rese�as);

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

            var rese�a = rese�aService.GetRese�aById(id);

            if (rese�a == null)
                return RedirectToIndex("no ha sido encontrado", true);
            if (rese�a.Investigador.Id != CurrentInvestigador().Id)
                return RedirectToIndex("no lo puede modificar", true);

            var rese�aForm = rese�aMapper.Map(rese�a);

            data.Form = SetupNewForm(rese�aForm);

            FormSetCombos(data.Form);

            ViewData.Model = data;
            return View();
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var rese�a = rese�aService.GetRese�aById(id);
            data.Form = rese�aMapper.Map(rese�a);

            ViewData.Model = data;
            return View();
        }

        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(Rese�aForm form)
        {
            var rese�a = rese�aMapper.Map(form, CurrentUser(), CurrentInvestigador());

            if (!IsValidateModel(rese�a, form, Title.New, "Rese�a"))
            {
                ((GenericViewData<Rese�aForm>) ViewData.Model).Form = SetupNewForm();
                return ViewNew();
            }

            rese�aService.SaveRese�a(rese�a);

            return RedirectToIndex(String.Format("{0} ha sido creado", rese�a.NombreRevista));
        }

        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(Rese�aForm form)
        {
            var rese�a = rese�aMapper.Map(form, CurrentUser(), CurrentInvestigador());

            if (!IsValidateModel(rese�a, form, Title.Edit))
            {
                var rese�aForm = rese�aMapper.Map(rese�a);

                ((GenericViewData<Rese�aForm>) ViewData.Model).Form = SetupNewForm(rese�aForm);
                FormSetCombos(rese�aForm);
                return ViewEdit();
            }

            rese�aService.SaveRese�a(rese�a);

            return RedirectToIndex(String.Format("{0} ha sido modificado", rese�a.NombreRevista));
        }

        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var rese�a = rese�aService.GetRese�aById(id);

            if (rese�a.Investigador.Id != CurrentInvestigador().Id)
                return RedirectToIndex("no lo puede modificar", true);

            rese�a.Activo = true;
            rese�a.ModificadoPor = CurrentUser();
            rese�aService.SaveRese�a(rese�a);

            var form = rese�aMapper.Map(rese�a);

            return Rjs(form);
        }

        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var rese�a = rese�aService.GetRese�aById(id);

            if (rese�a.Investigador.Id != CurrentInvestigador().Id)
                return RedirectToIndex("no lo puede modificar", true);

            rese�a.Activo = false;
            rese�a.ModificadoPor = CurrentUser();
            rese�aService.SaveRese�a(rese�a);

            var form = rese�aMapper.Map(rese�a);

            return Rjs("Activate", form);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewCoautorInterno(int id)
        {
            var rese�a = rese�aService.GetRese�aById(id);
            var form = new Rese�aForm();

            if (rese�a != null)
                form.Id = rese�a.Id;

            form.CoautorInternoRese�a = new CoautorInternoRese�aForm();
            form.CoautoresInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadores());

            return Rjs("NewCoautorInterno", form);
        }

        [Transaction]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddCoautorInterno([Bind(Prefix = "CoautorInternoRese�a")] CoautorInternoRese�aForm form,
                                              int rese�aId)
        {
            var coautorInternoRese�a = coautorInternoRese�aMapper.Map(form);

            ModelState.AddModelErrors(coautorInternoRese�a.ValidationResults(), true, String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            coautorInternoRese�a.CreadorPor = CurrentUser();
            coautorInternoRese�a.ModificadoPor = CurrentUser();

            if (rese�aId != 0)
            {
                var rese�a = rese�aService.GetRese�aById(rese�aId);
                rese�a.AddCoautorInterno(coautorInternoRese�a);
                rese�aService.SaveRese�a(rese�a);
            }

            var coautorInternoRese�aForm = coautorInternoRese�aMapper.Map(coautorInternoRese�a);

            return Rjs("AddCoautorInterno", coautorInternoRese�aForm);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewCoautorExterno(int id)
        {
            var rese�a = rese�aService.GetRese�aById(id);
            var form = new Rese�aForm();

            if (rese�a != null)
                form.Id = rese�a.Id;

            form.CoautorExternoRese�a = new CoautorExternoRese�aForm();
            form.CoautoresExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos());

            return Rjs("NewCoautorExterno", form);
        }

        [Transaction]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddCoautorExterno([Bind(Prefix = "CoautorExternoRese�a")] CoautorExternoRese�aForm form,
                                              int rese�aId)
        {
            var coautorExternoRese�a = coautorExternoRese�aMapper.Map(form);

            ModelState.AddModelErrors(coautorExternoRese�a.ValidationResults(), true, String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            coautorExternoRese�a.CreadorPor = CurrentUser();
            coautorExternoRese�a.ModificadoPor = CurrentUser();

            if (rese�aId != 0)
            {
                var rese�a = rese�aService.GetRese�aById(rese�aId);
                rese�a.AddCoautorExterno(coautorExternoRese�a);
                rese�aService.SaveRese�a(rese�a);
            }

            var coautorExternoRese�aForm = coautorExternoRese�aMapper.Map(coautorExternoRese�a);

            return Rjs("AddCoautorExterno", coautorExternoRese�aForm);
        }

        Rese�aForm SetupNewForm()
        {
            return SetupNewForm(null);
        }

        Rese�aForm SetupNewForm(Rese�aForm form)
        {
            form = form ?? new Rese�aForm();


            form.CoautorExternoRese�a = new CoautorExternoRese�aForm();
            form.CoautorInternoRese�a = new CoautorInternoRese�aForm();

            //Lista de Catalogos Pendientes
            form.EstadosProductos = estadoProductoMapper.Map(catalogoService.GetActiveEstadoProductos());
            form.PeriodosReferencias = periodoReferenciaMapper.Map(catalogoService.GetActivePeriodoReferencias());
            form.Proyectos = proyectoMapper.Map(catalogoService.GetActiveProyectos());
            form.LineasTematicas = lineaTematicaMapper.Map(catalogoService.GetActiveLineaTematicas());
            form.CoautoresExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos());
            form.CoautoresInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadores());
            form.Paises = paisMapper.Map(catalogoService.GetActivePaises());
            form.Areas = areaMapper.Map(catalogoService.GetActiveAreas());
            form.Disciplinas = disciplinaMapper.Map(catalogoService.GetActiveDisciplinas());
            form.Subdisciplinas = subdisciplinaMapper.Map(catalogoService.GetActiveSubdisciplinas());

            return form;
        }

        void FormSetCombos(Rese�aForm form)
        {
            ViewData["EstadoProducto"] = form.EstadoProductoId;
            ViewData["PeriodoReferencia"] = form.PeriodoReferenciaId;
            ViewData["Proyecto"] = form.ProyectoId;
            ViewData["LineaTematica"] = form.LineaTematicaId;
            ViewData["Pais"] = form.PaisId;

            ViewData["Area"] = form.AreaId;
            ViewData["Disciplina"] = form.DisciplinaId;
            ViewData["Subdisciplina"] = form.SubdisciplinaId;
        }
    }
}