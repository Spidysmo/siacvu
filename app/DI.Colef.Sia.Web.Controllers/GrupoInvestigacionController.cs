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

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers
{
    [HandleError]
    public class GrupoInvestigacionController : BaseController<GrupoInvestigacion, GrupoInvestigacionForm>
    {
		readonly IGrupoInvestigacionService grupoInvestigacionService;
        readonly IGrupoInvestigacionMapper grupoInvestigacionMapper;
        readonly ICatalogoService catalogoService;
        readonly ISectorMapper sectorMapper;
        readonly IMiembroExternoGrupoInvestigacionMapper miembroExternoGrupoInvestigacionMapper;
        readonly IInvestigadorExternoMapper investigadorExternoMapper;
    
        public GrupoInvestigacionController(IGrupoInvestigacionService grupoInvestigacionService, 
			                                IGrupoInvestigacionMapper grupoInvestigacionMapper, 
			                                ICatalogoService catalogoService, IUsuarioService usuarioService,
                                            ISectorMapper sectorMapper,
                                            IInvestigadorExternoMapper investigadorExternoMapper,
                                            IMiembroExternoGrupoInvestigacionMapper miembroExternoGrupoInvestigacionMapper,
                                            IOrganizacionMapper organizacionMapper,
                                            ISearchService searchService,
                                            INivelMapper nivelMapper)
            : base(usuarioService, searchService, catalogoService, organizacionMapper, nivelMapper)
        {
			this.catalogoService = catalogoService;
            this.investigadorExternoMapper = investigadorExternoMapper;
            this.miembroExternoGrupoInvestigacionMapper = miembroExternoGrupoInvestigacionMapper;
            this.grupoInvestigacionService = grupoInvestigacionService;
            this.grupoInvestigacionMapper = grupoInvestigacionMapper;
            this.sectorMapper = sectorMapper;
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index() 
        {
			var data = CreateViewDataWithTitle(Title.Index);
            var grupoInvestigacions = new GrupoInvestigacion[] { };

            if (User.IsInRole("Investigadores"))
                grupoInvestigacions = grupoInvestigacionService.GetAllGrupoInvestigacions(CurrentUser());
            if (User.IsInRole("DGAA"))
                grupoInvestigacions = grupoInvestigacionService.GetAllGrupoInvestigacions();
			
            data.List = grupoInvestigacionMapper.Map(grupoInvestigacions);

            return View(data);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {			
			var data = CreateViewDataWithTitle(Title.New);
            data.Form = SetupNewForm();

            return View(data);
        }

        [Authorize(Roles = "Investigadores")]
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

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var grupoInvestigacion = grupoInvestigacionService.GetGrupoInvestigacionById(id);
            var grupoInvestigacionForm = grupoInvestigacionMapper.Map(grupoInvestigacion);

            data.Form = SetupShowForm(grupoInvestigacionForm);
            
            ViewData.Model = data;
            return View();
        }
        
        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create([Bind(Prefix = "MiembroExterno")] MiembroExternoGrupoInvestigacionForm[] miembroExterno,
            GrupoInvestigacionForm form)
        {
            miembroExterno = miembroExterno ?? new MiembroExternoGrupoInvestigacionForm[] { };

            var grupoInvestigacion = grupoInvestigacionMapper.Map(form, CurrentUser(), miembroExterno);

            if (!IsValidateModel(grupoInvestigacion, form, Title.New, "GrupoInvestigacion"))
            {
                var grupoInvestigacionForm = grupoInvestigacionMapper.Map(grupoInvestigacion);

                ((GenericViewData<GrupoInvestigacionForm>)ViewData.Model).Form = SetupNewForm(grupoInvestigacionForm);
                FormSetCombos(grupoInvestigacionForm);
                return ViewNew();
            }

            grupoInvestigacionService.SaveGrupoInvestigacion(grupoInvestigacion);

            return RedirectToIndex(String.Format("Grupo de Investigaci�n {0} ha sido creado", grupoInvestigacion.NombreGrupoInvestigacion));
        }
        
        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
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
        
        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<GrupoInvestigacion>(x => x.NombreGrupoInvestigacion, q);
            return Content(data);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewMiembroExterno(int id)
        {
            var grupoInvestigacion = grupoInvestigacionService.GetGrupoInvestigacionById(id);
            var form = new MiembroExternoGrupoInvestigacionForm{InvestigadorExterno = new InvestigadorExternoForm()};

            if (grupoInvestigacion != null)
                form.Id = grupoInvestigacion.Id;

            return Rjs("NewMiembroExterno", form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddMiembroExterno([Bind(Prefix = "MiembroExterno")] MiembroExternoGrupoInvestigacionForm form,
                                              int grupoInvestigacionId)
        {
            var investigadorExternoForm = new InvestigadorExternoForm
            {
                Nombre = form.Nombre,
                ApellidoPaterno = form.ApellidoPaterno,
                ApellidoMaterno = form.ApellidoMaterno
            };

            var investigadorExterno = investigadorExternoMapper.Map(investigadorExternoForm);

            ModelState.AddModelErrors(investigadorExterno.ValidationResults(), false, "MiembroExterno", String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            investigadorExterno.CreadoPor = CurrentUser();
            investigadorExterno.ModificadoPor = CurrentUser();

            catalogoService.SaveInvestigadorExterno(investigadorExterno);

            form.InvestigadorExternoId = investigadorExterno.Id;
            var miembroExternoGrupoInvestigacion = miembroExternoGrupoInvestigacionMapper.Map(form);

            ModelState.AddModelErrors(miembroExternoGrupoInvestigacion.ValidationResults(), false, "MiembroExterno", String.Empty);
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            if (grupoInvestigacionId != 0)
            {
                miembroExternoGrupoInvestigacion.CreadoPor = CurrentUser();
                miembroExternoGrupoInvestigacion.ModificadoPor = CurrentUser();

                var grupoInvestigacion = grupoInvestigacionService.GetGrupoInvestigacionById(grupoInvestigacionId);

                var alreadyHasIt =
                    grupoInvestigacion.MiembroExternoGrupoInvestigaciones.Where(
                        x => x.InvestigadorExterno.Id == miembroExternoGrupoInvestigacion.InvestigadorExterno.Id).Count();

                if (alreadyHasIt == 0)
                {
                    grupoInvestigacion.AddMiembroExterno(miembroExternoGrupoInvestigacion);
                    grupoInvestigacionService.SaveGrupoInvestigacion(grupoInvestigacion);
                }
            }

            var miembroExternoGrupoInvestigacionForm = miembroExternoGrupoInvestigacionMapper.Map(miembroExternoGrupoInvestigacion);
            miembroExternoGrupoInvestigacionForm.ParentId = grupoInvestigacionId;

            return Rjs("AddMiembroExterno", miembroExternoGrupoInvestigacionForm);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Delete)]
        public ActionResult DeleteMiembroExterno(int id, int investigadorExternoId)
        {
            var grupoInvestigacion = grupoInvestigacionService.GetGrupoInvestigacionById(id);

            if (grupoInvestigacion != null)
            {
                var miembro = grupoInvestigacion.MiembroExternoGrupoInvestigaciones.Where(x => x.InvestigadorExterno.Id == investigadorExternoId).First();
                grupoInvestigacion.DeleteMiembroExterno(miembro);

                grupoInvestigacionService.SaveGrupoInvestigacion(grupoInvestigacion);
            }

            var form = new MiembroExternoGrupoInvestigacionForm{InvestigadorExternoId = investigadorExternoId};

            return Rjs("DeleteMiembroExterno", form);
        }

        GrupoInvestigacionForm SetupNewForm()
        {
            return SetupNewForm(null);
        }

        GrupoInvestigacionForm SetupNewForm(GrupoInvestigacionForm form)
        {
            form = form ?? new GrupoInvestigacionForm();

            form.Sectores = sectorMapper.Map(catalogoService.GetActiveSectores());
            form.Organizaciones = GetOrganizacionesBySectorId(form.SectorId);
            form.Niveles = GetNivelesByOrganizacionId(form.OrganizacionId);
            form.Investigador = CurrentInvestigador();

            return form;
        }

        void FormSetCombos(GrupoInvestigacionForm form)
        {
            ViewData["SectorId"] = form.SectorId;
            ViewData["OrganizacionId"] = form.OrganizacionId;
            ViewData["Nivel2Id"] = form.Nivel2Id;
        }

        private GrupoInvestigacionForm SetupShowForm(GrupoInvestigacionForm form)
        {
            form = form ?? new GrupoInvestigacionForm();
            form.Investigador = CurrentInvestigador();
            form.ShowFields = new ShowFieldsForm
                                  {
                                      Nivel2Nombre = form.Nivel2Nombre,
                                      OrganizacionNombre = form.OrganizacionNombre,
                                      SectorNombre = form.SectorNombre,

                                      IsShowForm = true
                                  };

            return form;
        }
    }
}