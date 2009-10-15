using System;
using DecisionesInteligentes.Colef.Sia.Core.NHibernateValidator;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;
using SharpArch.Core.NHibernateValidator;

namespace DecisionesInteligentes.Colef.Sia.Core
{
    [CursoValidator]
    [HasUniqueDomainSignature]
    public class Curso : Entity, IBaseEntity
    {
        public virtual int TipoCurso { get; set; }

        public virtual bool EsDiplomado { get; set; }

        public virtual Diplomado Diplomado { get; set; }

        public virtual NivelEstudio NivelEstudio { get; set; }

        public virtual ProgramaEstudio ProgramaEstudio { get; set; }

        [DomainSignature]
        public virtual string Nombre { get; set; }

        public virtual Institucion Institucion { get; set; }
        
        public virtual DateTime FechaInicial { get; set; }

        public virtual DateTime FechaFinal { get; set; }

        public virtual int NumeroHoras { get; set; }

        public virtual PeriodoReferencia PeriodoReferencia { get; set; }

        public virtual Sector Sector { get; set; }

        public virtual Organizacion Organizacion { get; set; }

        public virtual Nivel Nivel2 { get; set; }

        public virtual Pais Pais { get; set; }

        public virtual Area Area { get; set; }

        public virtual Disciplina Disciplina { get; set; }

        public virtual Subdisciplina Subdisciplina { get; set; }

        public virtual int Puntuacion { get; set; }

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
