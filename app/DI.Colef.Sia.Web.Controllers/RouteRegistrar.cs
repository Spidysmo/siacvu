﻿using System.Web.Mvc;
using System.Web.Routing;
using SharpArch.Web.Areas;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers
{
    public class RouteRegistrar
    {
        public static void RegisterRoutesTo(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.IgnoreRoute("{*favicon}", new { favicon = @"(.*/)?favicon.ico(/.*)?" });

            // The areas below must be registered from greater subareas to fewer;
            // i.e., the root area should be the last area registered

            // Example illustrative routes with a nested area - note that the order of registration is important
            //routes.CreateArea("Organization/Department", "DI.Colef.Sia.Web.Controllers.Organization.Department",
            //    routes.MapRoute(null, "Organization/Department/{controller}/{action}", new { action = "Index" }),
            //    routes.MapRoute(null, "Organization/Department/{controller}/{action}/{id}")
            //);

            routes.MapRoute(null, "Login", new { controller = "Session", action = "Index" });
            routes.MapRoute(null, "Logout", new { controller = "Session", action = "Destroy" });
            routes.MapRoute(null, "Session/Create", new { controller = "Session", action = "Create" });
            routes.MapRoute(null, "Session/Create", new { controller = "Session", action = "Create" });
            routes.MapRoute(null, "Home", new { controller = "Home", action = "Index" });

            routes.CreateArea("Productos", "DecisionesInteligentes.Colef.Sia.Web.Controllers.Productos",
                              routes.MapRoute(null, "Productos/{controller}/{id}/{action}", null, new {id = @"\d{1,6}"}),
                              routes.MapRoute(null, "Productos/{controller}/{action}", new {action = "Index"})
                );

            routes.CreateArea("Catalogos", "DecisionesInteligentes.Colef.Sia.Web.Controllers.Catalogos",
                              routes.MapRoute(null, "Catalogos/{controller}/{id}/{action}", null, new {id = @"\d{1,6}"}),
                              routes.MapRoute(null, "Catalogos/{controller}/{action}", new {action = "Index"})

                );

            // Routing config for the root area
            routes.CreateArea("Root", "DecisionesInteligentes.Colef.Sia.Web.Controllers",
                              routes.MapRoute(null, "{controller}/{id}/{action}", null, new {id = @"\d{1,6}"}),
                              routes.MapRoute(null, "{controller}/{action}", new {controller = "Home", action = "Index"})

                );
        }
    }
}