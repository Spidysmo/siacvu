namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Models
{
    public class AutorExternoProductoForm
    {
        public int Id { get; set; }
        public bool Activo { get; set; }
        public string Modificacion { get; set; }

        public int InvestigadorExternoId { get; set; }
        public string InvestigadorExternoNombre { get; set; }

        public int InstitucionId { get; set; }
        public string InstitucionNombre { get; set; }

        public int ParentId { get; set; }
    }
}