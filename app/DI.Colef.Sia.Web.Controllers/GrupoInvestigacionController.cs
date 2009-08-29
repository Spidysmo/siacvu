using System;
using System.Web.Mvc;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData;
using SharpArch.Web.NHibernate;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers
{
    [HandleError]
    public class GrupoInvestigacionController : BaseController<GrupoInvestigacion, GrupoInvestigacionForm>
    {
		readonly IGrupoInvestigacionService grupoInvestigacionService;
        readonly IGrupoInvestigacionMapper grupoInvestigacionMapper;
        readonly ICatalogoService catalogoService;
        readonly IUsuarioMapper usuarioMapper;
        readonly ISectorMapper sectorMapper;
        readonly IOrganizacionMapper organizacionMapper;
        readonly INivelMapper nivelMapper;
    
        public GrupoInvestigacionController(IGrupoInvestigacionService grupoInvestigacionService, 
			IGrupoInvestigacionMapper grupoInvestigacionMapper, 
			ICatalogoService catalogoService, IUsuarioService usuarioService,
			IUsuarioMapper usuarioMapper,
            ISectorMapper sectorMapper,
            IOrganizacionMapper organizacionMapper,
            ISearchService searchService,
            INivelMapper nivelMapper)
            : base(usuarioService, searchService, catalogoService)
        {
			this.catalogoService = catalogoService;
            this.grupoInvestigacionService = grupoInvestigacionService;
            this.grupoInvestigacionMapper = grupoInvestigacionMapper;
			this.usuarioMapper = usuarioMapper;
            this.sectorMapper = sectorMapper;
            this.organizacionMapper = organizacionMapper;
            this.nivelMapper = nivelMapper;
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index() 
        {
			var data = CreateViewDataWithTitle(Title.Index);
			
			var grupoInvestigacions = grupoInvestigacionService.GetAllGrupoInvestigacions();
            data.List = grupoInvestigacionMapper.Map(grupoInvestigacions);

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

            var grupoInvestigacion = grupoInvestigacionService.GetGrupoInvestigacionById(id);

            if (grupoInvestigacion == null)
                return RedirectToIndex("no ha sido encontrado", true);

            if (grupoInvestigacion.Usuario.Id != CurrentUser().Id)
                return RedirectToIndex("no lo puede modificar", true);
                        
            var grupoInvestigacionForm = grupoInvestigacionMapper.Map(grupoInvestigacion);

            data.Form = SetupNewForm(grupoInvestigacionForm);
            FormSetCombos(data.Form);
            
			ViewData.Model = data;
            return View();
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var grupoInvestigacion = grupoInvestigacionService.GetGrupoInvestigacionById(id);
            data.Form = grupoInvestigacionMapper.Map(grupoInvestigacion);
            
            ViewData.Model = data;
            return View();
        }
        
        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(GrupoInvestigacionForm form)
        {
            var grupoInvestigacion = grupoInvestigacionMapper.Map(form, CurrentUser());
            
            if (!IsValidateModel(grupoInvestigacion, form, Title.New, "GrupoInvestigacion"))
            {
                ((GenericViewData<GrupoInvestigacionForm>)ViewData.Model).Form = SetupNewForm();
                return ViewNew();
            }

            grupoInvestigacionService.SaveGrupoInvestigacion(grupoInvestigacion);

            return RedirectToIndex(String.Format("Grupo de Investigaci�n {0} ha sido creado", grupoInvestigacion.NombreGrupoInvestigacion));
        }
        
        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(GrupoInvestigacionForm form)
        {
            var grupoInvestigacion = grupoInvestigacionMapper.Map(form, CurrentUser());
            
            if (!IsValidateModel(grupoInvestigacion, form, Title.Edit))
            {
                var grupoInvestigacionForm = grupoInvestigacionMapper.Map(grupoInvestigacion);

                ((GenericViewData<GrupoInvestigacionForm>)ViewData.Model).Form = SetupNewForm(grupoInvestigacionForm);
                FormSetCombos(grupoInvestigacionForm);
                return ViewEdit();
            }
            
            grupoInvestigacionService.SaveGrupoInvestigacion(grupoInvestigacion);
            return RedirectToIndex(String.Format("Grupo de Investigaci�n {0} ha sido modificado", grupoInvestigacion.NombreGrupoInvestigacion));
        }
        
        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {            
            var grupoInvestigacion = grupoInvestigacionService.GetGrupoInvestigacionById(id);

            if (grupoInvestigacion.Usuario.Id != CurrentUser().Id)
                return RedirectToIndex("no lo puede modificar", true);

            grupoInvestigacion.Activo = true;
            grupoInvestigacion.ModificadoPor = CurrentUser();
            grupoInvestigacionService.SaveGrupoInvestigacion(grupoInvestigacion);

            var form = grupoInvestigacionMapper.Map(grupoInvestigacion);
            
            return Rjs(form);
        }
        
        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var grupoInvestigacion = grupoInvestigacionService.GetGrupoInvestigacionById(id);

            if (grupoInvestigacion.Usuario.Id != CurrentUser().Id)
                return RedirectToIndex("no lo puede modificar", true);

            grupoInvestigacion.Activo = false;
            grupoInvestigacion.ModificadoPor = CurrentUser();
            grupoInvestigacionService.SaveGrupoInvestigacion(grupoInvestigacion);

            var form = grupoInvestigacionMapper.Map(grupoInvestigacion);
            
            return Rjs("Activate", form);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<GrupoInvestigacion>(x => x.NombreGrupoInvestigacion, q);
            return Content(data);
        }

        GrupoInvestigacionForm SetupNewForm()
        {
            return SetupNewForm(null);
        }
        
        GrupoInvestigacionForm SetupNewForm(GrupoInvestigacionForm form)
        {
			form = form ?? new GrupoInvestigacionForm();

            form.Sectores = sectorMapper.Map(catalogoService.GetActiveSectores());
            form.Organizaciones = organizacionMapper.Map(catalogoService.GetActiveOrganizaciones());
            form.Niveles2 = nivelMapper.Map(catalogoService.GetActiveNiveles());
            form.Niveles3 = nivelMapper.Map(catalogoService.GetActiveNiveles());
            form.Niveles4 = nivelMapper.Map(catalogoService.GetActiveNiveles());
            form.Niveles5 = nivelMapper.Map(catalogoService.GetActiveNiveles());
            form.Niveles6 = nivelMapper.Map(catalogoService.GetActiveNiveles());

			return form;
        }
        
        private void FormSetCombos(GrupoInvestigacionForm form)
        {
			ViewData["Sector"] = form.SectorId;
			ViewData["Organizacion"] = form.OrganizacionId;
			ViewData["Nivel2"] = form.Nivel2Id;
			ViewData["Nivel3"] = form.Nivel3Id;
			ViewData["Nivel4"] = form.Nivel4Id;
			ViewData["Nivel5"] = form.Nivel5Id;
			ViewData["Nivel6"] = form.Nivel6Id;
        }
    }
}
