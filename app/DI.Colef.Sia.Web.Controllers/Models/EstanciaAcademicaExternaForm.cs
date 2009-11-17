namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Models
{
    public class EstanciaAcademicaExternaForm
    {
		public int Id { get; set; }
		public string LineasInvestigacion { get; set; }
        public string Actividades { get; set; }
        public string Logros { get; set; }
        public string FechaInicial { get; set; }
		public string FechaFinal { get; set; }
		public bool Activo { get; set; }
		public string Modificacion { get; set; }

        public string GradoAcademicoNombre { get; set; }

        public int Institucion { get; set; }
        public int InstitucionId { get; set; }
    }
}