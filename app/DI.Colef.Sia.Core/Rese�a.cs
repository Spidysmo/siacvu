using System;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;
using System.Collections.Generic;

namespace DecisionesInteligentes.Colef.Sia.Core
{
    public class Rese�a : Entity, IBaseEntity
    {
        public Rese�a()
        {
            CoautorExternoRese�as = new List<CoautorExternoRese�a>();
            CoautorInternoRese�as = new List<CoautorInternoRese�a>();
        }

        public virtual void AddCoautorExterno(CoautorExternoRese�a coautorExternoRese�a)
        {
            CoautorExternoRese�as.Add(coautorExternoRese�a);
        }
        public virtual void AddCoautorInterno(CoautorInternoRese�a coautorInternoRese�a)
        {
            CoautorInternoRese�as.Add(coautorInternoRese�a);
        }


        public virtual EstadoProducto EstadoProducto { get; set; }

        public virtual PeriodoReferencia PeriodoReferencia { get; set; }

        public virtual DateTime FechaAceptacion { get; set; }

        public virtual Proyecto Proyecto { get; set; }

        public virtual LineaTematica LineaTematica { get; set; }

        public virtual DateTime FechaEdicion { get; set; }

        public virtual IList<CoautorExternoRese�a> CoautorExternoRese�as { get; private set; }

        public virtual IList<CoautorInternoRese�a> CoautorInternoRese�as { get; private set; }

        public virtual string ReferenciaBibliograficaLibro { get; set; }

        public virtual string ReferenciaBibliograficaRevista { get; set; }

        public virtual string NombreProducto { get; set; }

        public virtual Pais Pais { get; set; }

        public virtual int PaginaInicial { get; set; }

        public virtual int PaginaFinal { get; set; }

        public virtual string TituloLibro { get; set; }

        [NotNullNotEmpty]
        public virtual string NombreRevista { get; set; }

        public virtual string Editorial { get; set; }

        public virtual string PalabrasClave { get; set; }

        public virtual Area Area { get; set; }

        public virtual Disciplina Disciplina { get; set; }

        public virtual Subdisciplina Subdisciplina { get; set; }

        public virtual Investigador Investigador { get; set; }

        public virtual int Puntuacion { get; set; }

        public virtual Usuario CreadorPor { get; set; }

        public virtual DateTime CreadorEl { get; set; }

        public virtual Usuario ModificadoPor { get; set; }

        public virtual DateTime ModificadoEl { get; set; }

        public virtual bool Activo { get; set; }
    }
}
