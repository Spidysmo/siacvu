using System;
using System.Web.Mvc;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using SharpArch.Web.NHibernate;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Catalogos
{
    [HandleError]
    public class GradoAcademicoController : BaseController<GradoAcademico, GradoAcademicoForm>
    {
        readonly ICatalogoService catalogoService;
        readonly IGradoAcademicoMapper gradoAcademicoMapper;

        public GradoAcademicoController(IUsuarioService usuarioService, ICatalogoService catalogoService,
                                        IGradoAcademicoMapper gradoAcademicoMapper, ISearchService searchService)
            : base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.gradoAcademicoMapper = gradoAcademicoMapper;
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index()
        {
            var data = CreateViewDataWithTitle(Title.Index);
            var gradoAcademicos = catalogoService.GetAllGradoAcademicos();
            data.List = gradoAcademicoMapper.Map(gradoAcademicos);

            return View(data);
        }

        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {
            var data = CreateViewDataWithTitle(Title.New);
            data.Form = new GradoAcademicoForm();

            return View(data);
        }

        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var gradoAcademico = catalogoService.GetGradoAcademicoById(id);
            data.Form = gradoAcademicoMapper.Map(gradoAcademico);

            ViewData.Model = data;
            return View();
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(GradoAcademicoForm form)
        {
            var gradoAcademico = gradoAcademicoMapper.Map(form);

            gradoAcademico.CreadorPor = CurrentUser();
            gradoAcademico.ModificadoPor = CurrentUser();

            if (!IsValidateModel(gradoAcademico, form, Title.New))
                return ViewNew();

            catalogoService.SaveGradoAcademico(gradoAcademico);

            return RedirectToIndex(String.Format("Grado Acad�mico {0} ha sido creado", gradoAcademico.Nombre));
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(GradoAcademicoForm form)
        {
            var gradoAcademico = gradoAcademicoMapper.Map(form);

            gradoAcademico.ModificadoPor = CurrentUser();

            if (!IsValidateModel(gradoAcademico, form, Title.Edit))
                return ViewEdit();

            catalogoService.SaveGradoAcademico(gradoAcademico);

            return RedirectToIndex(String.Format("Grado Acad�mico {0} ha sido modificado", gradoAcademico.Nombre));
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var gradoAcademico = catalogoService.GetGradoAcademicoById(id);
            gradoAcademico.Activo = true;
            gradoAcademico.ModificadoPor = CurrentUser();
            catalogoService.SaveGradoAcademico(gradoAcademico);

            var form = gradoAcademicoMapper.Map(gradoAcademico);

            return Rjs(form);
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var gradoAcademico = catalogoService.GetGradoAcademicoById(id);
            gradoAcademico.Activo = false;
            gradoAcademico.ModificadoPor = CurrentUser();
            catalogoService.SaveGradoAcademico(gradoAcademico);

            var form = gradoAcademicoMapper.Map(gradoAcademico);

            return Rjs("Activate", form);
        }

        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<GradoAcademico>(x => x.Nombre, q);
            return Content(data);
        }
    }
}