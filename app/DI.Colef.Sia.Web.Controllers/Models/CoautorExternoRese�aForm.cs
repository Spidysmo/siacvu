namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Models
{
    public class CoautorExternoRese�aForm
    {
        public int Id { get; set; }
        public bool Activo { get; set; }
        public string Modificacion { get; set; }

        //Espacio para Agregar Mapeos
        public int InvestigadorExternoId { get; set; }
        public string InvestigadorExternoNombre { get; set; }
    }
}
