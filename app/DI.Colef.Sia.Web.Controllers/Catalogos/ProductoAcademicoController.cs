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
    public class ProductoAcademicoController : BaseController<ProductoAcademico, ProductoAcademicoForm>
    {
        readonly ICatalogoService catalogoService;
        readonly IProductoAcademicoMapper productoAcademicoMapper;
    
        public ProductoAcademicoController(IUsuarioService usuarioService,
                                           ICatalogoService catalogoService,
                                           ISearchService searchService,
                                           IProductoAcademicoMapper productoAcademicoMapper)
            : base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.productoAcademicoMapper = productoAcademicoMapper;
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index() 
        {
            var data = CreateViewDataWithTitle(Title.Index);

            var productoAcademicos = catalogoService.GetAllProductoAcademicos();
            data.List = productoAcademicoMapper.Map(productoAcademicos);

            return View(data);
        }
        
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {			
            var data = CreateViewDataWithTitle(Title.New);
            data.Form = new ProductoAcademicoForm();
			
            return View(data);
        }
        
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var productoAcademico = catalogoService.GetProductoAcademicoById(id);
            data.Form = productoAcademicoMapper.Map(productoAcademico);

            ViewData.Model = data;
            return View();
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var productoAcademico = catalogoService.GetProductoAcademicoById(id);
            data.Form = productoAcademicoMapper.Map(productoAcademico);
            
            ViewData.Model = data;
            return View();
        }
        
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(ProductoAcademicoForm form)
        {        
            var productoAcademico = productoAcademicoMapper.Map(form);
            
            productoAcademico.CreadorPor = CurrentUser();
            productoAcademico.ModificadoPor = CurrentUser();

            if(!IsValidateModel(productoAcademico, form, Title.New))
                return ViewNew();

            catalogoService.SaveProductoAcademico(productoAcademico);

            return RedirectToIndex(String.Format("{0} ha sido creado", productoAcademico.Nombre));
        }
        
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(ProductoAcademicoForm form)
        {        
            var productoAcademico = productoAcademicoMapper.Map(form);
            
            productoAcademico.ModificadoPor = CurrentUser();

            if (!IsValidateModel(productoAcademico, form, Title.Edit))
                return ViewEdit();

            catalogoService.SaveProductoAcademico(productoAcademico);

            return RedirectToIndex(String.Format("{0} ha sido modificado", productoAcademico.Nombre));
        }
        
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var productoAcademico = catalogoService.GetProductoAcademicoById(id);
            productoAcademico.Activo = true;
            productoAcademico.ModificadoPor = CurrentUser();
            catalogoService.SaveProductoAcademico(productoAcademico);

            var form = productoAcademicoMapper.Map(productoAcademico);
            
            return Rjs(form);
        }
        
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var productoAcademico = catalogoService.GetProductoAcademicoById(id);
            productoAcademico.Activo = false;
            productoAcademico.ModificadoPor = CurrentUser();
            catalogoService.SaveProductoAcademico(productoAcademico);

            var form = productoAcademicoMapper.Map(productoAcademico);
            
            return Rjs("Activate", form);
        }
    }
}