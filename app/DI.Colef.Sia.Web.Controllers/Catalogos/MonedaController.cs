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
    public class MonedaController : BaseController<Moneda, MonedaForm>
    {
        readonly ICatalogoService catalogoService;
        readonly IMonedaMapper monedaMapper;
    
        public MonedaController(IUsuarioService usuarioService,
                                ICatalogoService catalogoService,
                                ISearchService searchService,
                                IMonedaMapper monedaMapper)
            : base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.monedaMapper = monedaMapper;
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index() 
        {
            var data = CreateViewDataWithTitle(Title.Index);

            var monedas = catalogoService.GetAllMonedas();
            data.List = monedaMapper.Map(monedas);

            return View(data);
        }
        
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {			
            var data = CreateViewDataWithTitle(Title.New);
            data.Form = new MonedaForm();
			
            return View(data);
        }
        
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var moneda = catalogoService.GetMonedaById(id);
            data.Form = monedaMapper.Map(moneda);

            ViewData.Model = data;
            return View();
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var moneda = catalogoService.GetMonedaById(id);
            data.Form = monedaMapper.Map(moneda);
            
            ViewData.Model = data;
            return View();
        }
        
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(MonedaForm form)
        {        
            var moneda = monedaMapper.Map(form);
            
            moneda.CreadorPor = CurrentUser();
            moneda.ModificadoPor = CurrentUser();

            if(!IsValidateModel(moneda, form, Title.New))
                return ViewNew();

            catalogoService.SaveMoneda(moneda);

            return RedirectToIndex(String.Format("{0} ha sido creado", moneda.Nombre));
        }
        
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(MonedaForm form)
        {
        
            var moneda = monedaMapper.Map(form);
            
            moneda.ModificadoPor = CurrentUser();

            if (!IsValidateModel(moneda, form, Title.Edit))
                return ViewEdit();

            catalogoService.SaveMoneda(moneda);

            return RedirectToIndex(String.Format("{0} ha sido modificado", moneda.Nombre));
        }
        
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var moneda = catalogoService.GetMonedaById(id);
            moneda.Activo = true;
            moneda.ModificadoPor = CurrentUser();
            catalogoService.SaveMoneda(moneda);

            var form = monedaMapper.Map(moneda);
            
            return Rjs(form);
        }
        
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var moneda = catalogoService.GetMonedaById(id);
            moneda.Activo = false;
            moneda.ModificadoPor = CurrentUser();
            catalogoService.SaveMoneda(moneda);

            var form = monedaMapper.Map(moneda);
            
            return Rjs("Activate", form);
        }
    }
}