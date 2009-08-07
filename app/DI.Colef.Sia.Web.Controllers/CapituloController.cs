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
    public class CapituloController : BaseController<Capitulo, CapituloForm>
    {
		readonly ICapituloService capituloService;
        readonly ICatalogoService catalogoService;
        readonly IInvestigadorService investigadorService;
        
        readonly ICapituloMapper capituloMapper;
        readonly ITipoCapituloMapper tipoCapituloMapper;
        readonly IEstadoMapper estadoMapper;
        readonly IPeriodoReferenciaMapper periodoReferenciaMapper;
        readonly ILineaTematicaMapper lineaTematicaMapper;
        readonly IIdiomaMapper idiomaMapper;
        readonly IPaisMapper paisMapper;
        readonly IInvestigadorMapper investigadorMapper;
        readonly IInvestigadorExternoMapper investigadorExternoMapper;
        readonly IFormaParticipacionMapper formaParticipacionMapper;
        readonly ITipoParticipacionMapper tipoParticipacionMapper;
        readonly ITipoParticipanteMapper tipoParticipanteMapper;
        readonly IAreaMapper areaMapper;
        readonly IDisciplinaMapper disciplinaMapper;
        readonly ISubdisciplinaMapper subdisciplinaMapper;
        readonly ICoautorExternoCapituloMapper coautorExternoCapituloMapper;
        readonly ICoautorInternoCapituloMapper coautorInternoCapituloMapper;
        readonly IResponsableExternoCapituloMapper responsableExternoCapituloMapper;
        readonly IResponsableInternoCapituloMapper responsableInternoCapituloMapper;
        
        public CapituloController(ICapituloService capituloService, 
			ICapituloMapper capituloMapper, 
			ICatalogoService catalogoService, 
            IUsuarioService usuarioService,
			ITipoCapituloMapper tipoCapituloMapper,
            IEstadoMapper estadoMapper,
            IPeriodoReferenciaMapper periodoReferenciaMapper,
            ILineaTematicaMapper lineaTematicaMapper,
            IIdiomaMapper idiomaMapper,
            IPaisMapper paisMapper,
            IInvestigadorMapper investigadorMapper,
            IInvestigadorExternoMapper investigadorExternoMapper,
            IFormaParticipacionMapper formaParticipacionMapper,
            ITipoParticipacionMapper tipoParticipacionMapper,
            ITipoParticipanteMapper tipoParticipanteMapper,
            IAreaMapper areaMapper,
            IDisciplinaMapper disciplinaMapper,
            ISubdisciplinaMapper subdisciplinaMapper,
            ICoautorExternoCapituloMapper coautorExternoCapituloMapper,
            ICoautorInternoCapituloMapper coautorInternoCapituloMapper,
            IResponsableExternoCapituloMapper responsableExternoCapituloMapper,
            IResponsableInternoCapituloMapper responsableInternoCapituloMapper,
            IInvestigadorService investigadorService
			) : base(usuarioService)
        {
			this.catalogoService = catalogoService;
            this.capituloService = capituloService;
            this.investigadorService = investigadorService;

            this.capituloMapper = capituloMapper;
			this.tipoCapituloMapper = tipoCapituloMapper;
            this.estadoMapper = estadoMapper;
            this.periodoReferenciaMapper = periodoReferenciaMapper;
            this.lineaTematicaMapper = lineaTematicaMapper;
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
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index() 
        {
			var data = CreateViewDataWithTitle(Title.Index);
			
			var capitulos = capituloService.GetAllCapitulos();
            data.List = capituloMapper.Map(capitulos);

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

            var capitulo = capituloService.GetCapituloById(id);
            if (capitulo == null)
                return RedirectToIndex("no ha sido encontrado", true);

            var capituloForm = capituloMapper.Map(capitulo);

            //data.Form = SetupNewForm(capituloForm);

            //FormSetCombos(data.Form);

			ViewData.Model = data;
            return View();
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var capitulo = capituloService.GetCapituloById(id);
            data.Form = capituloMapper.Map(capitulo);
            
            ViewData.Model = data;
            return View();
        }
        
        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(CapituloForm form)
        {
            var capitulo = capituloMapper.Map(form, CurrentUser(), CurrentInvestigador());

            if (!IsValidateModel(capitulo, form, Title.New, "Capitulo"))
            {
                ((GenericViewData<CapituloForm>)ViewData.Model).Form = SetupNewForm();
                return ViewNew();
            }

            capituloService.SaveCapitulo(capitulo);

            return RedirectToIndex(String.Format("{0} ha sido creado", capitulo.NombreCapitulo));
        }
        
        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(CapituloForm form)
        {
            var capitulo = capituloMapper.Map(form, CurrentUser(), CurrentInvestigador());

            if (!IsValidateModel(capitulo, form, Title.Edit))
                return ViewEdit();

            capituloService.SaveCapitulo(capitulo);

            return RedirectToIndex(String.Format("{0} ha sido modificado", capitulo.NombreCapitulo));
            
        }
        
        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {            
            var capitulo = capituloService.GetCapituloById(id);
            capitulo.Activo = true;
            capitulo.ModificadoPor = CurrentUser();
            capituloService.SaveCapitulo(capitulo);

            var form = capituloMapper.Map(capitulo);
            
            return Rjs(form);
        }
        
        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var capitulo = capituloService.GetCapituloById(id);
            capitulo.Activo = false;
            capitulo.ModificadoPor = CurrentUser();
            capituloService.SaveCapitulo(capitulo);

            var form = capituloMapper.Map(capitulo);
            
            return Rjs("Activate", form);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewCoautorInterno(int id)
        {
            var capitulo = capituloService.GetCapituloById(id);

            var form = new CapituloForm
            {
                Id = capitulo.Id,
                CoautorInternoCapitulo = new CoautorInternoCapituloForm(),
                CoautoresInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadorInternos())
            };

            return Rjs("NewCoautorInterno", form);
        }

        [Transaction]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddCoautorInterno([Bind(Prefix = "CoautorInternoCapitulo")]CoautorInternoCapituloForm form, int capituloId)
        {
            var coautorInternoCapitulo = coautorInternoCapituloMapper.Map(form);

            ModelState.AddModelErrors(coautorInternoCapitulo.ValidationResults(), true, String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            coautorInternoCapitulo.CreadorPor = CurrentUser();
            coautorInternoCapitulo.ModificadoPor = CurrentUser();

            var capitulo = capituloService.GetCapituloById(capituloId);

            capitulo.AddCoautorInterno(coautorInternoCapitulo);
            capituloService.SaveCapitulo(capitulo);

            var coautorInternoCapituloForm = coautorInternoCapituloMapper.Map(coautorInternoCapitulo);

            return Rjs("AddCoautorInterno", coautorInternoCapituloForm);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewCoautorExterno(int id)
        {
            var capitulo = capituloService.GetCapituloById(id);

            var form = new CapituloForm
            {
                Id = capitulo.Id,
                CoautorExternoCapitulo = new CoautorExternoCapituloForm(),
                CoautoresExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos())
            };

            return Rjs("NewCoautorExterno", form);
        }

        [Transaction]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddCoautorExterno([Bind(Prefix = "CoautorExternoCapitulo")]CoautorExternoCapituloForm form, int capituloId)
        {
            var coautorExternoCapitulo = coautorExternoCapituloMapper.Map(form);

            ModelState.AddModelErrors(coautorExternoCapitulo.ValidationResults(), true, String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            coautorExternoCapitulo.CreadorPor = CurrentUser();
            coautorExternoCapitulo.ModificadoPor = CurrentUser();

            var capitulo = capituloService.GetCapituloById(capituloId);

            capitulo.AddCoautorExterno(coautorExternoCapitulo);
            capituloService.SaveCapitulo(capitulo);

            var coautorExternoCapituloForm = coautorExternoCapituloMapper.Map(coautorExternoCapitulo);

            return Rjs("AddCoautorExterno", coautorExternoCapituloForm);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewResponsableInterno(int id)
        {
            var capitulo = capituloService.GetCapituloById(id);

            var form = new CapituloForm
            {
                Id = capitulo.Id,
                ResponsableInternoCapitulo = new ResponsableInternoCapituloForm(),
                ResponsablesInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadorInternos())
            };

            return Rjs("NewResponsableInterno", form);
        }

        [Transaction]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddResponsableInterno([Bind(Prefix = "ResponsableInternoCapitulo")]ResponsableInternoCapituloForm form, int capituloId)
        {
            var responsableInternoCapitulo = responsableInternoCapituloMapper.Map(form);

            ModelState.AddModelErrors(responsableInternoCapitulo.ValidationResults(), true, String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            responsableInternoCapitulo.CreadorPor = CurrentUser();
            responsableInternoCapitulo.ModificadoPor = CurrentUser();

            var capitulo = capituloService.GetCapituloById(capituloId);

            capitulo.AddResponsableInterno(responsableInternoCapitulo);
            capituloService.SaveCapitulo(capitulo);

            var responsableInternoCapituloForm = responsableInternoCapituloMapper.Map(responsableInternoCapitulo);

            return Rjs("AddResponsableInterno", responsableInternoCapituloForm);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewResponsableExterno(int id)
        {
            var capitulo = capituloService.GetCapituloById(id);

            var form = new CapituloForm
            {
                Id = capitulo.Id,
                ResponsableExternoCapitulo = new ResponsableExternoCapituloForm(),
                ResponsablesExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos())
            };

            return Rjs("NewResponsableExterno", form);
        }

        [Transaction]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddResponsableExterno([Bind(Prefix = "ResponsableExternoCapitulo")]ResponsableExternoCapituloForm form, int capituloId)
        {
            var responsableExternoCapitulo = responsableExternoCapituloMapper.Map(form);

            ModelState.AddModelErrors(responsableExternoCapitulo.ValidationResults(), true, String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            responsableExternoCapitulo.CreadorPor = CurrentUser();
            responsableExternoCapitulo.ModificadoPor = CurrentUser();

            var capitulo = capituloService.GetCapituloById(capituloId);

            capitulo.AddResponsableExterno(responsableExternoCapitulo);
            capituloService.SaveCapitulo(capitulo);

            var responsableExternoCapituloForm = responsableExternoCapituloMapper.Map(responsableExternoCapitulo);

            return Rjs("AddResponsableExterno", responsableExternoCapituloForm);
        }
        
        CapituloForm SetupNewForm()
        {
            return new CapituloForm
            {
				CoautorExternoCapitulo = new CoautorExternoCapituloForm(),
                CoautorInternoCapitulo = new CoautorInternoCapituloForm(),
                ResponsableInternoCapitulo = new ResponsableInternoCapituloForm(),
                ResponsableExternoCapitulo = new ResponsableExternoCapituloForm(),
                
                //Lista de Catalogos Pendientes
                TiposCapitulos = tipoCapituloMapper.Map(catalogoService.GetActiveTipoCapitulos()),
                Estados = estadoMapper.Map(catalogoService.GetActiveEstados()),
                PeriodosReferencias = periodoReferenciaMapper.Map(catalogoService.GetActivePeriodoReferencias()),
                LineasTematicas = lineaTematicaMapper.Map(catalogoService.GetActiveLineaTematicas()),
                Idiomas = idiomaMapper.Map(catalogoService.GetActiveIdiomas()),
                CoautoresExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos()),
                CoautoresInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadorInternos()),
                Paises = paisMapper.Map(catalogoService.GetActivePaises()),
                ResponsablesInternos = investigadorMapper.Map(investigadorService.GetActiveInvestigadorInternos()),
                ResponsablesExternos = investigadorExternoMapper.Map(catalogoService.GetActiveInvestigadorExternos()),
                FormasParticipaciones = formaParticipacionMapper.Map(catalogoService.GetActiveFormaParticipaciones()),
                TiposParticipaciones = tipoParticipacionMapper.Map(catalogoService.GetActiveTipoParticipaciones()),
                TiposParticipantes = tipoParticipanteMapper.Map(catalogoService.GetActiveParticipantes()),
                Areas = areaMapper.Map(catalogoService.GetActiveAreas()),
                Disciplinas = disciplinaMapper.Map(catalogoService.GetActiveDisciplinas()),
                Subdisciplinas = subdisciplinaMapper.Map(catalogoService.GetActiveSubdisciplinas()),
            };
        }
    }
}