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
    [HandleError]
    public class ResenaController : BaseController<Resena, ResenaForm>
    {
        readonly IAutorResenaMapper autorResenaMapper;
        readonly IAreaTematicaMapper areaTematicaMapper;
        readonly IIdiomaMapper idiomaMapper;
        readonly ICatalogoService catalogoService;
        readonly ICoautorExternoResenaMapper coautorExternoResenaMapper;
        readonly ICoautorInternoResenaMapper coautorInternoResenaMapper;
        readonly ICustomCollection customCollection;
        readonly IInvestigadorExternoMapper investigadorExternoMapper;
        readonly IInvestigadorMapper investigadorMapper;
        readonly IInvestigadorService investigadorService;
        readonly IPaisMapper paisMapper;
        readonly IResenaMapper resenaMapper;
        readonly IResenaService resenaService;
        readonly ITipoResenaMapper tipoResenaMapper;
        readonly IEditorialMapper editorialMapper;

        public ResenaController(IResenaService resenaService, IResenaMapper resenaMapper,
                                ICatalogoService catalogoService,
                                IAreaTematicaMapper areaTematicaMapper, IIdiomaMapper idiomaMapper,
                                IUsuarioService usuarioService, ICustomCollection customCollection,
                                IInvestigadorExternoMapper investigadorExternoMapper,
                                IInvestigadorMapper investigadorMapper, IPaisMapper paisMapper,
                                IInvestigadorService investigadorService, ICoautorExternoResenaMapper coautorExternoResenaMapper,
                                ICoautorInternoResenaMapper coautorInternoResenaMapper, ISearchService searchService,
                                IAutorResenaMapper autorResenaMapper,
                                ITipoResenaMapper tipoResenaMapper, IEditorialMapper editorialMapper)
            : base(usuarioService, searchService, catalogoService)
        {
            this.areaTematicaMapper = areaTematicaMapper;
            this.autorResenaMapper = autorResenaMapper;
            this.idiomaMapper = idiomaMapper;
            this.catalogoService = catalogoService;
            this.resenaService = resenaService;
            this.resenaMapper = resenaMapper;
            this.customCollection = customCollection;
            this.investigadorExternoMapper = investigadorExternoMapper;
            this.investigadorMapper = investigadorMapper;
            this.paisMapper = paisMapper;
            this.investigadorService = investigadorService;
            this.coautorExternoResenaMapper = coautorExternoResenaMapper;
            this.coautorInternoResenaMapper = coautorInternoResenaMapper;
            this.tipoResenaMapper = tipoResenaMapper;
            this.editorialMapper = editorialMapper;
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
            ViewData["Idioma"] = (from p in data.Form.Idiomas where p.Nombre == "Espa�ol" select p.Id).FirstOrDefault();
            data.Form.PosicionAutor = 1;

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

            var resenaForm = resenaMapper.Map(resena);
            data.Form = SetupShowForm(resenaForm);

            ViewData.Model = data;
            return View();
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create([Bind(Prefix = "CoautorInterno")] CoautorInternoProductoForm[] coautorInterno,
                                   [Bind(Prefix = "CoautorExterno")] CoautorExternoProductoForm[] coautorExterno,
                                   [Bind(Prefix = "AutorResena")] AutorResenaForm[] autor,
                                   ResenaForm form, FormCollection formCollection)
        {
            coautorExterno = coautorExterno ?? new CoautorExternoProductoForm[] { };
            coautorInterno = coautorInterno ?? new CoautorInternoProductoForm[] { };
            autor = autor ?? new AutorResenaForm[] { };

            var resena = resenaMapper.Map(form, CurrentUser(), CurrentInvestigador(),
                                          coautorExterno, coautorInterno, autor);

            if (!IsValidateModel(resena, form, Title.New, "Resena"))
            {
                var resenaForm = resenaMapper.Map(resena);

                ((GenericViewData<ResenaForm>) ViewData.Model).Form = SetupNewForm(resenaForm);
                return ViewNew();
            }

            resenaService.SaveResena(resena);

            return RedirectToIndex(String.Format("Rese�a {0} ha sido creada", resena.NombreProducto));
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(ResenaForm form)
        {
            var resena = resenaMapper.Map(form, CurrentUser(), CurrentInvestigador());

            if (!IsValidateModel(resena, form, Title.Edit))
            {
                var resenaForm = resenaMapper.Map(resena);

                ((GenericViewData<ResenaForm>) ViewData.Model).Form = SetupNewForm(resenaForm);
                FormSetCombos(resenaForm);
                return ViewEdit();
            }

            resenaService.SaveResena(resena);

            return RedirectToIndex(String.Format("Rese�a {0} ha sido modificada", resena.NombreProducto));
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<Resena>(x => x.NombreProducto, q);
            return Content(data);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewCoautorInterno(int id)
        {
            var resena = resenaService.GetResenaById(id);
            var form = new CoautorForm { Controller = "Resena", IdName = "ResenaId" };

            if (resena != null)
                form.Id = resena.Id;

            return Rjs("NewCoautorInterno", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddCoautorInterno([Bind(Prefix = "CoautorInterno")] CoautorInternoProductoForm form, int resenaId)
        {
            var coautorInternoResena = coautorInternoResenaMapper.Map(form);

            ModelState.AddModelErrors(coautorInternoResena.ValidationResults(), false, "CoautorInterno", String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            coautorInternoResena.CreadorPor = CurrentUser();
            coautorInternoResena.ModificadoPor = CurrentUser();

            if (resenaId != 0)
            {
                var resena = resenaService.GetResenaById(resenaId);

                var alreadyHasIt =
                    resena.CoautorInternoResenas.Where(
                        x => x.Investigador.Id == coautorInternoResena.Investigador.Id).Count();

                if (alreadyHasIt == 0)
                {
                    resena.AddCoautorInterno(coautorInternoResena);
                    resenaService.SaveResena(resena);
                }
            }

            var coautorInternoResenaForm = coautorInternoResenaMapper.Map(coautorInternoResena);
            coautorInternoResenaForm.ParentId = resenaId;

            return Rjs("AddCoautorInterno", coautorInternoResenaForm);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Delete)]
        public ActionResult DeleteCoautorInterno(int id, int investigadorId)
        {
            var resena = resenaService.GetResenaById(id);

            if (resena != null)
            {
                var coautor = resena.CoautorInternoResenas.Where(x => x.Investigador.Id == investigadorId).First();
                resena.DeleteCoautorInterno(coautor);

                resenaService.SaveResena(resena);
            }

            return Rjs("DeleteCoautorInterno", investigadorId);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewCoautorExterno(int id)
        {
            var resena = resenaService.GetResenaById(id);
            var form = new CoautorForm { Controller = "Resena", IdName = "ResenaId" };

            if (resena != null)
                form.Id = resena.Id;

            return Rjs("NewCoautorExterno", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddCoautorExterno([Bind(Prefix = "CoautorExterno")] CoautorExternoProductoForm form, int resenaId)
        {
            var coautorExternoResena = coautorExternoResenaMapper.Map(form);

            ModelState.AddModelErrors(coautorExternoResena.ValidationResults(), false, "CoautorExterno", String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            if (resenaId != 0)
            {
                coautorExternoResena.CreadorPor = CurrentUser();
                coautorExternoResena.ModificadoPor = CurrentUser();

                var resena = resenaService.GetResenaById(resenaId);

                var alreadyHasIt =
                    resena.CoautorExternoResenas.Where(
                        x => x.InvestigadorExterno.Id == coautorExternoResena.InvestigadorExterno.Id).Count();

                if (alreadyHasIt == 0)
                {
                    resena.AddCoautorExterno(coautorExternoResena);
                    resenaService.SaveResena(resena);
                }
            }

            var coautorExternoResenaForm = coautorExternoResenaMapper.Map(coautorExternoResena);
            coautorExternoResenaForm.ParentId = resenaId;

            return Rjs("AddCoautorExterno", coautorExternoResenaForm);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Delete)]
        public ActionResult DeleteCoautorExterno(int id, int investigadorExternoId)
        {
            var resena = resenaService.GetResenaById(id);

            if (resena != null)
            {
                var coautor = resena.CoautorExternoResenas.Where(x => x.InvestigadorExterno.Id == investigadorExternoId).First();
                resena.DeleteCoautorExterno(coautor);

                resenaService.SaveResena(resena);
            }

            return Rjs("DeleteCoautorExterno", investigadorExternoId);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewAutor(int id)
        {
            var resena = resenaService.GetResenaById(id);
            var form = new ResenaForm();

            if (resena != null)
                form.Id = resena.Id;

            return Rjs("NewAutor", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddAutor([Bind(Prefix = "AutorResena")] AutorResenaForm form,
                                              int resenaId)
        {
            var autorResena = autorResenaMapper.Map(form);

            ModelState.AddModelErrors(autorResena.ValidationResults(), false, "AutorResena", String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            if (resenaId != 0)
            {
                autorResena.CreadorPor = CurrentUser();
                autorResena.ModificadoPor = CurrentUser();

                var resena = resenaService.GetResenaById(resenaId);
                var alreadyHasIt =
                    resena.AutorResenas.Where(
                        x => x.Investigador.Id == autorResena.Investigador.Id).Count();

                if (alreadyHasIt == 0)
                {
                    resena.AddAutor(autorResena);
                    resenaService.SaveResena(resena);
                }
            }

            var autorResenaForm = autorResenaMapper.Map(autorResena);
            autorResenaForm.ParentId = resenaId;

            return Rjs("AddAutor", autorResenaForm);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Delete)]
        public ActionResult DeleteAutor(int id, int investigadorId)
        {
            var resena = resenaService.GetResenaById(id);

            if (resena != null)
            {
                var autor = resena.AutorResenas.Where(x => x.Investigador.Id == investigadorId).First();
                resena.DeleteAutor(autor);

                resenaService.SaveResena(resena);
            }

            return Rjs("DeleteAutor", investigadorId);
        }

        ResenaForm SetupNewForm()
        {
            return SetupNewForm(null);
        }

        ResenaForm SetupNewForm(ResenaForm form)
        {
            form = form ?? new ResenaForm();

            //Lista de Catalogos Pendientes
            form.Volumenes = customCollection.VolumenCustomCollection();
            form.TiposResenas = tipoResenaMapper.Map(catalogoService.GetActiveTipoResenas());
            form.EstadosProductos = customCollection.EstadoProductoCustomCollection();
            form.CoautoresExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos());
            form.CoautoresInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadores());
            form.Editoriales = editorialMapper.Map(catalogoService.GetActiveEditorials());
            form.Paises = paisMapper.Map(catalogoService.GetActivePaises());
            form.Idiomas = idiomaMapper.Map(catalogoService.GetActiveIdiomas());
            form.AreasTematicas = areaTematicaMapper.Map(catalogoService.GetActiveAreaTematicas());

            return form;
        }

        void FormSetCombos(ResenaForm form)
        {
            ViewData["Volumen"] = form.Volumen;
            ViewData["TipoResena"] = form.TipoResenaId;
            ViewData["EstadoProducto"] = form.EstadoProducto;
            ViewData["Editorial"] = form.EditorialId;
            ViewData["Pais"] = form.PaisId;
            ViewData["Idioma"] = form.IdiomaId;
            ViewData["AreaTematicaId"] = form.AreaTematicaId;
        }

        private ResenaForm SetupShowForm(ResenaForm form)
        {
            form = form ?? new ResenaForm();

            form.ShowFields = new ShowFieldsForm
                                  {
                                      RevistaPublicacionInstitucionNombre = form.RevistaPublicacion.InstitucionNombre,
                                      RevistaPublicacionPaisNombre = form.RevistaPublicacion.PaisNombre,

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