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
    public class TipoDistincionController : BaseController<TipoDistincion, TipoDistincionForm>
    {
        readonly ICatalogoService catalogoService;
        readonly ITipoDistincionMapper tipoDistincionMapper;

        public TipoDistincionController(IUsuarioService usuarioService, ICatalogoService catalogoService,
                                        ITipoDistincionMapper tipoDistincionMapper, ISearchService searchService)
            : base(usuarioService, searchService)
        {
            this.catalogoService = catalogoService;
            this.tipoDistincionMapper = tipoDistincionMapper;
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index()
        {
            var data = CreateViewDataWithTitle(Title.Index);

            var tipoDistincions = catalogoService.GetAllTipoDistinciones();
            data.List = tipoDistincionMapper.Map(tipoDistincions);

            return View(data);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {
            var data = CreateViewDataWithTitle(Title.New);
            data.Form = new TipoDistincionForm();

            return View(data);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var tipoDistincion = catalogoService.GetTipoDistincionById(id);
            data.Form = tipoDistincionMapper.Map(tipoDistincion);

            ViewData.Model = data;
            return View();
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var tipoDistincion = catalogoService.GetTipoDistincionById(id);
            data.Form = tipoDistincionMapper.Map(tipoDistincion);

            ViewData.Model = data;
            return View();
        }

        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(TipoDistincionForm form)
        {
            var tipoDistincion = tipoDistincionMapper.Map(form);

            tipoDistincion.CreadorPor = CurrentUser();
            tipoDistincion.ModificadoPor = CurrentUser();

            if (!IsValidateModel(tipoDistincion, form, Title.New))
                return ViewNew();

            catalogoService.SaveTipoDistincion(tipoDistincion);

            return RedirectToIndex(String.Format("Tipo de Distinci�n {0} ha sido creada", tipoDistincion.Nombre));
        }

        [Transaction]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(TipoDistincionForm form)
        {
            var tipoDistincion = tipoDistincionMapper.Map(form);

            tipoDistincion.ModificadoPor = CurrentUser();

            if (!IsValidateModel(tipoDistincion, form, Title.Edit))
                return ViewEdit();

            catalogoService.SaveTipoDistincion(tipoDistincion);

            return RedirectToIndex(String.Format("Tipo de Distinci�n {0} ha sido modificada", tipoDistincion.Nombre));
        }

        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Activate(int id)
        {
            var tipoDistincion = catalogoService.GetTipoDistincionById(id);
            tipoDistincion.Activo = true;
            tipoDistincion.ModificadoPor = CurrentUser();
            catalogoService.SaveTipoDistincion(tipoDistincion);

            var form = tipoDistincionMapper.Map(tipoDistincion);

            return Rjs(form);
        }

        [Transaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Deactivate(int id)
        {
            var tipoDistincion = catalogoService.GetTipoDistincionById(id);
            tipoDistincion.Activo = false;
            tipoDistincion.ModificadoPor = CurrentUser();
            catalogoService.SaveTipoDistincion(tipoDistincion);

            var form = tipoDistincionMapper.Map(tipoDistincion);

            return Rjs("Activate", form);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<TipoDistincion>(x => x.Nombre, q);
            return Content(data);
        }
    }
}