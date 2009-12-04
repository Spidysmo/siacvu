using System;
using System.Web.Mvc;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Catalogos
{
    [HandleError]
    public class ImpactoPoliticaPublicaController : BaseController<ImpactoPoliticaPublica, ImpactoPoliticaPublicaForm>
    {
        readonly ICatalogoService catalogoService;
        readonly IImpactoPoliticaPublicaMapper impactoPoliticaPublicaMapper;
    
        public ImpactoPoliticaPublicaController(IUsuarioService usuarioService,
                                                ICatalogoService catalogoService,
                                                ISearchService searchService,
                                                IImpactoPoliticaPublicaMapper impactoPoliticaPublicaMapper) 
            : base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.impactoPoliticaPublicaMapper = impactoPoliticaPublicaMapper;
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index() 
        {
            var data = CreateViewDataWithTitle(Title.Index);

            var impactoPoliticaPublicas = catalogoService.GetAllImpactoPoliticaPublicas();
            data.List = impactoPoliticaPublicaMapper.Map(impactoPoliticaPublicas);

            return View(data);
        }

        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {			
            var data = CreateViewDataWithTitle(Title.New);
            data.Form = new ImpactoPoliticaPublicaForm();
			
            return View(data);
        }

        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var impactoPoliticaPublica = catalogoService.GetImpactoPoliticaPublicaById(id);
            data.Form = impactoPoliticaPublicaMapper.Map(impactoPoliticaPublica);

            ViewData.Model = data;
            return View();
        }
        
        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(ImpactoPoliticaPublicaForm form)
        {
        
            var impactoPoliticaPublica = impactoPoliticaPublicaMapper.Map(form);
            
            impactoPoliticaPublica.CreadoPor = CurrentUser();
            impactoPoliticaPublica.ModificadoPor = CurrentUser();

            if(!IsValidateModel(impactoPoliticaPublica, form, Title.New))
                return ViewNew();

            catalogoService.SaveImpactoPoliticaPublica(impactoPoliticaPublica);

            return RedirectToIndex(String.Format("Impacto de pol�tica p�blica {0} ha sido creado", impactoPoliticaPublica.Nombre));
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(ImpactoPoliticaPublicaForm form)
        {
        
            var impactoPoliticaPublica = impactoPoliticaPublicaMapper.Map(form);
            
            impactoPoliticaPublica.ModificadoPor = CurrentUser();

            if (!IsValidateModel(impactoPoliticaPublica, form, Title.Edit))
                return ViewEdit();

            catalogoService.SaveImpactoPoliticaPublica(impactoPoliticaPublica);

            return RedirectToIndex(String.Format("Impacto de pol�tica p�blica {0} ha sido modificado", impactoPoliticaPublica.Nombre));
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var impactoPoliticaPublica = catalogoService.GetImpactoPoliticaPublicaById(id);
            impactoPoliticaPublica.Activo = true;
            impactoPoliticaPublica.ModificadoPor = CurrentUser();
            catalogoService.SaveImpactoPoliticaPublica(impactoPoliticaPublica);

            var form = impactoPoliticaPublicaMapper.Map(impactoPoliticaPublica);
            
            return Rjs(form);
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var impactoPoliticaPublica = catalogoService.GetImpactoPoliticaPublicaById(id);
            impactoPoliticaPublica.Activo = false;
            impactoPoliticaPublica.ModificadoPor = CurrentUser();
            catalogoService.SaveImpactoPoliticaPublica(impactoPoliticaPublica);

            var form = impactoPoliticaPublicaMapper.Map(impactoPoliticaPublica);
            
            return Rjs("Activate", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<ImpactoPoliticaPublica>(x => x.Nombre, q);
            return Content(data);
        }
    }
}