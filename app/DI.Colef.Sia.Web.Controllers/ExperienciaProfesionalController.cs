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
    public class ExperienciaProfesionalController : BaseController<ExperienciaProfesional, ExperienciaProfesionalForm>
    {
        readonly IExperienciaProfesionalService experienciaProfesionalService;
        readonly IExperienciaProfesionalMapper experienciaProfesionalMapper;
        readonly ICatalogoService catalogoService;
        readonly INivelMapper nivelMapper;
        readonly IPaisMapper paisMapper;
        readonly ISubdisciplinaMapper subdisciplinaMapper;
        readonly IClaseMapper claseMapper;

        public ExperienciaProfesionalController(IExperienciaProfesionalService experienciaProfesionalService,
                                                IExperienciaProfesionalMapper experienciaProfesionalMapper,
                                                ICatalogoService catalogoService,
                                                IUsuarioService usuarioService, 
                                                INivelMapper nivelMapper, 
                                                IPaisMapper paisMapper,
                                                ISubdisciplinaMapper subdisciplinaMapper, 
                                                IClaseMapper claseMapper,
                                                ISearchService searchService
            ): base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.experienciaProfesionalService = experienciaProfesionalService;
            this.experienciaProfesionalMapper = experienciaProfesionalMapper;
            this.nivelMapper = nivelMapper;
            this.paisMapper = paisMapper;
            this.subdisciplinaMapper = subdisciplinaMapper;
            this.claseMapper = claseMapper;
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index()
        {
            var data = CreateViewDataWithTitle(Title.Index);
            var experienciaProfesionals = new ExperienciaProfesional[] { };

            if (User.IsInRole("Investigadores"))
                experienciaProfesionals = experienciaProfesionalService.GetAllExperienciasProfesionales(CurrentUser());
            if (User.IsInRole("DGAA"))
                experienciaProfesionals = experienciaProfesionalService.GetAllExperienciasProfesionales();

            data.List = experienciaProfesionalMapper.Map(experienciaProfesionals);

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

            return View(data);
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var experienciaProfesional = experienciaProfesionalService.GetExperienciaProfesionalById(id);

            if (experienciaProfesional == null)
                return RedirectToIndex("no ha sido encontrado", true);
            if (experienciaProfesional.Usuario.Id != CurrentUser().Id)
                return RedirectToIndex("no lo puede modificar", true);

            var experienciaProfesionalForm = experienciaProfesionalMapper.Map(experienciaProfesional);

            data.Form = SetupNewForm(experienciaProfesionalForm);

            FormSetCombos(data.Form);

            ViewData.Model = data;
            return View();
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var experienciaProfesional = experienciaProfesionalService.GetExperienciaProfesionalById(id);
            var experienciaProfesionalForm = experienciaProfesionalMapper.Map(experienciaProfesional);

            data.Form = SetupShowForm(experienciaProfesionalForm);

            ViewData.Model = data;
            return View();
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(ExperienciaProfesionalForm form)
        {
            var experienciaProfesional = experienciaProfesionalMapper.Map(form, CurrentUser());

            if (!IsValidateModel(experienciaProfesional, form, Title.New, "ExperienciaProfesional"))
            {
                ((GenericViewData<ExperienciaProfesionalForm>)ViewData.Model).Form = SetupNewForm();
                return ViewNew();
            }

            experienciaProfesionalService.SaveExperienciaProfesional(experienciaProfesional);

            return RedirectToIndex(String.Format("Experiencia profesional {0} ha sido creada", experienciaProfesional.Nombramiento));
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(ExperienciaProfesionalForm form)
        {
            var experienciaProfesional = experienciaProfesionalMapper.Map(form, CurrentUser());

            if (!IsValidateModel(experienciaProfesional, form, Title.Edit))
            {
                var experienciaProfesionalForm = experienciaProfesionalMapper.Map(experienciaProfesional);

                ((GenericViewData<ExperienciaProfesionalForm>)ViewData.Model).Form = SetupNewForm(experienciaProfesionalForm);
                FormSetCombos(experienciaProfesionalForm);
                return ViewEdit();
            }

            experienciaProfesionalService.SaveExperienciaProfesional(experienciaProfesional);

            return RedirectToIndex(String.Format("Experiencia profesional {0} ha sido modificada", experienciaProfesional.Nombramiento));
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<ExperienciaProfesional>(x => x.Nombramiento, q);
            return Content(data);
        }

        ExperienciaProfesionalForm SetupNewForm()
        {
            return SetupNewForm(null);
        }

        ExperienciaProfesionalForm SetupNewForm(ExperienciaProfesionalForm form)
        {
            form = form ?? new ExperienciaProfesionalForm();

            //Lista de Catalogos Pendientes
            form.Paises = paisMapper.Map(catalogoService.GetActivePaises());
            form.Niveles2 = nivelMapper.Map(catalogoService.GetActiveNiveles());
            form.Subdisciplinas = subdisciplinaMapper.Map(catalogoService.GetActiveSubdisciplinas());
            form.Clases = claseMapper.Map(catalogoService.GetActiveClases());

            return form;
        }

        private void FormSetCombos(ExperienciaProfesionalForm form)
        {
            ViewData["Nivel2Id"] = form.Nivel2Id;
            ViewData["Pais"] = form.PaisId;
            ViewData["SubdisciplinaId"] = form.SubdisciplinaId;
            ViewData["ClaseId"] = form.ClaseId;
        }

        private ExperienciaProfesionalForm SetupShowForm(ExperienciaProfesionalForm form)
        {
            form = form ?? new ExperienciaProfesionalForm();

            form.ShowFields = new ShowFieldsForm
            {
                SubdisciplinaNombre = form.Subdisciplina.Nombre,
                SubdisciplinaDisciplinaNombre = form.Subdisciplina.DisciplinaNombre,
                SubdisciplinaDisciplinaAreaNombre = form.Subdisciplina.DisciplinaAreaNombre,

                Nivel2Nombre = form.Nivel2.Nombre,
                Nivel2OrganizacionNombre = form.Nivel2.OrganizacionNombre,
                Nivel2OrganizacionSectorNombre = form.Nivel2.OrganizacionSectorNombre,

                ClaseNombre = form.Clase.Nombre,
                ClaseRamaNombre = form.Clase.RamaNombre,
                ClaseRamaSectorEconomicoNombre = form.Clase.RamaSectorNombre
            };

            return form;
        }
    }
}