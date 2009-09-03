namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Models
{
    public class ResponsableInternoProyectoForm
    {
        public int Id { get; set; }
        public bool Activo { get; set; }
        public string Modificacion { get; set; }

        //Espacio para Agregar Mapeos
        public int InvestigadorId { get; set; }
        public string InvestigadorUsuarioNombre { get; set; }
        public string InvestigadorUsuarioApellidoPaterno { get; set; }
        public string InvestigadorUsuarioApellidoMaterno { get; set; }

        public string NombreResponsable
        {
            get
            {
                return string.Format("{0} {1} {2}", InvestigadorUsuarioApellidoPaterno,
                                     InvestigadorUsuarioApellidoMaterno, InvestigadorUsuarioNombre);
            }
        }

        //public int InstitucionId { get; set; }
        //public string InstitucionNombre { get; set; }
    }
}
