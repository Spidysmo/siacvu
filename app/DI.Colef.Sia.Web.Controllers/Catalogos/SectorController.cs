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
    public class SectorController : BaseController<Sector, SectorForm>
    {
        readonly ICatalogoService catalogoService;
        readonly ISectorMapper sectorMapper;

        public SectorController(IUsuarioService usuarioService, ICatalogoService catalogoService,
                                ISectorMapper sectorMapper, ISearchService searchService)
            : base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.sectorMapper = sectorMapper;
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index()
        {
            var data = CreateViewDataWithTitle(Title.Index);

            var sectors = catalogoService.GetAllSectores();
            data.List = sectorMapper.Map(sectors);

            return View(data);
        }

        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {
            var data = CreateViewDataWithTitle(Title.New);
            data.Form = new SectorForm();

            return View(data);
        }

        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var sector = catalogoService.GetSectorById(id);
            data.Form = sectorMapper.Map(sector);

            ViewData.Model = data;
            return View();
        }
        
        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(SectorForm form)
        {
            var sector = sectorMapper.Map(form);

            sector.CreadorPor = CurrentUser();
            sector.ModificadoPor = CurrentUser();

            if (!IsValidateModel(sector, form, Title.New))
                return ViewNew();

            catalogoService.SaveSector(sector);

            return RedirectToIndex(String.Format("Sector {0} ha sido creado", sector.Nombre));
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(SectorForm form)
        {
            var sector = sectorMapper.Map(form);

            sector.ModificadoPor = CurrentUser();

            if (!IsValidateModel(sector, form, Title.Edit))
                return ViewEdit();

            catalogoService.SaveSector(sector);

            return RedirectToIndex(String.Format("Sector {0} ha sido modificado", sector.Nombre));
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var sector = catalogoService.GetSectorById(id);
            sector.Activo = true;
            sector.ModificadoPor = CurrentUser();
            catalogoService.SaveSector(sector);

            var form = sectorMapper.Map(sector);

            return Rjs(form);
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var sector = catalogoService.GetSectorById(id);
            sector.Activo = false;
            sector.ModificadoPor = CurrentUser();
            catalogoService.SaveSector(sector);

            var form = sectorMapper.Map(sector);

            return Rjs("Activate", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<Sector>(x => x.Nombre, q);
            return Content(data);
        }
    }
}