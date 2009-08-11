using System;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;
using System.Collections.Generic;

namespace DecisionesInteligentes.Colef.Sia.Core
{
    public class MovilidadAcademica : Entity, IBaseEntity
    {
        public MovilidadAcademica()
        {
            TipoActividadMovilidadAcademicas = new List<TipoActividadMovilidadAcademica>();
            ProductoDerivadoMovilidadAcademicas = new List<ProductoDerivadoMovilidadAcademica>();
            ProyectoMovilidadAcademicas = new List<ProyectoMovilidadAcademica>();
        }

        public virtual void AddTipoActividad(TipoActividadMovilidadAcademica tipoActividadMovilidadAcademica)
        {
            TipoActividadMovilidadAcademicas.Add(tipoActividadMovilidadAcademica);
        }
        public virtual void AddProductoDerivado(ProductoDerivadoMovilidadAcademica productoDerivadoMovilidadAcademica)
        {
            ProductoDerivadoMovilidadAcademicas.Add(productoDerivadoMovilidadAcademica);
        }
        public virtual void AddProyecto(ProyectoMovilidadAcademica proyectoMovilidadAcademica)
        {
            ProyectoMovilidadAcademicas.Add(proyectoMovilidadAcademica);
        }


        public virtual TipoEstancia TipoEstancia { get; set; }

        public virtual TipoInstitucion TipoInstitucion { get; set; }

        public virtual Institucion Institucion { get; set; }

        public virtual DateTime FechaInicial { get; set; }

        public virtual DateTime FechaFinal { get; set; }

        public virtual LineaTematica LineaTematica { get; set; }

        public virtual Convenio Convenio { get; set; }

        [Valid]
        public virtual IList<TipoActividadMovilidadAcademica> TipoActividadMovilidadAcademicas { get; private set; }

        [Valid]
        public virtual IList<ProductoDerivadoMovilidadAcademica> ProductoDerivadoMovilidadAcademicas { get; private set; }

        [Valid]
        public virtual IList<ProyectoMovilidadAcademica> ProyectoMovilidadAcademicas { get; private set; }

        public virtual Investigador Investigador { get; set; }

        public virtual Usuario CreadorPor { get; set; }

        public virtual DateTime CreadorEl { get; set; }

        public virtual Usuario ModificadoPor { get; set; }

        public virtual DateTime ModificadoEl { get; set; }

        public virtual bool Activo { get; set; }
    }
}
