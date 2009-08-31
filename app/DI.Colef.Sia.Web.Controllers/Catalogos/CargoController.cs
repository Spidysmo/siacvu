using System;
using System.Web.Mvc;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using SharpArch.Web.NHibernate;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Catalogos
{
    public class CargoController : BaseController<Cargo, CargoForm>
    {
        readonly ICatalogoService catalogoService;
        readonly ICargoMapper cargoMapper;

        public CargoController(IUsuarioService usuarioService, ICatalogoService catalogoService, ICargoMapper cargoMapper,
                               ISearchService searchService)
            : base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.cargoMapper = cargoMapper;
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index() 
        {
            var data = CreateViewDataWithTitle(Title.Index);
            var cargos = catalogoService.GetAllCargos();
            data.List = cargoMapper.Map(cargos);

            return View(data);
        }
        
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {
            var data = CreateViewDataWithTitle(Title.New);
            data.Form = new CargoForm();

            return View(data);
        }
        
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var cargo = catalogoService.GetCargoById(id);
            data.Form = cargoMapper.Map(cargo);

            ViewData.Model = data;
            return View();
        }
        
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(CargoForm form)
        {
            var cargo = cargoMapper.Map(form);

            cargo.CreadorPor = CurrentUser();
            cargo.ModificadoPor = CurrentUser();

            if (!IsValidateModel(cargo, form, Title.New))
                return ViewNew();

            catalogoService.SaveCargo(cargo);

            return RedirectToIndex(String.Format("Cargo {0} ha sido creado", cargo.Nombre));
        }

        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(CargoForm form)
        {
            var cargo = cargoMapper.Map(form);

            cargo.ModificadoPor = CurrentUser();

            if (!IsValidateModel(cargo, form, Title.Edit))
                return ViewEdit();

            catalogoService.SaveCargo(cargo);

            return RedirectToIndex(String.Format("Cargo {0} ha sido modificado", cargo.Nombre));
        }

        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var cargo = catalogoService.GetCargoById(id);
            cargo.Activo = true;
            cargo.ModificadoPor = CurrentUser();
            catalogoService.SaveCargo(cargo);

            var form = cargoMapper.Map(cargo);
            
            return Rjs(form);
        }

        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var cargo = catalogoService.GetCargoById(id);
            cargo.Activo = false;
            cargo.ModificadoPor = CurrentUser();
            catalogoService.SaveCargo(cargo);

            var form = cargoMapper.Map(cargo);
            
            return Rjs("Activate", form);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<Cargo>(x => x.Nombre, q);
            return Content(data);
        }
    }
}