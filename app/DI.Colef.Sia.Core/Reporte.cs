using System;
using DecisionesInteligentes.Colef.Sia.Core.NHibernateValidator;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;
using System.Collections.Generic;
using SharpArch.Core.NHibernateValidator;

namespace DecisionesInteligentes.Colef.Sia.Core
{
    [HasUniqueDomainSignature]
    [ReporteValidator]
    public class Reporte : Entity, IBaseEntity, ICoautor, IInstitucion
    {
        const int tipoProducto = 11; // 11 Representa Reporte

        public virtual int TipoProducto { get { return tipoProducto; } }

        public Reporte()
        {
            CoautorExternoReportes = new List<CoautorExternoReporte>();
            CoautorInternoReportes = new List<CoautorInternoReporte>();
            InstitucionReportes = new List<InstitucionReporte>();
        }

        public virtual void AddCoautorExterno(CoautorExternoProducto coautorExterno)
        {
            coautorExterno.TipoProducto = tipoProducto;
            CoautorExternoReportes.Add((CoautorExternoReporte) coautorExterno);
        }

        public virtual void AddCoautorInterno(CoautorInternoProducto coautorInterno)
        {
            coautorInterno.TipoProducto = tipoProducto;
            CoautorInternoReportes.Add((CoautorInternoReporte) coautorInterno);
        }

        public virtual void AddInstitucion(InstitucionProducto institucion)
        {
            institucion.TipoProducto = tipoProducto;
            InstitucionReportes.Add((InstitucionReporte) institucion);
        }

        public virtual void DeleteInstitucion(InstitucionProducto institucion)
        {
            InstitucionReportes.Remove((InstitucionReporte)institucion);
        }

        public virtual void DeleteCoautorInterno(CoautorInternoProducto coautorInterno)
        {
            CoautorInternoReportes.Remove((CoautorInternoReporte)coautorInterno);
        }

        public virtual void DeleteCoautorExterno(CoautorExternoProducto coautorExterno)
        {
            CoautorExternoReportes.Remove((CoautorExternoReporte) coautorExterno);
        }

        [Valid]
        public virtual Firma Firma { get; set; }

        [Valid]
        public virtual Archivo ComprobanteAceptado { get; set; }

        [Valid]
        public virtual Archivo ComprobantePublicado { get; set; }

        [Valid]
        public virtual Archivo ComprobanteReporte { get; set; }

        [DomainSignature]
        [NotNullNotEmpty]
        public virtual string Titulo { get; set; }

        public virtual int TipoReporte { get; set; }

        [Valid]
        public virtual IList<CoautorExternoReporte> CoautorExternoReportes { get; private set; }

        [Valid]
        public virtual IList<CoautorInternoReporte> CoautorInternoReportes { get; private set; }

        [Valid]
        public virtual IList<InstitucionReporte> InstitucionReportes { get; private set; }

        public virtual int PosicionAutor { get; set; }

        public virtual int EstadoProducto { get; set; }

        public virtual DateTime FechaAceptacion { get; set; }

        public virtual DateTime FechaPublicacion { get; set; }

        public virtual bool TieneProyecto { get; set; }

        public virtual Proyecto Proyecto { get; set; }

        public virtual Institucion Institucion { get; set; }

        public virtual AreaTematica AreaTematica { get; set; }

        public virtual string PalabraClave1 { get; set; }

        public virtual string PalabraClave2 { get; set; }

        public virtual string PalabraClave3 { get; set; }

        public virtual string Descripcion { get; set; }

        public virtual string Numero { get; set; }

        public virtual string Objetivo { get; set; }

        public virtual int NoPaginas { get; set; }

        public virtual int Puntuacion { get; set; }

        [NotNull]
        public virtual Usuario Usuario { get; set; }

        public virtual Departamento Departamento { get; set; }

        public virtual Sede Sede { get; set; }

        public virtual Usuario CreadoPor { get; set; }

        public virtual DateTime CreadoEl { get; set; }

        public virtual Usuario ModificadoPor { get; set; }

        public virtual DateTime ModificadoEl { get; set; }

        public virtual bool Activo { get; set; }
    }
}