using System;
using System.Linq;
using System.Web.Mvc;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Collections;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Helpers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Productos
{
    public class CapituloController : BaseController<Capitulo, CapituloForm>
    {   
        readonly ICapituloService capituloService;
        readonly ICatalogoService catalogoService;
        readonly ICoautorExternoCapituloMapper coautorExternoCapituloMapper;
        readonly ICoautorInternoCapituloMapper coautorInternoCapituloMapper;
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
        readonly ITipoParticipacionMapper tipoParticipacionMapper;
        readonly ITipoParticipanteMapper tipoParticipanteMapper;
        readonly ICustomCollection customCollection;
        readonly IAreaTematicaMapper areaTematicaMapper;
        readonly IEditorialMapper editorialMapper;

        public CapituloController(ICapituloService capituloService, ICapituloMapper capituloMapper,
                                  ICatalogoService catalogoService, IUsuarioService usuarioService,
                                  ITipoCapituloMapper tipoCapituloMapper, IIdiomaMapper idiomaMapper,
                                  IPaisMapper paisMapper, IInvestigadorMapper investigadorMapper,
                                  IInvestigadorExternoMapper investigadorExternoMapper,
                                  IFormaParticipacionMapper formaParticipacionMapper,
                                  ITipoParticipacionMapper tipoParticipacionMapper,
                                  ITipoParticipanteMapper tipoParticipanteMapper, ISubdisciplinaMapper subdisciplinaMapper,
                                  ICoautorExternoCapituloMapper coautorExternoCapituloMapper,
                                  ICoautorInternoCapituloMapper coautorInternoCapituloMapper,
                                  IResponsableExternoCapituloMapper responsableExternoCapituloMapper,
                                  IResponsableInternoCapituloMapper responsableInternoCapituloMapper,
                                  IInvestigadorService investigadorService,
                                  ISearchService searchService, IProyectoService proyectoService, IProyectoMapper proyectoMapper,
                                  ICustomCollection customCollection, IAreaTematicaMapper areaTematicaMapper, 
                                  IEditorialMapper editorialMapper)
            : base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.capituloService = capituloService;
            this.investigadorService = investigadorService;
            this.capituloMapper = capituloMapper;
            this.tipoCapituloMapper = tipoCapituloMapper;
            this.idiomaMapper = idiomaMapper;
            this.paisMapper = paisMapper;
            this.investigadorMapper = investigadorMapper;
            this.investigadorExternoMapper = investigadorExternoMapper;
            this.formaParticipacionMapper = formaParticipacionMapper;
            this.tipoParticipacionMapper = tipoParticipacionMapper;
            this.tipoParticipanteMapper = tipoParticipanteMapper;
            this.coautorExternoCapituloMapper = coautorExternoCapituloMapper;
            this.coautorInternoCapituloMapper = coautorInternoCapituloMapper;
            this.responsableExternoCapituloMapper = responsableExternoCapituloMapper;
            this.responsableInternoCapituloMapper = responsableInternoCapituloMapper;
            this.areaTematicaMapper = areaTematicaMapper;
            this.editorialMapper = editorialMapper;
            this.customCollection = customCollection;
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
            if (CurrentInvestigador() == null)
                return NoInvestigadorProfile("Por tal motivo no puede crear nuevos productos.");

            var data = CreateViewDataWithTitle(Title.New);
            data.Form = SetupNewForm();
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
            var articuloForm = capituloMapper.Map(capitulo);

            data.Form = SetupShowForm(articuloForm);

            ViewData.Model = data;
            return View();
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create([Bind(Prefix = "CoautorInterno")] CoautorInternoProductoForm[] coautorInterno,
                                   [Bind(Prefix = "CoautorExterno")] CoautorExternoProductoForm[] coautorExterno,
                                   [Bind(Prefix = "ResponsableExterno")] ResponsableExternoProductoForm[] responsableExterno,
                                   [Bind(Prefix = "ResponsableInterno")] ResponsableInternoProductoForm[] responsableInterno,
                                   CapituloForm form)
        {
            coautorExterno = coautorExterno ?? new CoautorExternoProductoForm[] { };
            coautorInterno = coautorInterno ?? new CoautorInternoProductoForm[] { };
            responsableExterno = responsableExterno ?? new ResponsableExternoProductoForm[] { };
            responsableInterno = responsableInterno ?? new ResponsableInternoProductoForm[] { };

            var capitulo = capituloMapper.Map(form, CurrentUser(), CurrentInvestigador(),
                                              coautorExterno, coautorInterno, responsableExterno, responsableInterno);

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
            var capitulo = capituloMapper.Map(form, CurrentUser(), CurrentInvestigador());

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
            coautorInternoCapituloForm.ParentId = capituloId;

            return Rjs("AddCoautorInterno", coautorInternoCapituloForm);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Delete)]
        public ActionResult DeleteCoautorInterno(int id, int investigadorId)
        {
            var capitulo = capituloService.GetCapituloById(id);

            if (capitulo != null)
            {
                var coautor = capitulo.CoautorInternoCapitulos.Where(x => x.Investigador.Id == investigadorId).First();
                capitulo.DeleteCoautorInterno(coautor);

                capituloService.SaveCapitulo(capitulo);
            }

            return Rjs("DeleteCoautorInterno", investigadorId);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewCoautorExterno(int id)
        {
            var capitulo = capituloService.GetCapituloById(id);
            var form = new CoautorForm { Controller = "Capitulo", IdName = "CapituloId" };

            if (capitulo != null)
                form.Id = capitulo.Id;

            return Rjs("NewCoautorExterno", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddCoautorExterno([Bind(Prefix = "CoautorExterno")] CoautorExternoProductoForm form,
                                              int capituloId)
        {
            var coautorExternoCapitulo = coautorExternoCapituloMapper.Map(form);

            ModelState.AddModelErrors(coautorExternoCapitulo.ValidationResults(), false, "CoautorExterno", String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            if (capituloId != 0)
            {

                coautorExternoCapitulo.CreadorPor = CurrentUser();
                coautorExternoCapitulo.ModificadoPor = CurrentUser();

                var capitulo = capituloService.GetCapituloById(capituloId);

                var alreadyHasIt =
                    capitulo.CoautorExternoCapitulos.Where(
                        x => x.InvestigadorExterno.Id == coautorExternoCapitulo.InvestigadorExterno.Id).Count();

                if (alreadyHasIt == 0)
                {
                    capitulo.AddCoautorExterno(coautorExternoCapitulo);
                    capituloService.SaveCapitulo(capitulo);
                }
            }

            var coautorExternoCapituloForm = coautorExternoCapituloMapper.Map(coautorExternoCapitulo);
            coautorExternoCapituloForm.ParentId = capituloId;

            return Rjs("AddCoautorExterno", coautorExternoCapituloForm);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Delete)]
        public ActionResult DeleteCoautorExterno(int id, int investigadorExternoId)
        {
            var capitulo = capituloService.GetCapituloById(id);

            if (capitulo != null)
            {
                var coautor = capitulo.CoautorExternoCapitulos.Where(x => x.InvestigadorExterno.Id == investigadorExternoId).First();
                capitulo.DeleteCoautorExterno(coautor);

                capituloService.SaveCapitulo(capitulo);
            }

            return Rjs("DeleteCoautorExterno", investigadorExternoId);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewResponsableInterno(int id)
        {
            var capitulo = capituloService.GetCapituloById(id);
            var form = new ResponsableForm {Controller = "Capitulo", IdName = "CapituloId"};

            if (capitulo != null)
                form.Id = capitulo.Id;

            return Rjs("NewResponsableInterno", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddResponsableInterno(
            [Bind(Prefix = "ResponsableInterno")] ResponsableInternoProductoForm form, int capituloId)
        {
            var responsableInternoCapitulo = responsableInternoCapituloMapper.Map(form);

            ModelState.AddModelErrors(responsableInternoCapitulo.ValidationResults(), false, "ResponsableInterno", String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            if (capituloId != 0)
            {
                responsableInternoCapitulo.CreadorPor = CurrentUser();
                responsableInternoCapitulo.ModificadoPor = CurrentUser();

                var capitulo = capituloService.GetCapituloById(capituloId);

                var alreadyHasIt =
                    capitulo.ResponsableInternoCapitulos.Where(
                        x => x.Investigador.Id == responsableInternoCapitulo.Investigador.Id).Count();

                if (alreadyHasIt == 0)
                {
                    capitulo.AddResponsableInterno(responsableInternoCapitulo);
                    capituloService.SaveCapitulo(capitulo);
                }
            }

            var responsableInternoCapituloForm = responsableInternoCapituloMapper.Map(responsableInternoCapitulo);
            responsableInternoCapituloForm.ParentId = capituloId;

            return Rjs("AddResponsableInterno", responsableInternoCapituloForm);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Delete)]
        public ActionResult DeleteResponsableInterno(int id, int investigadorId)
        {
            var capitulo = capituloService.GetCapituloById(id);

            if (capitulo != null)
            {
                var responsable = capitulo.ResponsableInternoCapitulos.Where(x => x.Investigador.Id == investigadorId).First();
                capitulo.DeleteResponsableInterno(responsable);

                capituloService.SaveCapitulo(capitulo);
            }

            return Rjs("DeleteResponsableInterno", investigadorId);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewResponsableExterno(int id)
        {
            var capitulo = capituloService.GetCapituloById(id);

            var form = new ResponsableForm { Controller = "Capitulo", IdName = "CapituloId" };

            if (capitulo != null)
                form.Id = capitulo.Id;

            return Rjs("NewResponsableExterno", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddResponsableExterno(
            [Bind(Prefix = "ResponsableExterno")] ResponsableExternoProductoForm form, int capituloId)
        {
            var responsableExternoCapitulo = responsableExternoCapituloMapper.Map(form);

            ModelState.AddModelErrors(responsableExternoCapitulo.ValidationResults(), false, "ResponsableExterno", String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            if (capituloId != 0)
            {
                responsableExternoCapitulo.CreadorPor = CurrentUser();
                responsableExternoCapitulo.ModificadoPor = CurrentUser();

                var capitulo = capituloService.GetCapituloById(capituloId);

                var alreadyHasIt =
                    capitulo.ResponsableExternoCapitulos.Where(
                        x => x.InvestigadorExterno.Id == responsableExternoCapitulo.InvestigadorExterno.Id).Count();

                if (alreadyHasIt == 0)
                {
                    capitulo.AddResponsableExterno(responsableExternoCapitulo);
                    capituloService.SaveCapitulo(capitulo);
                }
            }

            var responsableExternoCapituloForm = responsableExternoCapituloMapper.Map(responsableExternoCapitulo);
            responsableExternoCapituloForm.ParentId = capituloId;

            return Rjs("AddResponsableExterno", responsableExternoCapituloForm);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Delete)]
        public ActionResult DeleteResponsableExterno(int id, int investigadorExternoId)
        {
            var capitulo = capituloService.GetCapituloById(id);

            if (capitulo != null)
            {
                var responsable = capitulo.ResponsableExternoCapitulos.Where(x => x.InvestigadorExterno.Id == investigadorExternoId).First();
                capitulo.DeleteResponsableExterno(responsable);

                capituloService.SaveCapitulo(capitulo);
            }

            return Rjs("DeleteResponsableExterno", investigadorExternoId);
        }

        CapituloForm SetupNewForm()
        {
            return SetupNewForm(null);
        }

        CapituloForm SetupNewForm(CapituloForm form)
        {
            form = form ?? new CapituloForm();

            //Lista de Catalogos Pendientes
            form.Volumenes = customCollection.VolumenCustomCollection();
            form.AreasTematicas = areaTematicaMapper.Map(catalogoService.GetActiveAreaTematicas());
            form.Editoriales = editorialMapper.Map(catalogoService.GetActiveEditorials());
            form.TiposCapitulos = tipoCapituloMapper.Map(catalogoService.GetActiveTipoCapitulos());
            form.EstadosProductos = customCollection.EstadoProductoCustomCollection();
            form.Idiomas = idiomaMapper.Map(catalogoService.GetActiveIdiomas());
            form.CoautoresExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos());
            form.CoautoresInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadores());
            form.Paises = paisMapper.Map(catalogoService.GetActivePaises());
            form.ResponsablesInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadores());
            form.ResponsablesExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos());
            form.FormasParticipaciones = formaParticipacionMapper.Map(catalogoService.GetActiveFormaParticipaciones());
            form.TiposParticipaciones = tipoParticipacionMapper.Map(catalogoService.GetActiveTipoParticipaciones());
            form.TiposParticipantes = tipoParticipanteMapper.Map(catalogoService.GetActiveParticipantes());

            return form;
        }

        void FormSetCombos(CapituloForm form)
        {
            ViewData["AreaTematicaId"] = form.AreaTematicaId;
            ViewData["Editorial"] = form.EditorialId;
            ViewData["Volumen"] = form.Volumen;
            ViewData["TipoCapitulo"] = form.TipoCapituloId;
            ViewData["Idioma"] = form.IdiomaId;
            ViewData["EstadoProducto"] = form.EstadoProducto;
            ViewData["Pais"] = form.PaisId;
            ViewData["TipoParticipacion"] = form.TipoParticipacionId;
            ViewData["TipoParticipante"] = form.TipoParticipanteId;
        }

        private CapituloForm SetupShowForm(CapituloForm form)
        {
            form = form ?? new CapituloForm();

            form.ShowFields = new ShowFieldsForm
                                  {
                                      ProyectoAreaTematicaLineaTematicaNombre = form.Proyecto.AreaTematicaLineaTematicaNombre,
                                      ProyectoAreaTematicaNombre = form.Proyecto.AreaTematicaNombre,
                                      ProyectoAreaTematicaSubdisciplinaDisciplinaAreaNombre = form.Proyecto.AreaTematicaSubdisciplinaDisciplinaAreaNombre,
                                      ProyectoAreaTematicaSubdisciplinaDisciplinaNombre = form.Proyecto.AreaTematicaSubdisciplinaDisciplinaNombre,
                                      ProyectoAreaTematicaSubdisciplinaNombre = form.Proyecto.AreaTematicaSubdisciplinaNombre,

                                      AreaTematicaNombre = form.AreaTematica.Nombre,
                                      AreaTematicaLineaTematicaNombre = form.AreaTematica.LineaTematicaNombre,
                                      AreaTematicaSubdisciplinaDisciplinaAreaNombre = form.AreaTematica.SubdisciplinaDisciplinaAreaNombre,
                                      AreaTematicaSubdisciplinaDisciplinaNombre = form.AreaTematica.SubdisciplinaDisciplinaNombre,
                                      AreaTematicaSubdisciplinaNombre = form.AreaTematica.SubdisciplinaNombre
                                  };

            return form;
        }
    }
}