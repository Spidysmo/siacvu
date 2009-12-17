namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Models
{
    public class GradoAcademicoInvestigadorForm
    {
        public int Id { get; set; }
        public string Fecha { get; set; }

        public int GradoAcademico { get; set; }
        public string GradoAcademicoNombre { get; set; }

        public string Programa { get; set; }
        public string InstitucionNombre { get; set; }
        public int InstitucionId { get; set; }
        public string InstitucionPaisNombre { get; set; }

        public int ComprobanteId { get; set; }
        public string ComprobanteNombre { get; set; }

        public bool Activo { get; set; }
        public string Modificacion { get; set; }
    }
}