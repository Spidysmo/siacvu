using System;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;
using SharpArch.Core.NHibernateValidator;

namespace DecisionesInteligentes.Colef.Sia.Core
{
    [HasUniqueDomainSignature]
    public class Cargo : Entity, IBaseEntity
    {
		[NotNullNotEmpty]
        [Length(40)]
        [DomainSignature]
		public virtual string Nombre { get; set; }

		public virtual string CreadorPor { get; set; }

		public virtual DateTime CreadorEl { get; set; }

		public virtual string ModificadoPor { get; set; }

		public virtual DateTime ModificadoEl { get; set; }

		public virtual bool Activo { get; set; }
    }
}
