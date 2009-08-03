using System;
using System.Web.Mvc;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using SharpArch.Web.NHibernate;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers
{
    [HandleError]
    public class EstadoController : BaseController<Estado, EstadoForm>
    {
		readonly ICatalogoService catalogoService;
        readonly IEstadoMapper estadoMapper;

        public EstadoController(IUsuarioService usuarioService, ICatalogoService catalogoService, IEstadoMapper estadoMapper)
            : base(usuarioService)
        {
            this.catalogoService = catalogoService;
            this.estadoMapper = estadoMapper;
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index() 
        {
			var data = CreateViewDataWithTitle(Title.Index);

            var estados = catalogoService.GetAllEstados();
            data.List = estadoMapper.Map(estados);

            return View(data);
        }
        
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {			
			var data = CreateViewDataWithTitle(Title.New);
            data.Form = new EstadoForm();
			
			return View(data);
        }
        
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var estado = catalogoService.GetEstadoById(id);
            data.Form = estadoMapper.Map(estado);

			ViewData.Model = data;
            return View();
        }
        
        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(EstadoForm form)
        {
        
            var estado = estadoMapper.Map(form);

            if(!IsValidateModel(estado, form, Title.New))
                return ViewNew();

            catalogoService.SaveEstado(estado);

            return RedirectToIndex(String.Format("{0} ha sido creado", estado.Nombre));
        }
        
        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(EstadoForm form)
        {
        
            var estado = estadoMapper.Map(form);

            if (!IsValidateModel(estado, form, Title.Edit))
                return ViewEdit();

            catalogoService.SaveEstado(estado);

            return RedirectToIndex(String.Format("{0} ha sido modificado", estado.Nombre));
        }
        
        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var estado = catalogoService.GetEstadoById(id);
            estado.Activo = true;
            catalogoService.SaveEstado(estado);

            var form = estadoMapper.Map(estado);
            
            return Rjs(form);
        }
        
        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var estado = catalogoService.GetEstadoById(id);
            estado.Activo = false;
            catalogoService.SaveEstado(estado);

            var form = estadoMapper.Map(estado);
            
            return Rjs("Activate", form);
        }
    }
}
