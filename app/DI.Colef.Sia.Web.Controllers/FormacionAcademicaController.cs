using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers
{
    [HandleError]
    public class FormacionAcademicaController : BaseController<FormacionAcademica, FormacionAcademicaForm>
    {
        readonly IAreaMapper areaMapper;
        readonly ICatalogoService catalogoService;
        readonly IDisciplinaMapper disciplinaMapper;
        readonly IEstadoPaisMapper estadoPaisMapper;
        readonly IFormacionAcademicaMapper formacionAcademicaMapper;
        readonly IFormacionAcademicaService formacionAcademicaService;
        readonly INivelEstudioMapper nivelEstudioMapper;
        readonly IOrganizacionMapper organizacionMapper;
        readonly IPaisMapper paisMapper;
        readonly ISectorMapper sectorMapper;
        readonly ISubdisciplinaMapper subdisciplinaMapper;
        readonly IEstatusFormacionAcademicaMapper estatusFormacionAcademicaMapper;

        public FormacionAcademicaController(IFormacionAcademicaService formacionAcademicaService,
                                            IFormacionAcademicaMapper formacionAcademicaMapper,
                                            ICatalogoService catalogoService, IUsuarioService usuarioService,
                                            INivelEstudioMapper nivelEstudioMapper, IPaisMapper paisMapper,
                                            IEstadoPaisMapper estadoPaisMapper, ISectorMapper sectorMapper,
                                            IOrganizacionMapper organizacionMapper, IAreaMapper areaMapper,
                                            IDisciplinaMapper disciplinaMapper, ISubdisciplinaMapper subdisciplinaMapper,
                                            IEstatusFormacionAcademicaMapper estatusFormacionAcademicaMapper,
                                            ISearchService searchService)
            : base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.estatusFormacionAcademicaMapper = estatusFormacionAcademicaMapper;
            this.formacionAcademicaService = formacionAcademicaService;
            this.formacionAcademicaMapper = formacionAcademicaMapper;
            this.nivelEstudioMapper = nivelEstudioMapper;
            this.paisMapper = paisMapper;
            this.estadoPaisMapper = estadoPaisMapper;
            this.sectorMapper = sectorMapper;
            this.organizacionMapper = organizacionMapper;
            this.areaMapper = areaMapper;
            this.disciplinaMapper = disciplinaMapper;
            this.subdisciplinaMapper = subdisciplinaMapper;
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index()
        {
            var data = CreateViewDataWithTitle(Title.Index);
            var formacionAcademicas = new FormacionAcademica[] { };

            if (User.IsInRole("Investigadores"))
                formacionAcademicas = formacionAcademicaService.GetAllFormacionAcademicas(CurrentUser());
            if (User.IsInRole("DGAA"))
                formacionAcademicas = formacionAcademicaService.GetAllFormacionAcademicas();

            data.List = formacionAcademicaMapper.Map(formacionAcademicas);

            return View(data);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {
            var data = CreateViewDataWithTitle(Title.New);
            data.Form = SetupNewForm();
            ViewData["Pais"] = (from p in data.Form.Paises where p.Nombre == "M�xico" select p.Id).FirstOrDefault();
            return View(data);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var formacionAcademica = formacionAcademicaService.GetFormacionAcademicaById(id);

            if (formacionAcademica == null)
                return RedirectToIndex("no ha sido encontrado", true);
            if (formacionAcademica.Usuario.Id != CurrentUser().Id)
                return RedirectToIndex("no lo puede modificar", true);

            var formacionAcademicaForm = formacionAcademicaMapper.Map(formacionAcademica);

            data.Form = SetupNewForm(formacionAcademicaForm);

            FormSetCombos(data.Form);

            ViewData.Model = data;
            return View();
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var formacionAcademica = formacionAcademicaService.GetFormacionAcademicaById(id);
            data.Form = formacionAcademicaMapper.Map(formacionAcademica);

            ViewData.Model = data;
            return View();
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(FormacionAcademicaForm form)
        {
            var formacionAcademica = formacionAcademicaMapper.Map(form, CurrentUser());

            if (!IsValidateModel(formacionAcademica, form, Title.New, "FormacionAcademica"))
            {
                ((GenericViewData<FormacionAcademicaForm>) ViewData.Model).Form = SetupNewForm();
                return ViewNew();
            }

            formacionAcademicaService.SaveFormacionAcademica(formacionAcademica);

            return
                RedirectToIndex(String.Format("Formaci�n Acad�mica {0} ha sido creada", formacionAcademica.TituloGrado));
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(FormacionAcademicaForm form)
        {
            var formacionAcademica = formacionAcademicaMapper.Map(form, CurrentUser());

            formacionAcademica.ModificadoPor = CurrentUser();

            if (!IsValidateModel(formacionAcademica, form, Title.Edit))
            {
                var formacionAcademicaForm = formacionAcademicaMapper.Map(formacionAcademica);

                ((GenericViewData<FormacionAcademicaForm>) ViewData.Model).Form = SetupNewForm(formacionAcademicaForm);
                FormSetCombos(formacionAcademicaForm);

                return ViewEdit();
            }

            formacionAcademicaService.SaveFormacionAcademica(formacionAcademica);

            return
                RedirectToIndex(String.Format("Formaci�n Acad�mica {0} ha sido modificada",
                                              formacionAcademica.TituloGrado));
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var formacionAcademica = formacionAcademicaService.GetFormacionAcademicaById(id);

            if (formacionAcademica.Usuario.Id != CurrentUser().Id)
                return RedirectToIndex("no lo puede modificar", true);

            formacionAcademica.Activo = true;
            formacionAcademica.ModificadoPor = CurrentUser();
            formacionAcademicaService.SaveFormacionAcademica(formacionAcademica);

            var form = formacionAcademicaMapper.Map(formacionAcademica);

            return Rjs(form);
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var formacionAcademica = formacionAcademicaService.GetFormacionAcademicaById(id);

            if (formacionAcademica.Usuario.Id != CurrentUser().Id)
                return RedirectToIndex("no lo puede modificar", true);

            formacionAcademica.Activo = false;
            formacionAcademica.ModificadoPor = CurrentUser();
            formacionAcademicaService.SaveFormacionAcademica(formacionAcademica);

            var form = formacionAcademicaMapper.Map(formacionAcademica);

            return Rjs("Activate", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult ChangePais(int select)
        {
            var list = new List<EstadoPaisForm> { new EstadoPaisForm { Id = 0, Nombre = "Seleccione ..." } };

            list.AddRange(estadoPaisMapper.Map(catalogoService.GetEstadoPaisesByPaisId(select)));

            var form = new FormacionAcademicaForm
                           {
                               EstadosPaises = list.ToArray()
                           };

            return Rjs("ChangePais", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult ChangeSector(int select)
        {
            var list = new List<OrganizacionForm> { new OrganizacionForm { Id = 0, Nombre = "Seleccione ..." } };

            list.AddRange(organizacionMapper.Map(catalogoService.GetOrganizacionesBySectorId(select)));

            var form = new FormacionAcademicaForm
                           {
                               Organizaciones = list.ToArray()
                           };

            return Rjs("ChangeSector", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult ChangeArea(int select)
        {
            var list = new List<DisciplinaForm> { new DisciplinaForm { Id = 0, Nombre = "Seleccione ..." } };

            list.AddRange(disciplinaMapper.Map(catalogoService.GetDisciplinasByAreaId(select)));

            var form = new FormacionAcademicaForm
                           {
                               Disciplinas = list.ToArray(),
                               Subdisciplinas = new[] {new SubdisciplinaForm {Id = 0, Nombre = "Seleccione ..."}}
                           };

            return Rjs("ChangeArea", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult ChangeDisciplina(int select)
        {
            var list = new List<SubdisciplinaForm> { new SubdisciplinaForm { Id = 0, Nombre = "Seleccione ..." } };

            list.AddRange(subdisciplinaMapper.Map(catalogoService.GetSubdisciplinasByDisciplinaId(select)));

            var form = new FormacionAcademicaForm
                           {
                               Subdisciplinas = list.ToArray()
                           };

            return Rjs("ChangeDisciplina", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<FormacionAcademica>(x => x.TituloGrado, q);
            return Content(data);
        }

        FormacionAcademicaForm SetupNewForm()
        {
            return SetupNewForm(null);
        }

        FormacionAcademicaForm SetupNewForm(FormacionAcademicaForm form)
        {
            form = form ?? new FormacionAcademicaForm();

            form.NivelesEstudios = nivelEstudioMapper.Map(catalogoService.GetActiveNivelEstudios());
            form.EstatusFormacionAcademicas = estatusFormacionAcademicaMapper.Map(catalogoService.GetActiveEstatusFormacionAcademicas());

            form.Paises = paisMapper.Map(catalogoService.GetActivePaises());
            if (form.Id == 0)
            {
                var pais = (from p in form.Paises where p.Nombre == "M�xico" select p.Id).FirstOrDefault();
                form.EstadosPaises = estadoPaisMapper.Map(catalogoService.GetEstadoPaisesByPaisId(pais));
            }
            else
                form.EstadosPaises = estadoPaisMapper.Map(catalogoService.GetEstadoPaisesByPaisId(form.PaisId));

            form.Sectores = sectorMapper.Map(catalogoService.GetActiveSectores());
            form.Organizaciones = organizacionMapper.Map(catalogoService.GetOrganizacionesBySectorId(form.SectorId));

            form.Areas = areaMapper.Map(catalogoService.GetActiveAreas());
            form.Disciplinas = disciplinaMapper.Map(catalogoService.GetDisciplinasByAreaId(form.AreaId));
            form.Subdisciplinas = subdisciplinaMapper.Map(catalogoService.GetSubdisciplinasByDisciplinaId(form.DisciplinaId));

            return form;
        }

        void FormSetCombos(FormacionAcademicaForm form)
        {
            ViewData["NivelEstudio"] = form.NivelEstudioId;
            ViewData["Estatus"] = form.EstatusId;
            ViewData["Pais"] = form.PaisId;
            ViewData["EstadoPais"] = form.EstadoPaisId;

            ViewData["Sector"] = form.SectorId;
            ViewData["Organizacion"] = form.OrganizacionId;
            ViewData["Area"] = form.AreaId;
            ViewData["Disciplina"] = form.DisciplinaId;
            ViewData["Subdisciplina"] = form.SubdisciplinaId;
        }
    }
}

