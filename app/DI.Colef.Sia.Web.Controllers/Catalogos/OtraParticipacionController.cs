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
    public class OtraParticipacionController : BaseController<OtraParticipacion, OtraParticipacionForm>
    {
        readonly ICatalogoService catalogoService;
        readonly IOtraParticipacionMapper otraParticipacionMapper;

        public OtraParticipacionController(IUsuarioService usuarioService, ICatalogoService catalogoService,
                                           IOtraParticipacionMapper otraParticipacionMapper,
                                           ISearchService searchService)
            : base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.otraParticipacionMapper = otraParticipacionMapper;
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index() 
        {
            var data = CreateViewDataWithTitle(Title.Index);

            var otraParticipacions = catalogoService.GetAllOtraParticipaciones();
            data.List = otraParticipacionMapper.Map(otraParticipacions);

            return View(data);
        }
        
        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {			
            var data = CreateViewDataWithTitle(Title.New);
            data.Form = new OtraParticipacionForm();
			
            return View(data);
        }
        
        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var otraParticipacion = catalogoService.GetOtraParticipacionById(id);
            data.Form = otraParticipacionMapper.Map(otraParticipacion);

            ViewData.Model = data;
            return View();
        }

        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(OtraParticipacionForm form)
        {
        
            var otraParticipacion = otraParticipacionMapper.Map(form);
            
            otraParticipacion.CreadoPor = CurrentUser();
            otraParticipacion.ModificadoPor = CurrentUser();

            if(!IsValidateModel(otraParticipacion, form, Title.New))
                return ViewNew();

            catalogoService.SaveOtraParticipacion(otraParticipacion);

            return RedirectToIndex(String.Format("Otra Participación {0} ha sido creada", otraParticipacion.Nombre));
        }
        
        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(OtraParticipacionForm form)
        {
        
            var otraParticipacion = otraParticipacionMapper.Map(form);
            
            otraParticipacion.ModificadoPor = CurrentUser();

            if (!IsValidateModel(otraParticipacion, form, Title.Edit))
                return ViewEdit();

            catalogoService.SaveOtraParticipacion(otraParticipacion);

            return RedirectToIndex(String.Format("Otra Participación {0} ha sido modificada", otraParticipacion.Nombre));
        }
        
        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var otraParticipacion = catalogoService.GetOtraParticipacionById(id);
            otraParticipacion.Activo = true;
            otraParticipacion.ModificadoPor = CurrentUser();
            catalogoService.SaveOtraParticipacion(otraParticipacion);

            var form = otraParticipacionMapper.Map(otraParticipacion);
            
            return Rjs(form);
        }
        
        [Authorize(Roles = "DGAA")]
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var otraParticipacion = catalogoService.GetOtraParticipacionById(id);
            otraParticipacion.Activo = false;
            otraParticipacion.ModificadoPor = CurrentUser();
            catalogoService.SaveOtraParticipacion(otraParticipacion);

            var form = otraParticipacionMapper.Map(otraParticipacion);
            
            return Rjs("Activate", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<OtraParticipacion>(x => x.Nombre, q);
            return Content(data);
        }
    }
}