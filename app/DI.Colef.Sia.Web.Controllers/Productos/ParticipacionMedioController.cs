using System;
using System.Web.Mvc;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Helpers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Productos
{
    [HandleError]
    public class ParticipacionMedioController : BaseController<ParticipacionMedio, ParticipacionMedioForm>
    {
        readonly IAmbitoMapper ambitoMapper;
        readonly ICatalogoService catalogoService;
        readonly IParticipacionMedioMapper participacionMedioMapper;
        readonly IParticipacionMedioService participacionMedioService;
        readonly IDirigidoAMapper dirigidoAMapper;
        readonly IAreaTematicaMapper areaTematicaMapper;
        readonly ITipoParticipacionMapper tipoParticipacionMapper;
        readonly ILineaTematicaMapper lineaTematicaMapper;
        readonly IAreaMapper areaMapper;
        readonly IDisciplinaMapper disciplinaMapper;
        readonly ISubdisciplinaMapper subdisciplinaMapper;

        public ParticipacionMedioController(IParticipacionMedioService participacionMedioService,
                                            IParticipacionMedioMapper participacionMedioMapper,
                                            ICatalogoService catalogoService,
                                            IUsuarioService usuarioService,
                                            IAmbitoMapper ambitoMapper,
                                            ITipoParticipacionMapper tipoParticipacionMapper,
                                            IAreaTematicaMapper areaTematicaMapper,
                                            IDirigidoAMapper dirigidoAMapper,
                                            ISearchService searchService, ILineaTematicaMapper lineaTematicaMapper, IAreaMapper areaMapper, IDisciplinaMapper disciplinaMapper,
                                ISubdisciplinaMapper subdisciplinaMapper)
            : base(usuarioService, searchService, catalogoService)
        {
            this.catalogoService = catalogoService;
            this.areaTematicaMapper = areaTematicaMapper;
            this.tipoParticipacionMapper = tipoParticipacionMapper;
            this.participacionMedioService = participacionMedioService;
            this.participacionMedioMapper = participacionMedioMapper;
            this.ambitoMapper = ambitoMapper;
            this.dirigidoAMapper = dirigidoAMapper;
            this.lineaTematicaMapper = lineaTematicaMapper;
            this.areaMapper = areaMapper;
            this.disciplinaMapper = disciplinaMapper;
            this.subdisciplinaMapper = subdisciplinaMapper;
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index()
        {
            return RedirectToHomeIndex();
        }

        [Authorize(Roles = "Investigadores")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult New()
        {
            if (CurrentInvestigador() == null)
                return NoInvestigadorProfile("Por tal motivo no puede crear nuevos productos.");

            var data = CreateViewDataWithTitle(Title.New);
            data.Form = SetupNewForm();
            
            return View(data);
        }

        [Authorize(Roles = "Investigadores, DGAA")]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Edit(int id)
        {
            var data = CreateViewDataWithTitle(Title.Edit);

            var participacionMedio = participacionMedioService.GetParticipacionMedioById(id);

            if (participacionMedio.Firma.Aceptacion1 == 1 && participacionMedio.Firma.Aceptacion2 == 0 && User.IsInRole("Investigadores"))
                return RedirectToHomeIndex(String.Format("La participaci�n en medio {0} esta en firma y no puede ser editada", participacionMedio.Titulo));
            
            if (User.IsInRole("DGAA"))
            {
                if ((participacionMedio.Firma.Aceptacion1 == 1 && participacionMedio.Firma.Aceptacion2 == 1) ||
                    (participacionMedio.Firma.Aceptacion1 == 0 && participacionMedio.Firma.Aceptacion2 == 0) ||
                    (participacionMedio.Firma.Aceptacion1 == 0 && participacionMedio.Firma.Aceptacion2 == 2)
                   )
                    return
                        RedirectToHomeIndex(String.Format(
                                                "La participaci�n en medio {0} ya fue aceptada o no ha sido enviada a firma",
                                                participacionMedio.Titulo));
            }

            if (User.IsInRole("Investigadores"))
            {
                if (participacionMedio.Usuario.Id != CurrentUser().Id)
                    return RedirectToHomeIndex("no lo puede modificar");
            }

            var participacionMedioForm = participacionMedioMapper.Map(participacionMedio);

            data.Form = SetupNewForm(participacionMedioForm);
            FormSetCombos(data.Form);

            ViewData.Model = data;
            return View();
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Show(int id)
        {
            var data = CreateViewDataWithTitle(Title.Show);

            var participacionMedio = participacionMedioService.GetParticipacionMedioById(id);

            var participacionForm = participacionMedioMapper.Map(participacionMedio);

            data.Form = SetupShowForm(participacionForm);

            ViewData.Model = data;
            return View();
        }

        [CustomTransaction]
        [Authorize(Roles = "Investigadores")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(ParticipacionMedioForm form)
        {
            var participacionMedio = participacionMedioMapper.Map(form, CurrentUser(), CurrentInvestigador());

            ModelState.AddModelErrors(participacionMedio.ValidationResults(), true, "ParticipacionMedio");
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            participacionMedioService.SaveParticipacionMedio(participacionMedio);
            SetMessage(String.Format("Participaci�n en medio {0} ha sido creada", participacionMedio.Titulo));

            return Rjs("Save", participacionMedio.Id);
        }

        [Authorize]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Update(ParticipacionMedioForm form)
        {
            var participacionMedio = new ParticipacionMedio();

            if (User.IsInRole("Investigadores"))
                participacionMedio = participacionMedioMapper.Map(form, CurrentUser(), CurrentInvestigador());
            if (User.IsInRole("DGAA"))
                participacionMedio = participacionMedioMapper.Map(form, CurrentUser());

            ModelState.AddModelErrors(participacionMedio.ValidationResults(), true, "ParticipacionMedio");
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            participacionMedioService.SaveParticipacionMedio(participacionMedio, true);
            SetMessage(String.Format("Participaci�n en medio {0} ha sido modificada", participacionMedio.Titulo));

            return Rjs("Save", participacionMedio.Id);
        }

        [CustomTransaction]
        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult DgaaValidateProduct(FirmaForm firmaForm)
        {

            var participacionMedio = participacionMedioService.GetParticipacionMedioById(firmaForm.ProductoId);

            participacionMedio.Firma.Aceptacion2 = 1;
            participacionMedio.Firma.Usuario2 = CurrentUser();

            participacionMedioService.SaveParticipacionMedio(participacionMedio);

            var data = new FirmaForm
            {
                TipoProducto = firmaForm.TipoProducto,
                Aceptacion2 = 1
            };

            return Rjs("DgaaSign", data);
        }

        [Authorize(Roles = "DGAA")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult DgaaRejectProduct(FirmaForm firmaForm)
        {

            var participacionMedio = participacionMedioService.GetParticipacionMedioById(firmaForm.ProductoId);
            participacionMedio.Firma.Aceptacion1 = 0;
            participacionMedio.Firma.Aceptacion2 = 2;
            participacionMedio.Firma.Descripcion = firmaForm.Descripcion;
            participacionMedio.Firma.Usuario1 = CurrentUser();
            participacionMedio.Firma.Usuario2 = CurrentUser();

            ModelState.AddModelErrors(participacionMedio.ValidationResults(), false, "Firma");
            if (!ModelState.IsValid)
            {
                return Rjs("ModelError");
            }

            participacionMedioService.SaveParticipacionMedio(participacionMedio, true);

            var data = new FirmaForm
                           {
                               TipoProducto = firmaForm.TipoProducto,
                               Aceptacion2 = 2
                           };

            return Rjs("DgaaSign", data);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public override ActionResult Search(string q)
        {
            var data = searchService.Search<ParticipacionMedio>(x => x.Titulo, q);
            return Content(data);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult ChangeAreaTematica(int select)
        {
            var areaTematicaForm = areaTematicaMapper.Map(catalogoService.GetAreaTematicaById(select));
            var lineaTematicaForm = lineaTematicaMapper.Map(catalogoService.GetLineaTematicaById(areaTematicaForm.LineaTematicaId));

            var form = new ShowFieldsForm
                           {
                               AreaTematicaLineaTematicaNombre = lineaTematicaForm.Nombre,

                               AreaTematicaId = areaTematicaForm.Id
                           };

            return Rjs("ChangeAreaTematica", form);
        }

        ParticipacionMedioForm SetupNewForm()
        {
            return SetupNewForm(null);
        }

        ParticipacionMedioForm SetupNewForm(ParticipacionMedioForm form)
        {
            form = form ?? new ParticipacionMedioForm();

            form.Ambitos = ambitoMapper.Map(catalogoService.GetActiveAmbitos());
            form.DirigidosA = dirigidoAMapper.Map(catalogoService.GetActiveDirigidoAs());
            form.TiposParticipaciones = tipoParticipacionMapper.Map(catalogoService.GetTipoParticipacionParticipacionMedios());

            return form;
        }

        void FormSetCombos(ParticipacionMedioForm form)
        {
            ViewData["Ambito"] = form.AmbitoId;
            ViewData["DirigidoA"] = form.DirigidoAId;
            ViewData["TipoParticipacion"] = form.TipoParticipacionId;
        }

        private ParticipacionMedioForm SetupShowForm(ParticipacionMedioForm form)
        {
            form = form ?? new ParticipacionMedioForm();

            form.ShowFields = new ShowFieldsForm
                                  {
                                      AreaTematicaNombre = form.AreaTematica.Nombre,
                                      AreaTematicaLineaTematicaNombre = form.AreaTematica.LineaTematicaNombre,

                                      PalabraClave1 = form.PalabraClave1,
                                      PalabraClave2 = form.PalabraClave2,
                                      PalabraClave3 = form.PalabraClave3,

                                      IsShowForm = true
                                  };

            return form;
        }
    }
}