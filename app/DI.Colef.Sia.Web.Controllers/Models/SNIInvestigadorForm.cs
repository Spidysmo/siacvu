﻿namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Models
{
    public class SNIInvestigadorForm
    {
        public int Id { get; set; }

        public string ExpedienteSNI { get; set; }
        public string ExpedienteProduccion { get; set; }
        public string ExpedienteAcademico { get; set; }
        public string ClaveCVU { get; set; }
        public string FechaInicial { get; set; }
        public string FechaFinal { get; set; }

        public string SNINombre { get; set; }
        public int SNI { get; set; }

        public bool Activo { get; set; }
        public string Modificacion { get; set; }
    }
}
