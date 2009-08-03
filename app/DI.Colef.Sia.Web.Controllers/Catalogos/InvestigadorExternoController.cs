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
    public class InvestigadorExternoController : BaseController<InvestigadorExterno, InvestigadorExternoForm>
    {
		readonly ICatalogoService catalogoService;
        readonly IInvestigadorExternoMapper investigadorExternoMapper;

        public InvestigadorExternoController(IUsuarioService usuarioService, ICatalogoService catalogoService, IInvestigadorExternoMapper investigadorExternoMapper)
            : base(usuarioService)
        {
            this.catalogoService = catalogoService;
            this.investigadorExternoMapper = investigadorExternoMapper;
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index() 
        {
			var data = CreateViewDataWithTitle(Title.Index);

            var investigadorExternos = catalogoService.GetAllInvestigadorExternos();
            data.List = investigadorExternoMapper.Map(investigadorExternos);

            return View(data);
        }
        
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {			
			var data = CreateViewDataWithTitle(Title.New);
            data.Form = new InvestigadorExternoForm();
			
			return View(data);
        }
        
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var investigadorExterno = catalogoService.GetInvestigadorExternoById(id);
            data.Form = investigadorExternoMapper.Map(investigadorExterno);

			ViewData.Model = data;
            return View();
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var investigadorExterno = catalogoService.GetInvestigadorExternoById(id);
            data.Form = investigadorExternoMapper.Map(investigadorExterno);
            
            ViewData.Model = data;
            return View();
        }
        
        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(InvestigadorExternoForm form)
        {
        
            var investigadorExterno = investigadorExternoMapper.Map(form);

            if(!IsValidateModel(investigadorExterno, form, Title.New))
                return ViewNew();

            catalogoService.SaveInvestigadorExterno(investigadorExterno);

            return RedirectToIndex(String.Format("{0} ha sido creado", investigadorExterno.Nombre));
        }
        
        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(InvestigadorExternoForm form)
        {
        
            var investigadorExterno = investigadorExternoMapper.Map(form);

            if (!IsValidateModel(investigadorExterno, form, Title.Edit))
                return ViewEdit();

            catalogoService.SaveInvestigadorExterno(investigadorExterno);

            return RedirectToIndex(String.Format("{0} ha sido modificado", investigadorExterno.Nombre));
        }
        
        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var investigadorExterno = catalogoService.GetInvestigadorExternoById(id);
            investigadorExterno.Activo = true;
            catalogoService.SaveInvestigadorExterno(investigadorExterno);

            var form = investigadorExternoMapper.Map(investigadorExterno);
            
            return Rjs(form);
        }
        
        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var investigadorExterno = catalogoService.GetInvestigadorExternoById(id);
            investigadorExterno.Activo = false;
            catalogoService.SaveInvestigadorExterno(investigadorExterno);

            var form = investigadorExternoMapper.Map(investigadorExterno);
            
            return Rjs("Activate", form);
        }
    }
}
