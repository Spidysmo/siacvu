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
    public class ResponsableExternoController : BaseController<ResponsableExterno, ResponsableExternoForm>
    {
        readonly ICatalogoService catalogoService;
        readonly IResponsableExternoMapper responsableExternoMapper;

        public ResponsableExternoController(IUsuarioService usuarioService, ICatalogoService catalogoService,
                                            IResponsableExternoMapper responsableExternoMapper,
                                            ISearchService searchService)
            : base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.responsableExternoMapper = responsableExternoMapper;
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index()
        {
            var data = CreateViewDataWithTitle(Title.Index);

            var responsableExternos = catalogoService.GetAllResponsableExternos();
            data.List = responsableExternoMapper.Map(responsableExternos);

            return View(data);
        }

        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {
            var data = CreateViewDataWithTitle(Title.New);
            data.Form = new ResponsableExternoForm();

            return View(data);
        }

        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var responsableExterno = catalogoService.GetResponsableExternoById(id);
            data.Form = responsableExternoMapper.Map(responsableExterno);

            ViewData.Model = data;
            return View();
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(ResponsableExternoForm form)
        {
            var responsableExterno = responsableExternoMapper.Map(form);

            responsableExterno.CreadorPor = CurrentUser();
            responsableExterno.ModificadoPor = CurrentUser();

            if (!IsValidateModel(responsableExterno, form, Title.New))
                return ViewNew();

            catalogoService.SaveResponsableExterno(responsableExterno);

            return RedirectToIndex(String.Format("Responsable Externo {0} ha sido creado", responsableExterno.Nombre));
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(ResponsableExternoForm form)
        {
            var responsableExterno = responsableExternoMapper.Map(form);

            responsableExterno.ModificadoPor = CurrentUser();

            if (!IsValidateModel(responsableExterno, form, Title.Edit))
                return ViewEdit();

            catalogoService.SaveResponsableExterno(responsableExterno);

            return RedirectToIndex(String.Format("Responsable Externo {0} ha sido modificado", responsableExterno.Nombre));
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var responsableExterno = catalogoService.GetResponsableExternoById(id);
            responsableExterno.Activo = true;
            responsableExterno.ModificadoPor = CurrentUser();
            catalogoService.SaveResponsableExterno(responsableExterno);

            var form = responsableExternoMapper.Map(responsableExterno);

            return Rjs(form);
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var responsableExterno = catalogoService.GetResponsableExternoById(id);
            responsableExterno.Activo = false;
            responsableExterno.ModificadoPor = CurrentUser();
            catalogoService.SaveResponsableExterno(responsableExterno);

            var form = responsableExternoMapper.Map(responsableExterno);

            return Rjs("Activate", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<ResponsableExterno>(x => x.Nombre, q);
            return Content(data);
        }
    }
}