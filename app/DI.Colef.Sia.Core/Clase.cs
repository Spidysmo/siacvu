using System;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;
using SharpArch.Core.NHibernateValidator;

namespace DecisionesInteligentes.Colef.Sia.Core
{
	[HasUniqueDomainSignature]
    public class Clase : Entity, IBaseEntity
    {
		[DomainSignature]
		[NotNullNotEmpty]
        [Length(70)]
		public virtual string Nombre { get; set; }

        public virtual string CodigoConacyt { get; set; }

	    public virtual Rama Rama { get; set; }

		public virtual Usuario CreadoPor { get; set; }

		public virtual DateTime CreadoEl { get; set; }

		public virtual Usuario ModificadoPor { get; set; }

		public virtual DateTime ModificadoEl { get; set; }

		public virtual bool Activo { get; set; }
    }
}
