using System;

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
    }
}
