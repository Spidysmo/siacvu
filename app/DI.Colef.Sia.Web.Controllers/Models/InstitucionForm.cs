namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Models
{
    public class InstitucionForm
    {		
		public int Id { get; set; }
		public string Nombre { get; set; }
		public string Responsable { get; set; }
		public string Email { get; set; }
		public bool Activo { get; set; }
		public string Modificacion { get; set; }

        public int Pais { get; set; }
        public int PaisId { get; set; }
        public string PaisNombre { get; set; }

        public PaisForm[] Paises { get; set; }
    }
}
