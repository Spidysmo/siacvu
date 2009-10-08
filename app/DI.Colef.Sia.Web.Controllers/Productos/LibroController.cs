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
    public class LibroController : BaseController<Libro, LibroForm>
    {
        readonly ILibroService libroService;
        readonly IInvestigadorService investigadorService;
        readonly ICatalogoService catalogoService;
        readonly ILibroMapper libroMapper;
        readonly ITipoPublicacionMapper tipoPublicacionMapper;
        readonly IEstadoProductoMapper estadoProductoMapper;
        readonly IProyectoMapper proyectoMapper;
        readonly IPaisMapper paisMapper;
        readonly IIdiomaMapper idiomaMapper;
        readonly IFormaParticipacionMapper formaParticipacionMapper;
        readonly IInvestigadorMapper investigadorMapper;
        readonly IInvestigadorExternoMapper investigadorExternoMapper;
        readonly ICoautorExternoLibroMapper coautorExternoLibroMapper;
        readonly ICoautorInternoLibroMapper coautorInternoLibroMapper;
        readonly IIdentificadorLibroMapper identificadorLibroMapper;
        readonly IAreaMapper areaMapper;
        readonly IDisciplinaMapper disciplinaMapper;
        readonly ISubdisciplinaMapper subdisciplinaMapper;
        readonly IProyectoService proyectoService;
        readonly IEventoMapper eventoMapper;
        readonly IEventoService eventoService;
        readonly IEdicionMapper edicionMapper;

        public LibroController(ILibroService libroService, 
                               ILibroMapper libroMapper,
                               ICatalogoService catalogoService,
                               IUsuarioService usuarioService,
                               ITipoPublicacionMapper tipoPublicacionMapper,
                               IEstadoProductoMapper estadoProductoMapper,
                               IProyectoMapper proyectoMapper,
                               IPaisMapper paisMapper,
                               IEdicionMapper edicionMapper,
                               IIdiomaMapper idiomaMapper,
                               IFormaParticipacionMapper formaParticipacionMapper,
                               ICoautorExternoLibroMapper coautorExternoLibroMapper,
                               ICoautorInternoLibroMapper coautorInternoLibroMapper,
                               IIdentificadorLibroMapper identificadorLibroMapper,
                               IAreaMapper areaMapper,
                               IInvestigadorMapper investigadorMapper,
                               IInvestigadorExternoMapper investigadorExternoMapper,
                               IDisciplinaMapper disciplinaMapper,
                               IInvestigadorService investigadorService,
                               ISubdisciplinaMapper subdisciplinaMapper,
                               ISearchService searchService,
                               IEventoMapper eventoMapper,
                               IEventoService eventoService,
                               IProyectoService proyectoService)
            : base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.edicionMapper = edicionMapper;
            this.libroService = libroService;
            this.libroMapper = libroMapper;
            this.tipoPublicacionMapper = tipoPublicacionMapper;
            this.estadoProductoMapper = estadoProductoMapper;
            this.proyectoMapper = proyectoMapper;
            this.paisMapper = paisMapper;
            this.idiomaMapper = idiomaMapper;
            this.formaParticipacionMapper = formaParticipacionMapper;
            this.investigadorMapper = investigadorMapper;
            this.coautorExternoLibroMapper = coautorExternoLibroMapper;
            this.investigadorExternoMapper = investigadorExternoMapper;
            this.investigadorService = investigadorService;
            this.coautorInternoLibroMapper = coautorInternoLibroMapper;
            this.identificadorLibroMapper = identificadorLibroMapper;
            this.areaMapper = areaMapper;
            this.disciplinaMapper = disciplinaMapper;
            this.subdisciplinaMapper = subdisciplinaMapper;
            this.proyectoService = proyectoService;
            this.eventoMapper = eventoMapper;
            this.eventoService = eventoService;
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index() 
        {
            var data = CreateViewDataWithTitle(Title.Index);
            var libros = new Libro[] { };

            if (User.IsInRole("Investigadores"))
                libros = libroService.GetAllLibros(CurrentUser());
            if (User.IsInRole("DGAA"))
                libros = libroService.GetAllLibros();
			
            data.List = libroMapper.Map(libros);

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

            var libro = libroService.GetLibroById(id);

            if (libro == null)
                return RedirectToIndex("no ha sido encontrado", true);

            if (libro.Usuario.Id != CurrentUser().Id)
                return RedirectToIndex("no lo puede modificar", true);
                        
            var libroForm = libroMapper.Map(libro);

            data.Form = SetupNewForm(libroForm);

            FormSetCombos(data.Form);
            
            ViewData.Model = data;
            return View();
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var libro = libroService.GetLibroById(id);
            data.Form = libroMapper.Map(libro);
            
            ViewData.Model = data;
            return View();
        }
        
        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create([Bind(Prefix = "CoautorInterno")] CoautorInternoProductoForm[] coautorInterno,
                                   [Bind(Prefix = "CoautorExterno")] CoautorExternoProductoForm[] coautorExterno, 
                                   LibroForm form)
        {
            var libro = libroMapper.Map(form, CurrentUser(), CurrentPeriodo(),
                                        coautorExterno, coautorInterno);
            
            if (!IsValidateModel(libro, form, Title.New, "Libro"))
            {
                var libroForm = libroMapper.Map(libro);

                ((GenericViewData<LibroForm>)ViewData.Model).Form = SetupNewForm(libroForm);
                return ViewNew();
            }

            libroService.SaveLibro(libro);

            return RedirectToIndex(String.Format("Libro {0} ha sido creado", libro.Nombre));
        }
        
        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(LibroForm form)
        {
            var libro = libroMapper.Map(form, CurrentUser(), CurrentPeriodo());
            
            if (!IsValidateModel(libro, form, Title.Edit))
            {
                var libroForm = libroMapper.Map(libro);

                ((GenericViewData<LibroForm>)ViewData.Model).Form = SetupNewForm(libroForm);
                FormSetCombos(libroForm);
                return ViewEdit();
            }
            
            libroService.SaveLibro(libro);

            return RedirectToIndex(String.Format("Libro {0} ha sido modificado", libro.Nombre));
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult ChangeArea(int select)
        {
            var list = new List<DisciplinaForm> { new DisciplinaForm { Id = 0, Nombre = "Seleccione ..." } };

            list.AddRange(disciplinaMapper.Map(catalogoService.GetDisciplinasByAreaId(select)));

            var form = new LibroForm
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
            var list = new List<SubdisciplinaForm> { new SubdisciplinaForm { Id = 0, Nombre = "Seleccione ..." } };

            list.AddRange(subdisciplinaMapper.Map(catalogoService.GetSubdisciplinasByDisciplinaId(select)));

            var form = new LibroForm
                           {
                               Subdisciplinas = list.ToArray()
                           };

            return Rjs("ChangeDisciplina", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<Libro>(x => x.Nombre, q);
            return Content(data);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewCoautorExterno(int id)
        {
            var libro = libroService.GetLibroById(id);
            var form = new CoautorForm { Controller = "Libro", IdName = "LibroId" };

            if (libro != null)
                form.Id = libro.Id;

            return Rjs("NewCoautorExterno", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddCoautorExterno([Bind(Prefix = "CoautorExterno")]CoautorExternoProductoForm form, int libroId)
        {
            var coautorExternoLibro = coautorExternoLibroMapper.Map(form);

            ModelState.AddModelErrors(coautorExternoLibro.ValidationResults(), false, "CoautorExterno", String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            if (libroId != 0)
            {
                coautorExternoLibro.CreadorPor = CurrentUser();
                coautorExternoLibro.ModificadoPor = CurrentUser();

                var libro = libroService.GetLibroById(libroId);

                var alreadyHasIt =
                    libro.CoautorExternoLibros.Where(
                        x => x.InvestigadorExterno.Id == coautorExternoLibro.InvestigadorExterno.Id).Count();

                if (alreadyHasIt == 0)
                {
                    libro.AddCoautorExterno(coautorExternoLibro);
                    libroService.SaveLibro(libro);
                }
            }

            var coautorExternoLibroForm = coautorExternoLibroMapper.Map(coautorExternoLibro);

            return Rjs("AddCoautorExterno", coautorExternoLibroForm);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewCoautorInterno(int id)
        {
            var libro = libroService.GetLibroById(id);
            var form = new CoautorForm { Controller = "Libro", IdName = "LibroId" };

            if (libro != null)
                form.Id = libro.Id;

            return Rjs("NewCoautorInterno", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddCoautorInterno([Bind(Prefix = "CoautorInterno")]CoautorInternoProductoForm form, int libroId)
        {
            var coautorInternoLibro = coautorInternoLibroMapper.Map(form);

            ModelState.AddModelErrors(coautorInternoLibro.ValidationResults(), false, "CoautorInterno", String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            coautorInternoLibro.CreadorPor = CurrentUser();
            coautorInternoLibro.ModificadoPor = CurrentUser();

            if (libroId != 0)
            {
                var libro = libroService.GetLibroById(libroId);
                 
                var alreadyHasIt =
                    libro.CoautorInternoLibros.Where(
                        x => x.Investigador.Id == coautorInternoLibro.Investigador.Id).Count();

                if (alreadyHasIt == 0)
                {
                    libro.AddCoautorInterno(coautorInternoLibro);
                    libroService.SaveLibro(libro);
                }
            }

            var coautorInternoLibroForm = coautorInternoLibroMapper.Map(coautorInternoLibro);

            return Rjs("AddCoautorInterno", coautorInternoLibroForm);
        }
                
        LibroForm SetupNewForm()
        {
            return SetupNewForm(null);
        }
        
        LibroForm SetupNewForm(LibroForm form)
        {
            form = form ?? new LibroForm();

            form.CoautorExternoProducto = new CoautorExternoProductoForm();
            form.CoautorInternoProducto = new CoautorInternoProductoForm();

            form.Eventos = eventoMapper.Map(eventoService.GetActiveEventos());
            form.Ediciones = edicionMapper.Map(catalogoService.GetActiveEdicions());
            form.TiposPublicaciones = tipoPublicacionMapper.Map(catalogoService.GetActiveTipoPublicacions());
            form.EstadosProductos = estadoProductoMapper.Map(catalogoService.GetActiveEstadoProductos());
            form.Proyectos = proyectoMapper.Map(proyectoService.GetActiveProyectos());
            form.Paises = paisMapper.Map(catalogoService.GetActivePaises());
            form.Idiomas = idiomaMapper.Map(catalogoService.GetActiveIdiomas());
            form.FormasParticipaciones = formaParticipacionMapper.Map(catalogoService.GetActiveFormaParticipaciones());
            form.CoautoresExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos());
            form.CoautoresInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadores());
            form.IdentificadoresLibros = identificadorLibroMapper.Map(catalogoService.GetActiveIdentificadorLibros());

            form.Areas = areaMapper.Map(catalogoService.GetActiveAreas());
            form.Disciplinas = disciplinaMapper.Map(catalogoService.GetDisciplinasByAreaId(form.AreaId));
            form.Subdisciplinas = subdisciplinaMapper.Map(catalogoService.GetSubdisciplinasByDisciplinaId(form.DisciplinaId));
			
            return form;
        }
        
        private void FormSetCombos(LibroForm form)
        {
            ViewData["TipoPublicacion"] = form.TipoPublicacionId;
            ViewData["Edicion"] = form.EdicionId;
            ViewData["EstadoProducto"] = form.EstadoProductoId;
            ViewData["Proyecto"] = form.ProyectoId;
            ViewData["Pais"] = form.PaisId;
            ViewData["Idioma"] = form.IdiomaId;
            ViewData["FormaParticipacion"] = form.FormaParticipacionId;
            ViewData["IdentificadorLibro"] = form.IdentificadorLibroId;
            ViewData["Area"] = form.AreaId;
            ViewData["Disciplina"] = form.DisciplinaId;
            ViewData["Subdisciplina"] = form.SubdisciplinaId;
            ViewData["NombreEvento"] = form.NombreEventoId;
        }
    }
}