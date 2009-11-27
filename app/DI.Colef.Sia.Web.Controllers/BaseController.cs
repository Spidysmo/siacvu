﻿using System;
using System.Linq;
using System.Web.Mvc;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using DecisionesInteligentes.Colef.Sia.Web.Extensions;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Helpers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData;
using SharpArch.Core.DomainModel;
using uNhAddIns.Inflector;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers
{
    public enum Title
    {
        New,
        Edit,
        Index,
        Show
    }

    public class BaseController<TModel, TForm> : Controller where TModel : Entity
    {
        protected readonly IUsuarioService usuarioService;
        protected readonly ISearchService searchService;
        protected readonly ICatalogoService catalogoService;
        protected readonly IInstitucionMapper institucionMapper;
        protected readonly ISedeMapper sedeMapper;

        public BaseController(IUsuarioService usuarioService, ISearchService searchService,
                              ICatalogoService catalogoService) :this(usuarioService, searchService, catalogoService, null, null)
        {
        }

        public BaseController(IUsuarioService usuarioService, ISearchService searchService,
                              ICatalogoService catalogoService, IInstitucionMapper institucionMapper, ISedeMapper sedeMapper)
        {
            this.usuarioService = usuarioService;
            this.searchService = searchService;
            this.catalogoService = catalogoService;
            this.institucionMapper = institucionMapper;
            this.sedeMapper = sedeMapper;
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public virtual ActionResult Search(string q)
        {
            return Content("");
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public virtual ActionResult Search(int searchId)
        {
            return RedirectToEdit(searchId);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult ChangeInstitucion(int select)
        {
            if (institucionMapper == null)
                return Content("Action not supported");

            var institucionForm = institucionMapper.Map(catalogoService.GetInstitucionById(select));

            var form = new ShowFieldsForm
            {
                InstitucionId = institucionForm.Id,

                InstitucionCiudad = institucionForm.Ciudad,
                InstitucionEstadoPaisNombre = institucionForm.EstadoPaisNombre,
                InstitucionPaisNombre = institucionForm.PaisNombre,
                InstitucionTipoInstitucionNombre = institucionForm.TipoInstitucion
            };

            return Rjs("ChangeInstitucion", form);
        }

        [Authorize]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult ChangeSede(int select)
        {
            if (sedeMapper == null)
                return Content("Action not supported");

            var sedeForm = sedeMapper.Map(catalogoService.GetSedeById(select));

            var form = new ShowFieldsForm
            {
                DireccionRegionalNombre = sedeForm.DireccionRegionalNombre
            };

            return Rjs("ChangeSede", form);
        }

        protected Usuario CurrentUser()
        {
            var username = User.Identity.Name;
            return usuarioService.GetUsuarioByUserName(username);
        }

        protected Investigador CurrentInvestigador()
        {
            var usuario = CurrentUser();
            return usuarioService.GetInvestigadorByUsuario(usuario);
        }

        protected Pais GetDefaultPais()
        {
            var paises = catalogoService.GetActivePaises();
            return catalogoService.GetPaisById((from p in paises where p.Nombre == "México" select p.Id).FirstOrDefault());
        }

        protected bool IsInternacionalOrBinacional(string ambitoNombre, string[] ambitos)
        {
            var esInternacional = false;

            for (var i = 0; i < ambitos.Length; i++)
            {
                if (ambitoNombre == ambitos[i])
                    esInternacional = true;
            }

            return esInternacional;
        }

        protected RedirectToRouteResult RedirectToIndex(string message)
        {
            SetMessage(message);
            return RedirectToAction("Index");
        }

        protected RedirectToRouteResult RedirectToIndex(string message, bool error)
        {
            if (error)
                SetError(String.Format("El {0} {1}", GetObjectName(false), message));
            else
                SetMessage(String.Format("El {0} {1}", GetObjectName(false), message));
            return RedirectToAction("Index");
        }

        protected RedirectToRouteResult RedirectToEdit(int id)
        {
            return RedirectToAction("Edit", new { id = id });
        }

        protected ActionResult NotAuthorized()
        {
            return RedirectToIndex("No tiene autorización para ver la página solicitada.");
        }

        protected ActionResult NoInvestigadorProfile()
        {
            return NoInvestigadorProfile(String.Empty);
        }

        protected ActionResult NoInvestigadorProfile(string message)
        {
            return RedirectToIndex("No existe perfil de investigador definido para éste usuario. " + message);
        }

        protected ViewResult ViewEdit()
        {
            return View("Edit");
        }

        protected ViewResult ViewNew()
        {
            return View("New");
        }

        protected bool IsValidateModel(TModel model, TForm form, Title title)
        {
            return IsValidateModel(model, form, title, null);
        }

        protected bool IsValidateModel(TModel model, TForm form, Title title, string excludePrefix)
        {
            ModelState.AddModelErrors(model.ValidationResults(), !excludePrefix.IsNullOrEmpty(), excludePrefix);
            if (!ModelState.IsValid)
            {
                var data = CreateViewDataWithTitle(title); 
                data.Form = form;
                SetError(string.Format("Se ha generado un error al actualizar el {0}, por favor corrija los siguientes errores.\n{1}",
                    GetObjectName(false),
                    ModelState.ContainsKey("Entity") ? ModelState["Entity"].Errors[0].ErrorMessage : String.Empty));

                ViewData.Model = data;
                ViewData["Rollback"] = true;
                return false;
            }

            return true;
        }

        protected string GetObjectName(bool pluralize)
        {
            var spanishInflector = new SpanishInflector();
            var objectName = typeof (TModel).Name;
            objectName = spanishInflector.Titleize(objectName);

            if (pluralize)
            {
                var objectNames = objectName.Split(' ');
                objectName = "";

                foreach (var name in objectNames)
                {
                    objectName += spanishInflector.Pluralize(name);
                }

                objectName = spanishInflector.Titleize(objectName);
            }
            return objectName;
        }

        protected GenericViewData<TForm> CreateViewDataWithTitle(Title title)
        {
            string message = String.Empty;

            switch (title)
            {
                case Title.Index:
                    message = String.Format("Administración de {0}", GetObjectName(true).ToLower());
                    break;

                case Title.New:
                    message = String.Format("Crear nuevo {0}", GetObjectName(false).ToLower());
                    break;

                case Title.Edit:
                    message = String.Format("Modificación de {0}", GetObjectName(false).ToLower());
                    break;

                case Title.Show:
                    message = String.Format("Información de {0}", GetObjectName(false).ToLower());
                    break;
            }

            return new GenericViewData<TForm> { Title = message };
        }

        protected void SetMessage(string message)
        {
            TempData["message"] = message;
        }

        protected void SetError(string message)
        {
            ViewData["error"] = message;
        }

        protected ContentResult Rjs(string viewName, ViewDataDictionary viewdata)
        {
            var output = this.RenderPartialToString(viewName, viewdata);
            output = output.Replace("\n", " ");
            output = output.Replace("\r", " ");

            output = "try { " + output + " } catch(e) { alert(e); }";
            return Content(output);
        }

        protected ContentResult Rjs(string viewName, object model)
        {
            ViewData.Model = model;
            return Rjs(viewName, ViewData);
        }

        protected ContentResult Rjs(string viewName)
        {
            return Rjs(viewName, ViewData);
        }

        protected ContentResult Rjs(object model)
        {
            var viewName = ControllerContext.RouteData.Values["action"].ToString();
            ViewData.Model = model;
            return Rjs(viewName, ViewData);
        }
    }
}
