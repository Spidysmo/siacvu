using System;
using DecisionesInteligentes.Colef.Sia.Core.NHibernateValidator;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;
using SharpArch.Core.NHibernateValidator;

namespace DecisionesInteligentes.Colef.Sia.Core
{
    [HasUniqueDomainSignature]
    [RevistaPublicacionValidator]
    public class RevistaPublicacion : Entity, IBaseEntity
    {
        [DomainSignature]
        [Length(150)]
        [NotNullNotEmpty]
        public virtual string Titulo { get; set; }

        [Length(50)]
        public virtual string Periodicidad { get; set; }

        [Length(50)]
        public virtual string Issn { get; set; }

        [Length(255)]
        public virtual string Detalle { get; set; }

        public virtual string Tipo { get; set; }

        public virtual string Estado { get; set; }

        public virtual Institucion Institucion { get; set; }

        public virtual Pais Pais { get; set; }

        public virtual Indice Indice1 { get; set; }

        public virtual Indice Indice2 { get; set; }

        public virtual Indice Indice3 { get; set; }

        public virtual int  Puntuacion { get; set; }

        public virtual Usuario CreadorPor { get; set; }

        public virtual DateTime CreadorEl { get; set; }

        public virtual Usuario ModificadoPor { get; set; }

        public virtual DateTime ModificadoEl { get; set; }

        public virtual bool Activo { get; set; }
    }
}
