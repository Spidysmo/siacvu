using System;
using DecisionesInteligentes.Colef.Sia.Core.NHibernateValidator;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;
using SharpArch.Core.NHibernateValidator;
using System.Collections.Generic;

namespace DecisionesInteligentes.Colef.Sia.Core
{
	[HasUniqueDomainSignature]
    [OrganoInternoValidator]
    public class OrganoInterno : Entity, IBaseEntity
    {
        const int tipoProducto = 14; // 14 Representa Organo Interno

		public OrganoInterno()
		{
            ArchivoOrganoInternos = new List<ArchivoOrganoInterno>();
            FirmaOrganoInternos = new List<FirmaOrganoInterno>();
		}

        public virtual void AddArchivo(Archivo archivo)
        {
            archivo.TipoProducto = tipoProducto;
            ArchivoOrganoInternos.Add((ArchivoOrganoInterno)archivo);
        }

        public virtual void AddFirma(Firma firma)
        {
            firma.TipoProducto = tipoProducto;
            FirmaOrganoInternos.Add((FirmaOrganoInterno)firma);
        }

        public virtual void DeleteFirma(Firma firma)
        {
            FirmaOrganoInternos.Remove((FirmaOrganoInterno)firma);
        }

        public virtual void DeleteArchivo(Archivo archivo)
        {
            ArchivoOrganoInternos.Remove((ArchivoOrganoInterno)archivo);
        }

        [Valid]
        public virtual IList<ArchivoOrganoInterno> ArchivoOrganoInternos { get; private set; }

        [Valid]
        public virtual IList<FirmaOrganoInterno> FirmaOrganoInternos { get; private set; }

        [NotNull]
        public virtual Usuario Usuario { get; set; }

        public virtual Departamento Departamento { get; set; }

        public virtual Sede Sede { get; set; }
		
		[DomainSignature]
		[NotNullNotEmpty]
		public virtual string Nombre { get; set; }

		public virtual ConsejoComision ConsejoComision { get; set; }

		public virtual DateTime FechaInicial { get; set; }

		public virtual DateTime FechaFinal { get; set; }

		public virtual int Periodo { get; set; }

		public virtual Usuario CreadorPor { get; set; }

		public virtual DateTime CreadorEl { get; set; }

		public virtual Usuario ModificadoPor { get; set; }

		public virtual DateTime ModificadoEl { get; set; }

		public virtual bool Activo { get; set; }
    }
}