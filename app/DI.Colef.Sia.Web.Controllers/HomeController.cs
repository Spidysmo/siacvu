﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Web.Mvc;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Core.DataInterfaces;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers
{
    [HandleError]
    public class HomeController : BaseController
    {
        readonly IUsuarioService usuarioService;
        readonly IProductoService productoService;

        public HomeController(IUsuarioService usuarioService, IProductoService productoService)
        {
            this.usuarioService = usuarioService;
            this.productoService = productoService;
        }

        [Authorize]
        public ActionResult Index()
        {
            var produccionAcademica = new List<ProductoDTO>();
            var formacionRecursosHumanos = new List<ProductoDTO>();
            var proyectos = new List<ProductoDTO>();
            var vinculaciones = new List<ProductoDTO>();
            var productos = new object[] {};

            if (User.IsInRole("Investigadores"))
               productos = productoService.GetProductosBandeja(CurrentUser());
            if(User.IsInRole("DGAA"))
               productos = productoService.GetProductosBandeja(true);

            foreach (var producto in (IEnumerable)productos[0])
            {
                var productoAcademico = producto as ProductoDTO;
                var buffer = Guid.NewGuid().ToByteArray();
                productoAcademico.GuidNumber = BitConverter.ToInt32(buffer, 0);
                produccionAcademica.Add(productoAcademico);
            }

            foreach (var producto in (IEnumerable)productos[1])
            {
                var recursoAcademico = producto as ProductoDTO;
                var buffer = Guid.NewGuid().ToByteArray();
                recursoAcademico.GuidNumber = BitConverter.ToInt32(buffer, 0);
                formacionRecursosHumanos.Add(recursoAcademico);
            }

            foreach (var producto in (IEnumerable)productos[2])
            {
                var proyecto = producto as ProductoDTO;
                var buffer = Guid.NewGuid().ToByteArray();
                proyecto.GuidNumber = BitConverter.ToInt32(buffer, 0);
                proyectos.Add(proyecto);
            }

            foreach (var producto in (IEnumerable)productos[3])
            {
                var vinculacion = producto as ProductoDTO;
                var buffer = Guid.NewGuid().ToByteArray();
                vinculacion.GuidNumber = BitConverter.ToInt32(buffer, 0);
                vinculaciones.Add(vinculacion);
            }

            var data = new GenericViewData<HomeForm>
                           {
                               Title = "Sistema de administración académica",
                               Form = new HomeForm
                                          {
                                              ProduccionAcademica = produccionAcademica.ToArray(),
                                              FormacionRecursosHumanos = formacionRecursosHumanos.ToArray(),
                                              Proyectos = proyectos.ToArray(),
                                              Vinculacion = vinculaciones.ToArray()
                                          }
                           };

            return View(data);
        }

        [Authorize]
        public ActionResult Edit(int id, int tipoProducto)
        {
            return RedirectToProducto(id, tipoProducto, "Edit");
        }

        [Authorize]
        public ActionResult Show(int id, int tipoProducto)
        {
            return RedirectToProducto(id, tipoProducto, "Show");
        }

        [Authorize(Roles = "Investigadores")]
        [CustomTransaction]
        [AcceptVerbs(HttpVerbs.Put)]
        public ActionResult Sign(int id, int tipoProducto, int guidNumber)
        {
            var producto = productoService.SignAndGetNombreProducto(id, tipoProducto, CurrentUser());

            var data = new HomeForm
                           {
                               NombreProducto = producto,
                               IdProducto = id,
                               TipoProducto = tipoProducto,
                               GuidNumber = guidNumber
                           };

            return Rjs(data);
        }

        protected ActionResult RedirectToProducto(int id, int tipoProducto, string action)
        {
            RedirectToRouteResult route = null;

            switch (tipoProducto)
            {
                case 1:
                    route = RedirectToAction(action, "Productos/Articulo", new { id = id });
                    break;
                case 2:
                    route = RedirectToAction(action, "Productos/Capitulo", new { id = id });
                    break;
                case 3:
                    route = RedirectToAction(action, "Productos/Curso", new { id = id });
                    break;
                case 4:
                    route = RedirectToAction(action, "Productos/Dictamen", new { id = id });
                    break;
                case 6:
                    route = RedirectToAction(action, "Productos/Evento", new { id = id });
                    break;
                case 7:
                    route = RedirectToAction(action, "Productos/Libro", new { id = id });
                    break;
                case 8:
                    route = RedirectToAction(action, "Productos/OrganoExterno", new { id = id });
                    break;
                case 10:
                    route = RedirectToAction(action, "Productos/ParticipacionMedio", new { id = id });
                    break;
                case 11:
                    route = RedirectToAction(action, "Productos/Reporte", new { id = id });
                    break;
                case 12:
                    route = RedirectToAction(action, "Productos/Resena", new { id = id });
                    break;
                case 13:
                    route = RedirectToAction(action, "Productos/TesisDirigida", new { id = id });
                    break;
                case 14:
                    route = RedirectToAction(action, "Proyecto", new { id = id });
                    break;
                case 20:
                    route = RedirectToAction(action, "Productos/ObraTraducida", new { id = id });
                    break;
            }

            return route;
        }

        protected Usuario CurrentUser()
        {
            var username = User.Identity.Name;
            return usuarioService.GetUsuarioByUserName(username);
        }
    }
}