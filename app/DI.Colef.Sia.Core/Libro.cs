using System;
using DecisionesInteligentes.Colef.Sia.Core.NHibernateValidator;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;
using SharpArch.Core.NHibernateValidator;
using System.Collections.Generic;

namespace DecisionesInteligentes.Colef.Sia.Core
{
	[HasUniqueDomainSignature]
    [LibroValidator]
    public class Libro : Entity, IBaseEntity, ICoautor
    {
        const int tipoProducto = 7; // 7 Representa Libro

		public Libro()
		{
			CoautorExternoLibros = new List<CoautorExternoLibro>();
            CoautorInternoLibros = new List<CoautorInternoLibro>();
            EditorialLibros = new List<EditorialLibro>();
		}

        public virtual void AddEditorial(EditorialLibro editorialLibro)
        {
            EditorialLibros.Add(editorialLibro);
        }

        public virtual void AddCoautorExterno(CoautorExternoProducto coautorExterno)
        {
            coautorExterno.TipoProducto = tipoProducto;
            CoautorExternoLibros.Add((CoautorExternoLibro)coautorExterno);
        }

        public virtual void AddCoautorInterno(CoautorInternoProducto coautorInterno)
        {
            coautorInterno.TipoProducto = tipoProducto;
            CoautorInternoLibros.Add((CoautorInternoLibro)coautorInterno);
        }

        public virtual void DeleteCoautorInterno(CoautorInternoProducto coautorInterno)
        {
            CoautorInternoLibros.Remove((CoautorInternoLibro)coautorInterno);
        }

        public virtual void DeleteCoautorExterno(CoautorExternoProducto coautorExterno)
        {
            CoautorExternoLibros.Remove((CoautorExternoLibro)coautorExterno);
        }

        [NotNull]
        public virtual Usuario Usuario { get; set; }

        public virtual Departamento Departamento { get; set; }

        public virtual Sede Sede { get; set; }

        [Min(1)]
	    public virtual int PosicionAutor { get; set; }

	    public virtual Editorial Editorial { get; set; }

		public virtual TipoPublicacion TipoPublicacion { get; set; }

        public virtual TipoProducto TipoProducto { get; set; }

        public virtual FormatoPublicacion FormatoPublicacion { get; set; }

        public virtual Edicion Edicion { get; set; }

        public virtual RevistaPublicacion NombreRevista { get; set; }

        public virtual Evento Evento { get; set; }

		public virtual EstadoProducto EstadoProducto { get; set; }

		public virtual PeriodoReferencia PeriodoReferencia { get; set; }
		
		public virtual bool TieneProyecto { get; set; }
        
		public virtual Proyecto Proyecto { get; set; }

		public virtual DateTime FechaAceptacion { get; set; }

        public virtual DateTime FechaPublicacion { get; set; }

		[DomainSignature]
		[NotNullNotEmpty]
		public virtual string Nombre { get; set; }

		public virtual string ISBN { get; set; }

        public virtual string Volumen { get; set; }

        public virtual int Numero { get; set; }

		public virtual DateTime FechaEdicion { get; set; }

		public virtual int NoPaginas { get; set; }

        public virtual int Tiraje { get; set; }

        public virtual Idioma Idioma { get; set; }

	    public virtual Reimpresion Reimpresion { get; set; }
		//public virtual FormaParticipacion FormaParticipacion { get; set; }

        [Valid]
		public virtual IList<CoautorExternoLibro> CoautorExternoLibros { get; private set; }

        [Valid]
		public virtual IList<CoautorInternoLibro> CoautorInternoLibros { get; private set; }

        [Valid]
        public virtual IList<EditorialLibro> EditorialLibros { get; private set; }

		//public virtual IdentificadorLibro IdentificadorLibro { get; set; }

        public virtual string PalabraClave1 { get; set; }

        public virtual string PalabraClave2 { get; set; }

        public virtual string PalabraClave3 { get; set; }

		//public virtual bool Traductor { get; set; }
		
		public virtual string NombreTraductor { get; set; }

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