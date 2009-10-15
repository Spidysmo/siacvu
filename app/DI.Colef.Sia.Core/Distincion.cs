using System;
using System.Collections.Generic;
using DecisionesInteligentes.Colef.Sia.Core.NHibernateValidator;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;
using SharpArch.Core.NHibernateValidator;

namespace DecisionesInteligentes.Colef.Sia.Core
{
    [DistincionValidator]
    [HasUniqueDomainSignature]
    public class Distincion : Entity, IBaseEntity
    {
        const int tipoProducto = 5; // 5 Representa Distincion

        public Distincion()
        {
            ArchivoDistinciones = new List<ArchivoDistincion>();
        }

        public virtual void AddArchivo(Archivo archivo)
        {
            archivo.TipoProducto = tipoProducto;
            ArchivoDistinciones.Add((ArchivoDistincion) archivo);
        }

        public virtual void DeleteArchivo(Archivo archivo)
        {
            ArchivoDistinciones.Remove((ArchivoDistincion) archivo);
        }

        [Valid]
        public virtual IList<ArchivoDistincion> ArchivoDistinciones { get; private set; }

        public virtual TipoDistincion TipoDistincion { get; set; }

        [NotNullNotEmpty]
        [DomainSignature]
        public virtual string Titulo { get; set; }

        public virtual string Descripcion { get; set; }

        public virtual DateTime FechaOtorgamiento { get; set; }

        public virtual Institucion Institucion { get; set; }

        public virtual Ambito Ambito { get; set; }

        public virtual Pais Pais { get; set; }

        public virtual EstadoPais EstadoPais { get; set; }

        public virtual PeriodoReferencia PeriodoReferencia { get; set; }

        public virtual string Municipio { get; set; }

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
