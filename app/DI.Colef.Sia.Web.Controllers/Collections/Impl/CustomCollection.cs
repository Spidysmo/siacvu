using System;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Collections.Impl
{
    public class CustomCollection : ICustomCollection
    {
        public CustomSelectForm[] TipoProductoCustomCollection()
        {
            return TipoProductoCustomCollection(0);
        }

        public CustomSelectForm[] TipoProductoCustomCollection(int tipoProducto)
        {
            var lowerUpperS = tipoProducto == 0 ? "S" : "s";
            var lowerUpperC = tipoProducto == 0 ? "C" : "c";

            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = GetNombreProducto(tipoProducto) + lowerUpperC + "on arbitraje"},
                           new CustomSelectForm {Id = 2, Nombre = GetNombreProducto(tipoProducto) + lowerUpperS + "in arbitraje"}
                       };
        }

        public CustomSelectForm[] TipoLibroCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Coordinaci�n"},
                           new CustomSelectForm {Id = 2, Nombre = "Compilaci�n"}
                       };
        }

        public CustomSelectForm[] FormatoPublicacionCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Libro"},
                           new CustomSelectForm {Id = 2, Nombre = "Coordinaci�n"},
                           new CustomSelectForm {Id = 3, Nombre = "Compilaci�n"}
                       };
        }

        public CustomSelectForm[] ContenidoLibroCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Obra cient�fica"},
                           new CustomSelectForm {Id = 2, Nombre = "Memoria de evento"},
                           new CustomSelectForm {Id = 3, Nombre = "N�mero especial de revista"},
                           new CustomSelectForm {Id = 4, Nombre = "Serie breviarium"},
                           new CustomSelectForm {Id = 5, Nombre = "Reportes estad�sticos"}
                       };
        }

        public CustomSelectForm[] TipoReporteCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Documento de trabajo"},
                           new CustomSelectForm {Id = 2, Nombre = "Reporte t�cnico"}
                       };
        }

        public CustomSelectForm[] TipoResenaCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Nota cr�tica"},
                           new CustomSelectForm {Id = 2, Nombre = "Rese�a bibliogr�fica"}
                       };
        }

        public CustomSelectForm[] FormaParticipacionCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Director"},
                           new CustomSelectForm {Id = 2, Nombre = "Co-director"},
                           new CustomSelectForm {Id = 3, Nombre = "Lector o sinodal"}
                       };
        }

        public CustomSelectForm[] EstadoProyectoCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Vigente"},
                           new CustomSelectForm {Id = 2, Nombre = "Terminado"},
                           new CustomSelectForm {Id = 3, Nombre = "Cancelado"}
                       };
        }

        public CustomSelectForm[] TipoObraTraducidaCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Art�culo en revista"},
                           new CustomSelectForm {Id = 2, Nombre = "Libro"},
                           new CustomSelectForm {Id = 3, Nombre = "Cap�tulo en libro"}
                       };
        }

        private string GetNombreProducto(int tipoProducto)
        {
            var nombreProducto = "";

            switch (tipoProducto)
            {
                case 0:
                    nombreProducto = "";
                    break;
                case 1:
                    nombreProducto = "Art�culo ";
                    break;
                case 2:
                    nombreProducto = "Cap�tulo ";
                    break;
                case 7:
                    nombreProducto = "Libro ";
                    break;
            }

            return nombreProducto;
        }

        public CustomSelectForm[] EstadoProductoCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "En dictamen"},
                           new CustomSelectForm {Id = 2, Nombre = "Aceptado"},
                           new CustomSelectForm {Id = 3, Nombre = "Publicado"}
                       };
        }

        public CustomSelectForm[] EdicionCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Primera edici�n"},
                           new CustomSelectForm {Id = 2, Nombre = "Segunda edici�n"},
                           new CustomSelectForm {Id = 3, Nombre = "Tercera edici�n"}
                       };
        }

        public CustomSelectForm[] ReimpresionCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Primera"},
                           new CustomSelectForm {Id = 2, Nombre = "Segunda"},
                           new CustomSelectForm {Id = 3, Nombre = "Tercera"}
                       };
        }

        public CustomSelectForm[] NivelIdiomaCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Bajo"},
                           new CustomSelectForm {Id = 2, Nombre = "Medio"},
                           new CustomSelectForm {Id = 3, Nombre = "Alto"}
                       };
        }

        public CustomSelectForm[] TipoTesisCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Tesis de El Colef"},
                           new CustomSelectForm {Id = 2, Nombre = "Tesis externas"}
                       };
        }

        public CustomSelectForm[] TipoCursoCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Cursos en El Colef"},
                           new CustomSelectForm {Id = 2, Nombre = "Cursos externos"}
                       };
        }

        public CustomSelectForm[] PeriodoCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Primer periodo"},
                           new CustomSelectForm {Id = 2, Nombre = "Segundo periodo"}
                       };
        }

        public CustomSelectForm[] TipoRevistaCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Con arbitraje an�nimo"},
                           new CustomSelectForm {Id = 2, Nombre = "Sin arbitraje an�nimo"},
                           new CustomSelectForm {Id = 3, Nombre = "Sin arbitraje"}
                       };
        }

        public CustomSelectForm[] PeriodicidadCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Mensual"},
                           new CustomSelectForm {Id = 2, Nombre = "Bimestral"},
                           new CustomSelectForm {Id = 3, Nombre = "Trimestral"},
                           new CustomSelectForm {Id = 4, Nombre = "Cuatrimestral"},
                           new CustomSelectForm {Id = 5, Nombre = "Semestral"},
                           new CustomSelectForm {Id = 6, Nombre = "Anual"}
                       };
        }

        public CustomSelectForm[] ClasificacionSievaCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Tipo A"},
                           new CustomSelectForm {Id = 2, Nombre = "Tipo B"},
                           new CustomSelectForm {Id = 3, Nombre = "Tipo C"},
                           new CustomSelectForm {Id = 4, Nombre = "Tipo D"}
                       };
        }

        public CustomSelectForm[] FormatoRevistaCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Revista impresa"},
                           new CustomSelectForm {Id = 2, Nombre = "Revista electr�nica"},
                           new CustomSelectForm {Id = 3, Nombre = "Ambas"}
                       };
        }

        public CustomSelectForm[] SectorCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "Sector econ�mico"},
                           new CustomSelectForm {Id = 2, Nombre = "Sector financiamiento"},
                           new CustomSelectForm {Id = 3, Nombre = "Sector �rgano externo"}
                       };
        }

        public CustomSelectForm[] TipoParticipacionCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm {Id = 1, Nombre = "en cap�tulos"},
                           new CustomSelectForm {Id = 2, Nombre = "en eventos"},
                           new CustomSelectForm {Id = 3, Nombre = "en participaci�n en medios"}
                       };
        }

        public CustomSelectForm[] EstatusFormacionAcademicaCustomCollection()
        {
            return new[]
                       {
                           new CustomSelectForm()
                       };
        }
    }
}