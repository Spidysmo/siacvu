using System;
using DecisionesInteligentes.Colef.Sia.Core.NHibernateValidator;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;
using SharpArch.Core.NHibernateValidator;
using System.Collections.Generic;

namespace DecisionesInteligentes.Colef.Sia.Core
{
	//[HasUniqueDomainSignature]
    public class Libro : Entity, IBaseEntity
    {
		public Libro()
		{
			CoautorExternoLibros = new List<CoautorExternoLibro>();
            CoautorInternoLibros = new List<CoautorInternoLibro>();
		}
		
		public virtual void AddCoautorExterno(CoautorExternoLibro coautorExternoLibro)
        {
            CoautorExternoLibros.Add(coautorExternoLibro);
        }

        public virtual void AddCoautorInterno(CoautorInternoLibro coautorInternoLibro)
        {
            CoautorInternoLibros.Add(coautorInternoLibro);
        }

        [NotNull]
        public virtual Investigador Investigador { get; set; }
		
        [NotNull]
		public virtual TipoPublicacion TipoPublicacion { get; set; }

        [NotNull]
		public virtual EstadoProducto EstadoProducto { get; set; }

        [NotNull]
		public virtual PeriodoReferencia PeriodoReferencia { get; set; }

        [NotNull]
		public virtual bool TieneProyecto { get; set; }

        [NotNull]
		public virtual Proyecto Proyecto { get; set; }

        [NotNull]
		public virtual LineaTematica LineaTematica { get; set; }

        [NotEmptyDate]
		public virtual DateTime FechaAceptacion { get; set; }

		[DomainSignature]
		[NotNullNotEmpty]
		public virtual string Nombre { get; set; }

        [NotNullNotEmpty]
		public virtual string ISBN { get; set; }

        [NotNullNotEmpty]
		public virtual string Editorial { get; set; }

        [NotEmptyDate]
		public virtual DateTime FechaEdicion { get; set; }

        [NotNull]
        public virtual Pais Pais { get; set; }

        [NotNull]
		public virtual int NoPaginas { get; set; }

        [NotNullNotEmpty]
		public virtual string Tiraje { get; set; }

        [NotNull]
		public virtual Idioma Idioma { get; set; }

        [NotNull]
		public virtual FormaParticipacion FormaParticipacion { get; set; }

        [Valid]
		public virtual IList<CoautorExternoLibro> CoautorExternoLibros { get; private set; }

        [Valid]
		public virtual IList<CoautorInternoLibro> CoautorInternoLibros { get; private set; }

		public virtual IdentificadorLibro IdentificadorLibro { get; set; }

		public virtual string PalabrasClave { get; set; }

		public virtual string CoTraductor { get; set; }

		public virtual string Traductor { get; set; }

		public virtual Area Area { get; set; }

		public virtual Disciplina Disciplina { get; set; }

        public virtual int Puntuacion { get; set; }

		public virtual Subdisciplina Subdisciplina { get; set; }

		public virtual Usuario CreadorPor { get; set; }

		public virtual DateTime CreadorEl { get; set; }

		public virtual Usuario ModificadoPor { get; set; }

		public virtual DateTime ModificadoEl { get; set; }

		public virtual bool Activo { get; set; }
    }
}