using System;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Models
{
    public class SedeForm
    {		
		public int Id { get; set; }
		public string Nombre { get; set; }
        public string Descripcion { get; set; }
		public bool Activo { get; set; }
        public string Modificacion { get; set; }
    }
}
