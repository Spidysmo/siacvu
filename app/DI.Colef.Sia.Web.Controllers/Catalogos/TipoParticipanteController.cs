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
    public class TipoParticipanteController : BaseController<TipoParticipante, TipoParticipanteForm>
    {
		readonly ICatalogoService catalogoService;
        readonly ITipoParticipanteMapper tipoParticipanteMapper;

        public TipoParticipanteController(ICatalogoService catalogoService, ITipoParticipanteMapper tipoParticipanteMapper) 
        {
            this.catalogoService = catalogoService;
            this.tipoParticipanteMapper = tipoParticipanteMapper;
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index() 
        {
			var data = CreateViewDataWithTitle(Title.Index);

            var tipoParticipantes = catalogoService.GetAllTipoParticipantes();
            data.List = tipoParticipanteMapper.Map(tipoParticipantes);

            return View(data);
        }
        
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {			
			var data = CreateViewDataWithTitle(Title.New);
            data.Form = new TipoParticipanteForm();
			
			return View(data);
        }
        
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var tipoParticipante = catalogoService.GetTipoParticipanteById(id);
            data.Form = tipoParticipanteMapper.Map(tipoParticipante);

			ViewData.Model = data;
            return View();
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var tipoParticipante = catalogoService.GetTipoParticipanteById(id);
            data.Form = tipoParticipanteMapper.Map(tipoParticipante);
            
            ViewData.Model = data;
            return View();
        }
        
        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(TipoParticipanteForm form)
        {
        
            var tipoParticipante = tipoParticipanteMapper.Map(form);

            if(!IsValidateModel(tipoParticipante, form, Title.New))
                return ViewNew();

            catalogoService.SaveTipoParticipante(tipoParticipante);

            return RedirectToIndex(String.Format("{0} ha sido creado", tipoParticipante.Nombre));
        }
        
        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(TipoParticipanteForm form)
        {
        
            var tipoParticipante = tipoParticipanteMapper.Map(form);

            if (!IsValidateModel(tipoParticipante, form, Title.Edit))
                return ViewEdit();

            catalogoService.SaveTipoParticipante(tipoParticipante);

            return RedirectToIndex(String.Format("{0} ha sido modificado", tipoParticipante.Nombre));
        }
        
        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var tipoParticipante = catalogoService.GetTipoParticipanteById(id);
            tipoParticipante.Activo = true;
            catalogoService.SaveTipoParticipante(tipoParticipante);

            var form = tipoParticipanteMapper.Map(tipoParticipante);
            
            return Rjs(form);
        }
        
        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var tipoParticipante = catalogoService.GetTipoParticipanteById(id);
            tipoParticipante.Activo = false;
            catalogoService.SaveTipoParticipante(tipoParticipante);

            var form = tipoParticipanteMapper.Map(tipoParticipante);
            
            return Rjs("Activate", form);
        }
    }
}
