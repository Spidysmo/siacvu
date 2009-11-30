using System;
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
    public class TesisDirigidaController : BaseController<TesisDirigida, TesisDirigidaForm>
    {
        readonly ICatalogoService catalogoService;
        readonly IFormaParticipacionMapper formaParticipacionMapper;
        readonly IGradoAcademicoMapper gradoAcademicoMapper;
        readonly ITesisDirigidaMapper tesisDirigidaMapper;
        readonly ITesisDirigidaService tesisDirigidaService;
        readonly IVinculacionAPyDMapper vinculacionApyDMapper;
        readonly ICustomCollection customCollection;
        readonly ITesisPosgradoMapper tesisPosgradoMapper;
        readonly ITesisPosgradoService tesisPosgradoService;
        readonly ISectorMapper sectorMapper;
        readonly IAreaMapper areaMapper;

        public TesisDirigidaController(ITesisDirigidaService tesisDirigidaService,
                               ITesisDirigidaMapper tesisDirigidaMapper,
                               ICatalogoService catalogoService,
                               IUsuarioService usuarioService, IGradoAcademicoMapper gradoAcademicoMapper,
                               IFormaParticipacionMapper formaParticipacionMapper,
                               ISubdisciplinaMapper subdisciplinaMapper, 
                               ISearchService searchService,
                               IVinculacionAPyDMapper vinculacionApyDMapper,
                               INivelMapper nivelMapper, ICustomCollection customCollection,
                               ITesisPosgradoMapper tesisPosgradoMapper, ITesisPosgradoService tesisPosgradoService,
                               IOrganizacionMapper organizacionMapper, ISectorMapper sectorMapper,
                               IDisciplinaMapper disciplinaMapper, IAreaMapper areaMapper, IInstitucionMapper institucionMapper)
            : base(usuarioService, searchService, catalogoService, institucionMapper, disciplinaMapper, subdisciplinaMapper, organizacionMapper, nivelMapper)
        {
            this.catalogoService = catalogoService;
            this.tesisDirigidaService = tesisDirigidaService;
            this.tesisDirigidaMapper = tesisDirigidaMapper;
            this.gradoAcademicoMapper = gradoAcademicoMapper;
            this.formaParticipacionMapper = formaParticipacionMapper;
            this.vinculacionApyDMapper = vinculacionApyDMapper;
            this.customCollection = customCollection;
            this.tesisPosgradoMapper = tesisPosgradoMapper;
            this.tesisPosgradoService = tesisPosgradoService;
            this.sectorMapper = sectorMapper;
            this.areaMapper = areaMapper;
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index()
        {
            var data = CreateViewDataWithTitle(Title.Index);
            var tesisDirigidas = new TesisDirigida[] { };

            if (User.IsInRole("Investigadores"))
                tesisDirigidas = tesisDirigidaService.GetAllTesisDirigidas(CurrentUser());
            if (User.IsInRole("DGAA"))
                tesisDirigidas = tesisDirigidaService.GetAllTesisDirigidas();

            data.List = tesisDirigidaMapper.Map(tesisDirigidas);

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
            
            return View(data);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var tesisDirigida = tesisDirigidaService.GetTesisDirigidaById(id);

            if (tesisDirigida == null)
                return RedirectToIndex("no ha sido encontrado", true);
            if (tesisDirigida.Usuario.Id != CurrentUser().Id)
                return RedirectToIndex("no lo puede modificar", true);

            var tesisDirigidaForm = tesisDirigidaMapper.Map(tesisDirigida);

            data.Form = SetupNewForm(tesisDirigidaForm);
            FormSetCombos(data.Form);

            ViewData.Model = data;
            return View();
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var tesisDirigida = tesisDirigidaService.GetTesisDirigidaById(id);

            var tesisDirigidaForm = tesisDirigidaMapper.Map(tesisDirigida);

            data.Form = SetupShowForm(tesisDirigidaForm);

            ViewData.Model = data;
            return View();
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(TesisDirigidaForm form)
        {
            var tesisDirigida = tesisDirigidaMapper.Map(form, CurrentUser(), CurrentInvestigador());

            if (!IsValidateModel(tesisDirigida, form, Title.New, "TesisDirigida"))
            {
                var tesisForm = tesisDirigidaMapper.Map(tesisDirigida);

                ((GenericViewData<TesisDirigidaForm>)ViewData.Model).Form = SetupNewForm(tesisForm);
                FormSetCombos(tesisForm);
                return ViewNew();
            }

            tesisDirigidaService.SaveTesisDirigida(tesisDirigida);

            return RedirectToIndex(String.Format("Tesis dirigida {0} ha sido creada", IndexValueHelper.GetTesisIndexStringValue(tesisDirigidaMapper.Map(tesisDirigida))));
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(TesisDirigidaForm form)
        {
            var tesisDirigida = tesisDirigidaMapper.Map(form, CurrentUser(), CurrentInvestigador());

            if (!IsValidateModel(tesisDirigida, form, Title.Edit))
            {
                var tesisDirigidaForm = tesisDirigidaMapper.Map(tesisDirigida);

                ((GenericViewData<TesisDirigidaForm>) ViewData.Model).Form = SetupNewForm(tesisDirigidaForm);
                FormSetCombos(tesisDirigidaForm);
                return ViewEdit();
            }

            tesisDirigidaService.SaveTesisDirigida(tesisDirigida);

            return RedirectToIndex(String.Format("Tesis dirigida {0} ha sido modificada", IndexValueHelper.GetTesisIndexStringValue(tesisDirigidaMapper.Map(tesisDirigida))));
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<TesisDirigida>(x => x.Titulo, q);
            return Content(data);
        }

        TesisDirigidaForm SetupNewForm()
        {
            return SetupNewForm(null);
        }

        TesisDirigidaForm SetupNewForm(TesisDirigidaForm form)
        {
            form = form ?? new TesisDirigidaForm();

            //Lista de Catalogos Pendientes
            form.GradosAcademicos = gradoAcademicoMapper.Map(catalogoService.GetActiveGrados());
            form.FormasParticipaciones = formaParticipacionMapper.Map(catalogoService.GetActiveFormaParticipaciones());
            form.TiposEstudiantes = customCollection.TipoAlumnoCursoCustomCollection();
            form.VinculacionesAPyDs = vinculacionApyDMapper.Map(catalogoService.GetActiveVinculacionAPyDs());
            form.TesisPosgrados = tesisPosgradoMapper.Map(tesisPosgradoService.GetAllTesisPosgrados());

            form.Areas = areaMapper.Map(catalogoService.GetActiveAreas());
            var subdisciplina = subdisciplinaMapper.Map(catalogoService.GetSubdisciplinaById(form.SubdisciplinaId));
            form.Disciplinas = GetDisciplinas(subdisciplina.DisciplinaAreaId);
            form.Subdisciplinas = GetSubdisciplinas(subdisciplina.DisciplinaId);

            form.Sectores = sectorMapper.Map(catalogoService.GetActiveSectores());
            var nivel2 = nivelMapper.Map(catalogoService.GetNivelById(form.Nivel2Id));
            form.Organizaciones = GetOrganizaciones(nivel2.OrganizacionSectorId);
            form.Niveles = GetNiveles(nivel2.OrganizacionId);

            return form;
        }

        void FormSetCombos(TesisDirigidaForm form)
        {
            ViewData["TesisPosgradoId"] = form.TesisPosgradoId;
            ViewData["TipoEstudiante"] = form.TipoEstudiante;
            ViewData["VinculacionAPyD"] = form.VinculacionAPyDId;
            ViewData["GradoAcademico"] = form.GradoAcademicoId;
            ViewData["FormaParticipacion"] = form.FormaParticipacionId;

            var subdisciplina = subdisciplinaMapper.Map(catalogoService.GetSubdisciplinaById(form.SubdisciplinaId));
            ViewData["AreaId"] = subdisciplina.DisciplinaAreaId;
            ViewData["DisciplinaId"] = subdisciplina.DisciplinaId;
            ViewData["SubdisciplinaId"] = form.SubdisciplinaId;

            var nivel2 = nivelMapper.Map(catalogoService.GetNivelById(form.Nivel2Id));
            ViewData["SectorId"] = nivel2.OrganizacionSectorId;
            ViewData["OrganizacionId"] = nivel2.OrganizacionId;
            ViewData["Nivel2Id"] = form.Nivel2Id;
        }

        private TesisDirigidaForm SetupShowForm(TesisDirigidaForm form)
        {
            form = form ?? new TesisDirigidaForm();

            form.ShowFields = new ShowFieldsForm
                                  {
                                      InstitucionNombre = form.Institucion.Nombre,
                                      InstitucionCiudad = form.Institucion.Ciudad,
                                      InstitucionEstadoPaisNombre = form.Institucion.EstadoPaisNombre,
                                      InstitucionPaisNombre = form.Institucion.PaisNombre,
                                      InstitucionTipoInstitucionNombre = form.Institucion.TipoInstitucion,

                                      SubdisciplinaNombre = form.Subdisciplina.Nombre,
                                      SubdisciplinaDisciplinaNombre = form.Subdisciplina.DisciplinaNombre,
                                      SubdisciplinaDisciplinaAreaNombre = form.Subdisciplina.DisciplinaAreaNombre,

                                      Nivel2Nombre = form.Nivel2.Nombre,
                                      Nivel2OrganizacionNombre = form.Nivel2.OrganizacionNombre,
                                      Nivel2OrganizacionSectorNombre = form.Nivel2.OrganizacionSectorNombre,

                                      IsShowForm = true,
                                      InstitucionLabel = "Instituci�n"
                                  };
            return form;
        }
    }
}