namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Models
{
    public class EditorialForm
    {		
		public int Id { get; set; }
		public string Nombre { get; set; }
		public bool Activo { get; set; }
		public string Modificacion { get; set; }

        public string Contacto { get; set; }
        public string Email { get; set; }
        public string Telefono { get; set; }
        public string PaginaWeb { get; set; }
        public int TipoEditorial { get; set; }

        public int InstitucionId { get; set; }
        public string InstitucionNombre { get; set; }

        public int Pais { get; set; }
        public int PaisId { get; set; }
        public string PaisNombre { get; set; }

        //Catalogos
        public PaisForm[] Paises { get; set; }
        public CustomSelectForm[] TipoEditoriales { get; set; }

        /*Fields for has many*/
        public string Controller { get; set; }
        public string IdName { get; set; }

        public EditorialProductoForm[] Editoriales { get; set; }
        public int ModelId { get; set; }
        public int EditorialId { get; set; }
    }
}
