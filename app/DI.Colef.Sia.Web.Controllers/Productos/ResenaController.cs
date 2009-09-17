using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Helpers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Productos
{
    [HandleError]
    public class ResenaController : BaseController<Resena, ResenaForm>
    {
        readonly IAreaMapper areaMapper;
        readonly ICatalogoService catalogoService;
        readonly ICoautorExternoResenaMapper coautorExternoResenaMapper;
        readonly ICoautorInternoResenaMapper coautorInternoResenaMapper;
        readonly IDisciplinaMapper disciplinaMapper;
        readonly IEstadoProductoMapper estadoProductoMapper;
        readonly IInvestigadorExternoMapper investigadorExternoMapper;
        readonly IInvestigadorMapper investigadorMapper;
        readonly IInvestigadorService investigadorService;
        readonly IPaisMapper paisMapper;
        readonly IProyectoMapper proyectoMapper;
        readonly IResenaMapper resenaMapper;
        readonly IResenaService resenaService;
        readonly ISubdisciplinaMapper subdisciplinaMapper;
        readonly ITipoResenaMapper tipoResenaMapper;
        readonly IProyectoService proyectoService;

        public ResenaController(IResenaService resenaService, IResenaMapper resenaMapper,
                                ICatalogoService catalogoService,
                                IUsuarioService usuarioService, IEstadoProductoMapper estadoProductoMapper,
                                IProyectoMapper proyectoMapper,
                                IInvestigadorExternoMapper investigadorExternoMapper,
                                IInvestigadorMapper investigadorMapper, IPaisMapper paisMapper, IAreaMapper areaMapper,
                                IDisciplinaMapper disciplinaMapper,
                                ISubdisciplinaMapper subdisciplinaMapper, IInvestigadorService investigadorService,
                                ICoautorExternoResenaMapper coautorExternoResenaMapper,
                                ICoautorInternoResenaMapper coautorInternoResenaMapper, ISearchService searchService,
                                ITipoResenaMapper tipoResenaMapper, IProyectoService proyectoService)
            : base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.resenaService = resenaService;
            this.resenaMapper = resenaMapper;
            this.estadoProductoMapper = estadoProductoMapper;
            this.proyectoMapper = proyectoMapper;
            this.investigadorExternoMapper = investigadorExternoMapper;
            this.investigadorMapper = investigadorMapper;
            this.paisMapper = paisMapper;
            this.areaMapper = areaMapper;
            this.disciplinaMapper = disciplinaMapper;
            this.subdisciplinaMapper = subdisciplinaMapper;
            this.investigadorService = investigadorService;
            this.coautorExternoResenaMapper = coautorExternoResenaMapper;
            this.coautorInternoResenaMapper = coautorInternoResenaMapper;
            this.tipoResenaMapper = tipoResenaMapper;
            this.proyectoService = proyectoService;
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index()
        {
            var data = CreateViewDataWithTitle(Title.Index);
            var resenas = new Resena[] { };

            if (User.IsInRole("Investigadores"))
                resenas = resenaService.GetAllResenas(CurrentUser());
            if (User.IsInRole("DGAA"))
                resenas = resenaService.GetAllResenas();

            data.List = resenaMapper.Map(resenas);

            return View(data);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {
            var data = CreateViewDataWithTitle(Title.New);
            data.Form = SetupNewForm();
            ViewData["Pais"] = (from p in data.Form.Paises where p.Nombre == "M�xico" select p.Id).FirstOrDefault();
            data.Form.PeriodoReferenciaPeriodo = CurrentPeriodo().Periodo;

            return View(data);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var resena = resenaService.GetResenaById(id);

            if (resena == null)
                return RedirectToIndex("no ha sido encontrado", true);
            if (resena.Usuario.Id != CurrentUser().Id)
                return RedirectToIndex("no lo puede modificar", true);

            var resenaForm = resenaMapper.Map(resena);

            data.Form = SetupNewForm(resenaForm);

            FormSetCombos(data.Form);

            ViewData.Model = data;
            return View();
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var resena = resenaService.GetResenaById(id);
            data.Form = resenaMapper.Map(resena);

            ViewData.Model = data;
            return View();
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(ResenaForm form,
                                   FormCollection formCollection)
        {
            var coautoresExternos = new string[] { };
            var coautoresInternos = new string[] { };

            if (formCollection["CoautorExternoResena.InvestigadorExternoId_New"] != null &&
                    formCollection["CoautorExternoResena.InvestigadorExternoId_New"].Split(',').Length > 0)
                coautoresExternos = formCollection["CoautorExternoResena.InvestigadorExternoId_New"].Split(',');

            if (formCollection["CoautorInternoResena.InvestigadorId_New"] != null &&
                    formCollection["CoautorInternoResena.InvestigadorId_New"].Split(',').Length > 0)
                coautoresInternos = formCollection["CoautorInternoResena.InvestigadorId_New"].Split(',');

            var resena = resenaMapper.Map(form, CurrentUser(), CurrentPeriodo(),
                                          coautoresExternos, coautoresInternos);

            if (!IsValidateModel(resena, form, Title.New, "Resena"))
            {
                var resenaForm = resenaMapper.Map(resena);

                ((GenericViewData<ResenaForm>) ViewData.Model).Form = SetupNewForm(resenaForm);
                return ViewNew();
            }

            resenaService.SaveResena(resena);

            return RedirectToIndex(String.Format("Rese�a {0} ha sido creada", resena.NombreRevista));
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(ResenaForm form)
        {
            var resena = resenaMapper.Map(form, CurrentUser(), CurrentPeriodo());

            if (!IsValidateModel(resena, form, Title.Edit))
            {
                var resenaForm = resenaMapper.Map(resena);

                ((GenericViewData<ResenaForm>) ViewData.Model).Form = SetupNewForm(resenaForm);
                FormSetCombos(resenaForm);
                return ViewEdit();
            }

            resenaService.SaveResena(resena);

            return RedirectToIndex(String.Format("Rese�a {0} ha sido modificada", resena.NombreRevista));
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var resena = resenaService.GetResenaById(id);

            if (resena.Usuario.Id != CurrentUser().Id)
                return RedirectToIndex("no lo puede modificar", true);

            resena.Activo = true;
            resena.ModificadoPor = CurrentUser();
            resenaService.SaveResena(resena);

            var form = resenaMapper.Map(resena);

            return Rjs(form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var resena = resenaService.GetResenaById(id);

            if (resena.Usuario.Id != CurrentUser().Id)
                return RedirectToIndex("no lo puede modificar", true);

            resena.Activo = false;
            resena.ModificadoPor = CurrentUser();
            resenaService.SaveResena(resena);

            var form = resenaMapper.Map(resena);

            return Rjs("Activate", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult ChangeArea(int select)
        {
            var list = new List<DisciplinaForm> { new DisciplinaForm { Id = 0, Nombre = "Seleccione ..." } };

            list.AddRange(disciplinaMapper.Map(catalogoService.GetDisciplinasByAreaId(select)));

            var form = new ResenaForm
            {
                Disciplinas = list.ToArray(),
                Subdisciplinas = new[] { new SubdisciplinaForm { Id = 0, Nombre = "Seleccione ..." } }
            };

            return Rjs("ChangeArea", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult ChangeDisciplina(int id)
        {
            var list = new List<SubdisciplinaForm> { new SubdisciplinaForm { Id = 0, Nombre = "Seleccione ..." } };

            list.AddRange(subdisciplinaMapper.Map(catalogoService.GetSubdisciplinasByDisciplinaId(id)));

            var form = new ResenaForm
            { 
                Subdisciplinas = list.ToArray()
            };

            return Rjs("ChangeDisciplina", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<Resena>(x => x.NombreRevista, q);
            return Content(data);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewCoautorInterno(int id)
        {
            var resena = resenaService.GetResenaById(id);
            var form = new ResenaForm();

            if (resena != null)
                form.Id = resena.Id;

            form.CoautorInternoResena = new CoautorInternoResenaForm();
            form.CoautoresInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadores(CurrentUser()));

            return Rjs("NewCoautorInterno", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddCoautorInterno([Bind(Prefix = "CoautorInternoResena")] CoautorInternoResenaForm form,
                                              int resenaId)
        {
            var coautorInternoResena = coautorInternoResenaMapper.Map(form);

            ModelState.AddModelErrors(coautorInternoResena.ValidationResults(), true, String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            coautorInternoResena.CreadorPor = CurrentUser();
            coautorInternoResena.ModificadoPor = CurrentUser();

            if (resenaId != 0)
            {
                var resena = resenaService.GetResenaById(resenaId);
                resena.AddCoautorInterno(coautorInternoResena);
                resenaService.SaveResena(resena);
            }

            var coautorInternoResenaForm = coautorInternoResenaMapper.Map(coautorInternoResena);

            return Rjs("AddCoautorInterno", coautorInternoResenaForm);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewCoautorExterno(int id)
        {
            var resena = resenaService.GetResenaById(id);
            var form = new ResenaForm();

            if (resena != null)
                form.Id = resena.Id;

            form.CoautorExternoResena = new CoautorExternoResenaForm();
            form.CoautoresExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos());

            return Rjs("NewCoautorExterno", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddCoautorExterno([Bind(Prefix = "CoautorExternoResena")] CoautorExternoResenaForm form,
                                              int resenaId)
        {
            var coautorExternoResena = coautorExternoResenaMapper.Map(form);

            ModelState.AddModelErrors(coautorExternoResena.ValidationResults(), true, String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            coautorExternoResena.CreadorPor = CurrentUser();
            coautorExternoResena.ModificadoPor = CurrentUser();

            if (resenaId != 0)
            {
                var resena = resenaService.GetResenaById(resenaId);
                resena.AddCoautorExterno(coautorExternoResena);
                resenaService.SaveResena(resena);
            }

            var coautorExternoResenaForm = coautorExternoResenaMapper.Map(coautorExternoResena);

            return Rjs("AddCoautorExterno", coautorExternoResenaForm);
        }

        ResenaForm SetupNewForm()
        {
            return SetupNewForm(null);
        }

        ResenaForm SetupNewForm(ResenaForm form)
        {
            form = form ?? new ResenaForm();

            form.CoautorExternoResena = new CoautorExternoResenaForm();
            form.CoautorInternoResena = new CoautorInternoResenaForm();

            //Lista de Catalogos Pendientes
            form.TiposResenas = tipoResenaMapper.Map(catalogoService.GetActiveTipoResenas());
            form.EstadosProductos = estadoProductoMapper.Map(catalogoService.GetActiveEstadoProductos());
            form.Proyectos = proyectoMapper.Map(proyectoService.GetActiveProyectos());
            form.CoautoresExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos());
            form.CoautoresInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadores());
            form.Paises = paisMapper.Map(catalogoService.GetActivePaises());
            form.Areas = areaMapper.Map(catalogoService.GetActiveAreas());
            form.Disciplinas = disciplinaMapper.Map(catalogoService.GetDisciplinasByAreaId(form.AreaId));
            form.Subdisciplinas = subdisciplinaMapper.Map(catalogoService.GetSubdisciplinasByDisciplinaId(form.DisciplinaId));

            return form;
        }

        void FormSetCombos(ResenaForm form)
        {
            ViewData["TipoResena"] = form.TipoResenaId;
            ViewData["EstadoProducto"] = form.EstadoProductoId;
            ViewData["Proyecto"] = form.ProyectoId;
            ViewData["Pais"] = form.PaisId;

            ViewData["Area"] = form.AreaId;
            ViewData["Disciplina"] = form.DisciplinaId;
            ViewData["Subdisciplina"] = form.SubdisciplinaId;
        }
    }
}