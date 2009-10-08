using System;
using DecisionesInteligentes.Colef.Sia.Core.NHibernateValidator;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;
using System.Collections.Generic;
using SharpArch.Core.NHibernateValidator;

namespace DecisionesInteligentes.Colef.Sia.Core
{
    [HasUniqueDomainSignature]
    [EventoValidator]
    public class Evento : Entity, IBaseEntity
    {
        public Evento()
        {
            CoautorExternoEventos = new List<CoautorExternoEvento>();
            CoautorInternoEventos = new List<CoautorInternoEvento>();
        }

        public virtual void AddCoautorExterno(CoautorExternoEvento coautorExternoEvento)
        {
            coautorExternoEvento.TipoProducto = 6; // 6 Representa Evento
            CoautorExternoEventos.Add(coautorExternoEvento);
        }

        public virtual void AddCoautorInterno(CoautorInternoEvento coautorInternoEvento)
        {
            coautorInternoEvento.TipoProducto = 6; // 6 Representa Evento
            CoautorInternoEventos.Add(coautorInternoEvento);
        }

        [NotNullNotEmpty]
        [DomainSignature]
        public virtual string Nombre { get; set; }

        public virtual Ambito Ambito { get; set; }

        public virtual TipoEvento TipoEvento { get; set; }

        public virtual TipoParticipacion TipoParticipacion { get; set; }

        public virtual DirigidoA DirigidoA { get; set; }

        public virtual string Titulo { get; set; }

        public virtual bool Invitacion { get; set; }

        [Valid]
        public virtual IList<CoautorExternoEvento> CoautorExternoEventos { get; private set; }

        [Valid]
        public virtual IList<CoautorInternoEvento> CoautorInternoEventos { get; private set; }

        public virtual Institucion Institucion { get; set; }

        public virtual string Ciudad { get; set; }

        public virtual EstadoPais EstadoPais { get; set; }

        public virtual Pais Pais { get; set; }

        public virtual LineaTematica LineaTematica { get; set; }

        public virtual PeriodoReferencia PeriodoReferencia { get; set; }

        public virtual DateTime FechaInicial { get; set; }

        public virtual DateTime FechaFinal { get; set; }

        public virtual TipoFinanciamiento TipoFinanciamiento { get; set; }

        public virtual string PalabraClave1 { get; set; }

        public virtual string PalabraClave2 { get; set; }

        public virtual string PalabraClave3 { get; set; }

        [NotNull]
        public virtual Usuario Usuario { get; set; }

        public virtual Departamento Departamento { get; set; }

        public virtual Sede Sede { get; set; }

        public virtual Usuario CreadorPor { get; set; }

        public virtual DateTime CreadorEl { get; set; }

        public virtual Usuario ModificadoPor { get; set; }

        public virtual DateTime ModificadoEl { get; set; }

        public virtual bool Activo { get; set; }
    }
}
