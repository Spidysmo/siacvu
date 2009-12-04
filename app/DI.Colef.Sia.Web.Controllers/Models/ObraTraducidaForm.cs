namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Models
{
    public class ObraTraducidaForm
    {
		public int Id { get; set; }
		public string Nombre { get; set; }
		public string NombreTraductor { get; set; }
		public string ApellidoPaterno { get; set; }
		public string ApellidoMaterno { get; set; }
		public string NombreObraTraducida { get; set; }
		public int TipoObraTraducida { get; set; }
		public string PalabraClave1 { get; set; }
		public string PalabraClave2 { get; set; }
		public string PalabraClave3 { get; set; }
		public int EstadoProducto { get; set; }
		public string FechaAceptacion { get; set; }
		public string FechaPublicacion { get; set; }
		public int Volumen { get; set; }
		public int Numero { get; set; }
		public int PaginaInicial { get; set; }
		public int PaginaFinal { get; set; }
		public string NombreLibro { get; set; }
		public int TipoLibro { get; set; }
		public string Resumen { get; set; }
		public string NoPaginas { get; set; }
		public string NoCitas { get; set; }
		public string ISBN { get; set; }
		public int Reimpresion { get; set; }
        public int PosicionAutor { get; set; }
		public int Tiraje { get; set; }
		public bool Activo { get; set; }
		public string Modificacion { get; set; }

        public string AreaTematicaNombre { get; set; }
        public int AreaTematicaId { get; set; }

        public int Idioma { get; set; }
        public int IdiomaId { get; set; }
        public string IdiomaNombre { get; set; }

        public int RevistaPublicacionId { get; set; }
        public string RevistaPublicacionTitulo { get; set; }

        public int TotalAutores
        {
            get
            {
                return (CoautorExternoObraTraducidas == null ? 0 : CoautorExternoObraTraducidas.Length) +
                    (CoautorInternoObraTraducidas == null ? 0 : CoautorInternoObraTraducidas.Length) + 1;
            }
        }

        public CoautorExternoProductoForm[] CoautorExternoObraTraducidas { get; set; }
        public CoautorInternoProductoForm[] CoautorInternoObraTraducidas { get; set; }
        public AutorInternoProductoForm[] AutorInternoObraTraducidas { get; set; }
        public AutorExternoProductoForm[] AutorExternoObraTraducidas { get; set; }
        public EditorialProductoForm[] EditorialObraTraducidas { get; set; }

        /* New */
        public CoautorExternoProductoForm CoautorExternoProducto { get; set; }
        public CoautorInternoProductoForm CoautorInternoProducto { get; set; }
        public AutorInternoProductoForm AutorInternoProducto { get; set; }
        public AutorExternoProductoForm AutorExternoProducto { get; set; }
        public EditorialProductoForm EditorialProducto { get; set; }

        /* Show */
        public ShowFieldsForm ShowFields { get; set; }
        public AreaTematicaForm AreaTematica { get; set; }
        public RevistaPublicacionForm RevistaPublicacion { get; set; }

        /* Catalogos */
        public CustomSelectForm[] TiposObraTraducidas { get; set; }
        public CustomSelectForm[] EstadosProductos { get; set; }
        public CustomSelectForm[] TiposLibro { get; set; }
		public IdiomaForm[] Idiomas { get; set; }
        public CustomSelectForm[] Reimpresiones { get; set; }
    }
}