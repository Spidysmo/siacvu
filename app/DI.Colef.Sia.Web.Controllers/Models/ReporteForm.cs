namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Models
{
    public class ReporteForm
    {
        public int Id { get; set; }

        public string Titulo { get; set; }
        public string Editorial { get; set; }
        public int NoPaginas { get; set; }
        public string Descripcion { get; set; }
        public string Objetivo { get; set; }
        public string PalabraClave1 { get; set; }
        public string PalabraClave2 { get; set; }
        public string PalabraClave3 { get; set; }
        public string Fecha { get; set; }
        public string FechaEdicion { get; set; }
        public string FechaAceptacion { get; set; }
        public bool Activo { get; set; }
        public string Modificacion { get; set; }
        public string DepartamentoNombre { get; set; }
        public string SedeNombre { get; set; }

        public int TipoReporte { get; set; }
        public int TipoReporteId { get; set; }
        public string TipoReporteNombre { get; set; }

        public int EstadoProducto { get; set; }
        public int EstadoProductoId { get; set; }
        public string EstadoProductoNombre { get; set; }

        public int Proyecto { get; set; }
        public int ProyectoId { get; set; }
        public string ProyectoNombre { get; set; }

        public int LineaTematicaId { get; set; }
        public string LineaTematicaNombre { get; set; }

        public int InstitucionId { get; set; }
        public string InstitucionNombre { get; set; }

        public int Pais { get; set; }
        public int PaisId { get; set; }
        public string PaisNombre { get; set; }

        public string PeriodoReferenciaPeriodo { get; set; }
        public int TotalAutores
        {
            get
            {
                return (CoautorExternoReportes == null ? 0 : CoautorExternoReportes.Length) +
                    (CoautorInternoReportes == null ? 0 : CoautorInternoReportes.Length) + 1;
            }
        }

        /* New */
        public CoautorExternoProductoForm[] CoautorExternoReportes { get; set; }
        public CoautorInternoProductoForm[] CoautorInternoReportes { get; set; }

        public CoautorExternoProductoForm CoautorExternoProducto { get; set; }
        public CoautorInternoProductoForm CoautorInternoProducto { get; set; }

        /* Catalogos */
        public TipoReporteForm[] TiposReportes { get; set; }
        public EstadoProductoForm[] EstadosProductos { get; set; }
        public ProyectoForm[] Proyectos { get; set; }
        public InvestigadorExternoForm[] CoautoresExternos { get; set; }
        public InvestigadorForm[] CoautoresInternos { get; set; }
        public PaisForm[] Paises { get; set; }
    }
}
