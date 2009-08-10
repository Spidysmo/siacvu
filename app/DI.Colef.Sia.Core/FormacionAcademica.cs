using System;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;

namespace DecisionesInteligentes.Colef.Sia.Core
{
    public class FormacionAcademica : Entity, IBaseEntity
    {
        public virtual NivelEstudio NivelEstudio { get; set; }

        public virtual int NumeroCedula { get; set; }

        [NotNullNotEmpty]
        public virtual string TituloGrado { get; set; }

        public virtual DateTime FechaObtencion { get; set; }

        public virtual Institucion Institucion { get; set; }

        public virtual string TituloTesis { get; set; }

        public virtual LineaTematica LineaTematica { get; set; }

        public virtual Pais Pais { get; set; }

        public virtual EstadoPais EstadoPais { get; set; }

        public virtual string Ciudad { get; set; }

        public virtual string Estatus { get; set; }

        public virtual Sector Sector { get; set; }

        public virtual Organizacion Organizacion { get; set; }

        public virtual Area Area { get; set; }

        public virtual Disciplina Disciplina { get; set; }

        public virtual Subdisciplina Subdisciplina { get; set; }

        public virtual Investigador Investigador { get; set; }

        public virtual Usuario CreadorPor { get; set; }

        public virtual DateTime CreadorEl { get; set; }

        public virtual Usuario ModificadoPor { get; set; }

        public virtual DateTime ModificadoEl { get; set; }

        public virtual bool Activo { get; set; }
    }
}
