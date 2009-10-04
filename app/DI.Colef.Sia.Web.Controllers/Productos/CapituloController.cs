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
    public class CapituloController : BaseController<Capitulo, CapituloForm>
    {
        readonly IAreaTematicaMapper areaTematicaMapper;
        readonly IAreaMapper areaMapper;
        readonly ICapituloService capituloService;
        readonly ICatalogoService catalogoService;
        readonly ICoautorExternoCapituloMapper coautorExternoCapituloMapper;
        readonly ICoautorInternoCapituloMapper coautorInternoCapituloMapper;
        readonly IDisciplinaMapper disciplinaMapper;
        readonly IFormaParticipacionMapper formaParticipacionMapper;
        readonly IIdiomaMapper idiomaMapper;
        readonly IInvestigadorExternoMapper investigadorExternoMapper;
        readonly IInvestigadorMapper investigadorMapper;
        readonly IInvestigadorService investigadorService;
        readonly ICapituloMapper capituloMapper;
        readonly ITipoCapituloMapper tipoCapituloMapper;
        readonly IPaisMapper paisMapper;
        readonly IResponsableExternoCapituloMapper responsableExternoCapituloMapper;
        readonly IResponsableInternoCapituloMapper responsableInternoCapituloMapper;
        readonly IEstadoProductoMapper estadoProductoMapper;
        readonly ISubdisciplinaMapper subdisciplinaMapper;
        readonly ITipoParticipacionMapper tipoParticipacionMapper;
        readonly ITipoParticipanteMapper tipoParticipanteMapper;
        readonly ILineaTematicaMapper lineaTematicaMapper;
        readonly IProyectoService proyectoService;
        readonly IProyectoMapper proyectoMapper;

        public CapituloController(ICapituloService capituloService, ICapituloMapper capituloMapper,
                                  ICatalogoService catalogoService, IUsuarioService usuarioService,
                                  ITipoCapituloMapper tipoCapituloMapper, IIdiomaMapper idiomaMapper,
                                  IPaisMapper paisMapper, IInvestigadorMapper investigadorMapper,
                                  IInvestigadorExternoMapper investigadorExternoMapper,
                                  IFormaParticipacionMapper formaParticipacionMapper,
                                  ITipoParticipacionMapper tipoParticipacionMapper,
                                  ITipoParticipanteMapper tipoParticipanteMapper, IAreaMapper areaMapper,
                                  IDisciplinaMapper disciplinaMapper, ISubdisciplinaMapper subdisciplinaMapper,
                                  ICoautorExternoCapituloMapper coautorExternoCapituloMapper,
                                  ICoautorInternoCapituloMapper coautorInternoCapituloMapper,
                                  IResponsableExternoCapituloMapper responsableExternoCapituloMapper,
                                  IResponsableInternoCapituloMapper responsableInternoCapituloMapper,
                                  IInvestigadorService investigadorService, IEstadoProductoMapper estadoProductoMapper,
                                  ISearchService searchService, IAreaTematicaMapper areaTematicaMapper,
                                  ILineaTematicaMapper lineaTematicaMapper, IProyectoService proyectoService, IProyectoMapper proyectoMapper)
            : base(usuarioService, searchService, catalogoService)
        {
            this.areaTematicaMapper = areaTematicaMapper;
            this.catalogoService = catalogoService;
            this.capituloService = capituloService;
            this.investigadorService = investigadorService;
            this.estadoProductoMapper = estadoProductoMapper;
            this.capituloMapper = capituloMapper;
            this.tipoCapituloMapper = tipoCapituloMapper;
            this.idiomaMapper = idiomaMapper;
            this.paisMapper = paisMapper;
            this.investigadorMapper = investigadorMapper;
            this.investigadorExternoMapper = investigadorExternoMapper;
            this.formaParticipacionMapper = formaParticipacionMapper;
            this.tipoParticipacionMapper = tipoParticipacionMapper;
            this.tipoParticipanteMapper = tipoParticipanteMapper;
            this.areaMapper = areaMapper;
            this.disciplinaMapper = disciplinaMapper;
            this.subdisciplinaMapper = subdisciplinaMapper;
            this.coautorExternoCapituloMapper = coautorExternoCapituloMapper;
            this.coautorInternoCapituloMapper = coautorInternoCapituloMapper;
            this.responsableExternoCapituloMapper = responsableExternoCapituloMapper;
            this.responsableInternoCapituloMapper = responsableInternoCapituloMapper;
            this.lineaTematicaMapper = lineaTematicaMapper;
            this.proyectoService = proyectoService;
            this.proyectoMapper = proyectoMapper;
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index()
        {
            var data = CreateViewDataWithTitle(Title.Index);
            var capitulos = new Capitulo[] { };

            if (User.IsInRole("Investigadores"))
                capitulos = capituloService.GetAllCapitulos(CurrentUser());
            if (User.IsInRole("DGAA"))
                capitulos = capituloService.GetAllCapitulos();

            data.List = capituloMapper.Map(capitulos);

            return View(data);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {
            var data = CreateViewDataWithTitle(Title.New);
            data.Form = SetupNewForm();
            data.Form.PeriodoReferenciaPeriodo = CurrentPeriodo().Periodo;
            ViewData["Pais"] = (from p in data.Form.Paises where p.Nombre == "M�xico" select p.Id).FirstOrDefault();
            data.Form.PosicionAutor = 1;

            return View(data);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var capitulo = capituloService.GetCapituloById(id);

            if (capitulo == null)
                return RedirectToIndex("no ha sido encontrado", true);
            if (capitulo.Usuario.Id != CurrentUser().Id)
                return RedirectToIndex("no lo puede modificar", true);

            var capituloForm = capituloMapper.Map(capitulo);

            data.Form = SetupNewForm(capituloForm);

            data.Form.TotalEditores = capitulo.ResponsableExternoCapitulos.Count +
                                      capitulo.ResponsableInternoCapitulos.Count;

            FormSetCombos(data.Form);

            ViewData.Model = data;
            return View();
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var capitulo = capituloService.GetCapituloById(id);
            data.Form = capituloMapper.Map(capitulo);

            ViewData.Model = data;
            return View();
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create([Bind(Prefix = "CoautorInterno")] CoautorInternoProductoForm[] coautorInterno,
                                   CapituloForm form, FormCollection formCollection)
        {
            var coautoresExternos = new string[] { };
            var responsablesExternos = new string[] { };
            var responsablesInternos = new string[] { };

            if (formCollection["CoautorExternoCapitulo.InvestigadorExternoId_New"] != null &&
                    formCollection["CoautorExternoCapitulo.InvestigadorExternoId_New"].Split(',').Length > 0)
                coautoresExternos = formCollection["CoautorExternoCapitulo.InvestigadorExternoId_New"].Split(',');

            if (formCollection["ResponsableExternoCapitulo.InvestigadorExternoId_New"] != null &&
                    formCollection["ResponsableExternoCapitulo.InvestigadorExternoId_New"].Split(',').Length > 0)
                responsablesExternos = formCollection["ResponsableExternoCapitulo.InvestigadorExternoId_New"].Split(',');

            if (formCollection["ResponsableInternoCapitulo.InvestigadorId_New"] != null &&
                    formCollection["ResponsableInternoCapitulo.InvestigadorId_New"].Split(',').Length > 0)
                responsablesInternos = formCollection["ResponsableInternoCapitulo.InvestigadorId_New"].Split(',');

            var capitulo = capituloMapper.Map(form, CurrentUser(), CurrentPeriodo(),
                coautoresExternos, coautorInterno, responsablesExternos, responsablesInternos);

            if (!IsValidateModel(capitulo, form, Title.New, "Capitulo"))
            {
                var capituloForm = capituloMapper.Map(capitulo);

                ((GenericViewData<CapituloForm>)ViewData.Model).Form = SetupNewForm(capituloForm);
                return ViewNew();
            }

            capituloService.SaveCapitulo(capitulo);

            return RedirectToIndex(String.Format("Cap�tulo {0} ha sido creado", capitulo.NombreCapitulo));
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(CapituloForm form)
        {
            var capitulo = capituloMapper.Map(form, CurrentUser(), CurrentPeriodo());

            if (!IsValidateModel(capitulo, form, Title.Edit))
            {
                var capituloForm = capituloMapper.Map(capitulo);

                ((GenericViewData<CapituloForm>) ViewData.Model).Form = SetupNewForm(capituloForm);
                FormSetCombos(capituloForm);
                return ViewEdit();
            }

            capituloService.SaveCapitulo(capitulo);

            return RedirectToIndex(String.Format("Cap�tulo {0} ha sido modificado", capitulo.NombreCapitulo));
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult ChangeProyecto(int select)
        {
            var capituloForm = new CapituloForm();
            var proyectoForm = proyectoMapper.Map(proyectoService.GetProyectoById(select));

            capituloForm.ProyectoLineaTematicaNombre = proyectoForm.LineaTematicaNombre;
            capituloForm.ProyectoAreaTematicaNombre = proyectoForm.AreaTematicaNombre;
            capituloForm.ProyectoId = proyectoForm.Id;

            return Rjs("ChangeProyecto", capituloForm);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult ChangeArea(int select)
        {
            var list = new List<DisciplinaForm> {new DisciplinaForm {Id = 0, Nombre = "Seleccione ..."}};

            list.AddRange(disciplinaMapper.Map(catalogoService.GetDisciplinasByAreaId(select)));

            var form = new CapituloForm
                           {
                               Disciplinas = list.ToArray(),
                               Subdisciplinas = new[] { new SubdisciplinaForm { Id = 0, Nombre = "Seleccione ..." } }
                           };

            return Rjs("ChangeArea", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult ChangeDisciplina(int select)
        {
            var list = new List<SubdisciplinaForm> {new SubdisciplinaForm {Id = 0, Nombre = "Seleccione ..."}};

            list.AddRange(subdisciplinaMapper.Map(catalogoService.GetSubdisciplinasByDisciplinaId(select)));

            var form = new CapituloForm
                           {
                               Subdisciplinas = list.ToArray()
                           };

            return Rjs("ChangeDisciplina", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<Capitulo>(x => x.NombreCapitulo, q);
            return Content(data);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewCoautorInterno(int id)
        {
            var capitulo = capituloService.GetCapituloById(id);
            var form = new CoautorForm { Controller = "Capitulo", IdName = "CapituloId" };

            if (capitulo != null)
                form.Id = capitulo.Id;

            return Rjs("NewCoautorInterno", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddCoautorInterno([Bind(Prefix = "CoautorInterno")] CoautorInternoProductoForm form,
                                              int capituloId)
        {
            var coautorInternoCapitulo = coautorInternoCapituloMapper.Map(form);

            ModelState.AddModelErrors(coautorInternoCapitulo.ValidationResults(), false, "CoautorInterno", String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            if (capituloId != 0)
            {
                coautorInternoCapitulo.CreadorPor = CurrentUser();
                coautorInternoCapitulo.ModificadoPor = CurrentUser();

                var capitulo = capituloService.GetCapituloById(capituloId);

                var alreadyHasIt =
                    capitulo.CoautorInternoCapitulos.Where(
                        x => x.Investigador.Id == coautorInternoCapitulo.Investigador.Id).Count();

                if (alreadyHasIt == 0)
                {
                    capitulo.AddCoautorInterno(coautorInternoCapitulo);

                    capituloService.SaveCapitulo(capitulo);
                }
            }

            var coautorInternoCapituloForm = coautorInternoCapituloMapper.Map(coautorInternoCapitulo);

            return Rjs("AddCoautorInterno", coautorInternoCapituloForm);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewCoautorExterno(int id)
        {
            var capitulo = capituloService.GetCapituloById(id);

            var form = new CapituloForm();

            if (capitulo != null)
                form.Id = capitulo.Id;

            form.CoautorExternoCapitulo = new CoautorExternoCapituloForm();
            form.CoautoresExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos());

            return Rjs("NewCoautorExterno", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddCoautorExterno([Bind(Prefix = "CoautorExternoCapitulo")] CoautorExternoCapituloForm form,
                                              int capituloId)
        {
            var totalAutores = new int();
            var coautorExternoCapitulo = coautorExternoCapituloMapper.Map(form);

            ModelState.AddModelErrors(coautorExternoCapitulo.ValidationResults(), true, String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            coautorExternoCapitulo.CreadorPor = CurrentUser();
            coautorExternoCapitulo.ModificadoPor = CurrentUser();

            if (capituloId != 0)
            {
                var capitulo = capituloService.GetCapituloById(capituloId);
                capitulo.AddCoautorExterno(coautorExternoCapitulo);
                capituloService.SaveCapitulo(capitulo);
                totalAutores = capitulo.CoautorExternoCapitulos.Count +
                               capitulo.CoautorInternoCapitulos.Count + 1;
            }

            var coautorExternoCapituloForm = coautorExternoCapituloMapper.Map(coautorExternoCapitulo);
            coautorExternoCapituloForm.TotalAutores = totalAutores;

            return Rjs("AddCoautorExterno", coautorExternoCapituloForm);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewResponsableInterno(int id)
        {
            var capitulo = capituloService.GetCapituloById(id);

            var form = new CapituloForm();

            if (capitulo != null)
                form.Id = capitulo.Id;

            form.ResponsableInternoCapitulo = new ResponsableInternoCapituloForm();
            form.ResponsablesInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadores());

            return Rjs("NewResponsableInterno", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddResponsableInterno(
            [Bind(Prefix = "ResponsableInternoCapitulo")] ResponsableInternoCapituloForm form, int capituloId)
        {
            var totalEditores = new int();
            var responsableInternoCapitulo = responsableInternoCapituloMapper.Map(form);

            ModelState.AddModelErrors(responsableInternoCapitulo.ValidationResults(), true, String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            responsableInternoCapitulo.CreadorPor = CurrentUser();
            responsableInternoCapitulo.ModificadoPor = CurrentUser();

            if (capituloId != 0)
            {
                var capitulo = capituloService.GetCapituloById(capituloId);
                capitulo.AddResponsableInterno(responsableInternoCapitulo);
                capituloService.SaveCapitulo(capitulo);
                totalEditores = capitulo.ResponsableExternoCapitulos.Count +
                               capitulo.ResponsableInternoCapitulos.Count;
            }

            var responsableInternoCapituloForm = responsableInternoCapituloMapper.Map(responsableInternoCapitulo);
            responsableInternoCapituloForm.TotalEditores = totalEditores;

            return Rjs("AddResponsableInterno", responsableInternoCapituloForm);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewResponsableExterno(int id)
        {
            var capitulo = capituloService.GetCapituloById(id);

            var form = new CapituloForm();

            if (capitulo != null)
                form.Id = capitulo.Id;

            form.ResponsableExternoCapitulo = new ResponsableExternoCapituloForm();
            form.ResponsablesExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos());

            return Rjs("NewResponsableExterno", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddResponsableExterno(
            [Bind(Prefix = "ResponsableExternoCapitulo")] ResponsableExternoCapituloForm form, int capituloId)
        {
            var totalEditores = new int();
            var responsableExternoCapitulo = responsableExternoCapituloMapper.Map(form);

            ModelState.AddModelErrors(responsableExternoCapitulo.ValidationResults(), true, String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            responsableExternoCapitulo.CreadorPor = CurrentUser();
            responsableExternoCapitulo.ModificadoPor = CurrentUser();

            if (capituloId != 0)
            {
                var capitulo = capituloService.GetCapituloById(capituloId);
                capitulo.AddResponsableExterno(responsableExternoCapitulo);
                capituloService.SaveCapitulo(capitulo);
                totalEditores = capitulo.ResponsableExternoCapitulos.Count +
                               capitulo.ResponsableInternoCapitulos.Count;
            }

            var responsableExternoCapituloForm = responsableExternoCapituloMapper.Map(responsableExternoCapitulo);
            responsableExternoCapituloForm.TotalEditores = totalEditores;

            return Rjs("AddResponsableExterno", responsableExternoCapituloForm);
        }

        CapituloForm SetupNewForm()
        {
            return SetupNewForm(null);
        }

        CapituloForm SetupNewForm(CapituloForm form)
        {
            form = form ?? new CapituloForm();

            form.CoautorExternoCapitulo = new CoautorExternoCapituloForm();
            form.CoautorInternoProducto = new CoautorInternoProductoForm();
            form.ResponsableInternoCapitulo = new ResponsableInternoCapituloForm();
            form.ResponsableExternoCapitulo = new ResponsableExternoCapituloForm();

            //Lista de Catalogos Pendientes
            form.TiposCapitulos = tipoCapituloMapper.Map(catalogoService.GetActiveTipoCapitulos());
            form.EstadosProductos = estadoProductoMapper.Map(catalogoService.GetActiveEstadoProductos());
            form.Idiomas = idiomaMapper.Map(catalogoService.GetActiveIdiomas());
            form.CoautoresExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos());
            form.CoautoresInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadores());
            form.Paises = paisMapper.Map(catalogoService.GetActivePaises());
            form.ResponsablesInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadores());
            form.ResponsablesExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos());
            form.FormasParticipaciones = formaParticipacionMapper.Map(catalogoService.GetActiveFormaParticipaciones());
            form.TiposParticipaciones = tipoParticipacionMapper.Map(catalogoService.GetActiveTipoParticipaciones());
            form.TiposParticipantes = tipoParticipanteMapper.Map(catalogoService.GetActiveParticipantes());
            
            form.Areas = areaMapper.Map(catalogoService.GetActiveAreas());
            form.Disciplinas = disciplinaMapper.Map(catalogoService.GetDisciplinasByAreaId(form.AreaId));
            form.Subdisciplinas = subdisciplinaMapper.Map(catalogoService.GetSubdisciplinasByDisciplinaId(form.DisciplinaId));

            return form;
        }

        void FormSetCombos(CapituloForm form)
        {
            ViewData["TipoCapitulo"] = form.TipoCapituloId;
            ViewData["Idioma"] = form.IdiomaId;
            ViewData["EstadoProducto"] = form.EstadoProductoId;
            ViewData["Pais"] = form.PaisId;
            ViewData["FormaParticipacion"] = form.FormaParticipacionId;
            ViewData["TipoParticipacion"] = form.TipoParticipacionId;
            ViewData["TipoParticipante"] = form.TipoParticipanteId;
            ViewData["Area"] = form.AreaId;
            ViewData["Disciplina"] = form.DisciplinaId;
            ViewData["Subdisciplina"] = form.SubdisciplinaId;
        }
    }
}