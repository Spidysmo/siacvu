using System;
using System.Web.Mvc;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData;
using SharpArch.Web.NHibernate;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Catalogos
{
    [HandleError]
    public class AreaController : BaseController<Area, AreaForm>
    {
        readonly IAreaMapper areaMapper;
        readonly IAreaTematicaMapper areaTematicaMapper;
        readonly ICatalogoService catalogoService;

        public AreaController(IUsuarioService usuarioService,
                              ICatalogoService catalogoService,
                              IAreaMapper areaMapper,
                              IAreaTematicaMapper areaTematicaMapper,
                              ISearchService searchService) : base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.areaTematicaMapper = areaTematicaMapper;
            this.areaMapper = areaMapper;
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index()
        {
            var data = CreateViewDataWithTitle(Title.Index);

            var areas = catalogoService.GetAllAreas();
            data.List = areaMapper.Map(areas);

            return View(data);
        }

        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {
            var data = CreateViewDataWithTitle(Title.New);
            data.Form = SetupNewForm();

            return View(data);
        }

        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var area = catalogoService.GetAreaById(id);
            var areaForm = areaMapper.Map(area);

            data.Form = SetupNewForm(areaForm);

            FormSetCombos(data.Form);

            ViewData.Model = data;
            return View();
        }
        
        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(AreaForm form)
        {
            var area = areaMapper.Map(form);

            area.CreadorPor = CurrentUser();
            area.ModificadoPor = CurrentUser();

            if (!IsValidateModel(area, form, Title.New))
            {
                var areaForm = areaMapper.Map(area);

                ((GenericViewData<AreaForm>)ViewData.Model).Form = SetupNewForm(areaForm);
                return ViewNew();
            }

            catalogoService.SaveArea(area);

            return RedirectToIndex(String.Format("�rea {0} ha sido creada", area.Nombre));
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(AreaForm form)
        {
            var area = areaMapper.Map(form);

            area.ModificadoPor = CurrentUser();

            if (!IsValidateModel(area, form, Title.Edit))
            {
                var areaForm = areaMapper.Map(area);

                ((GenericViewData<AreaForm>)ViewData.Model).Form = SetupNewForm(areaForm);
                FormSetCombos(areaForm);
                return ViewEdit();
            }

            catalogoService.SaveArea(area);

            return RedirectToIndex(String.Format("�rea {0} ha sido modificada", area.Nombre));
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var area = catalogoService.GetAreaById(id);
            area.Activo = true;
            area.ModificadoPor = CurrentUser();
            catalogoService.SaveArea(area);

            var form = areaMapper.Map(area);

            return Rjs(form);
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var area = catalogoService.GetAreaById(id);
            area.Activo = false;
            area.ModificadoPor = CurrentUser();
            catalogoService.SaveArea(area);

            var form = areaMapper.Map(area);

            return Rjs("Activate", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<Area>(x => x.Nombre, q);
            return Content(data);
        }

        AreaForm SetupNewForm()
        {
            return SetupNewForm(null);
        }

        AreaForm SetupNewForm(AreaForm form)
        {
            form = form ?? new AreaForm();

            form.AreasTematicas = areaTematicaMapper.Map(catalogoService.GetActiveAreaTematicas());

            return form;
        }

        private void FormSetCombos(AreaForm form)
        {
            ViewData["AreaTematica"] = form.AreaTematicaId;
        }
    }
}