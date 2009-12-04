using System;
using System.Collections.Generic;
using DecisionesInteligentes.Colef.Sia.Core.NHibernateValidator;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;
using SharpArch.Core.NHibernateValidator;

namespace DecisionesInteligentes.Colef.Sia.Core
{
    [ObraTraducidaValidator]
	[HasUniqueDomainSignature]
    public class ObraTraducida : Entity, IBaseEntity, IAutor, ICoautor, IEditorial
    {
        const int tipoProducto = 20; // 20 Representa Obra Traducida

		public ObraTraducida()
		{
            CoautorExternoObraTraducidas = new List<CoautorExternoObraTraducida>();
            CoautorInternoObraTraducidas = new List<CoautorInternoObraTraducida>();
            AutorInternoObraTraducidas = new List<AutorInternoObraTraducida>();
            AutorExternoObraTraducidas = new List<AutorExternoObraTraducida>();
            FirmaObraTraducidas = new List<FirmaObraTraducida>();
            ArchivoObraTraducidas = new List<ArchivoObraTraducida>();
            EditorialObraTraducidas = new List<EditorialObraTraducida>();
		}

        public virtual void AddCoautorExterno(CoautorExternoProducto coautorExterno)
        {
            coautorExterno.TipoProducto = tipoProducto;
            CoautorExternoObraTraducidas.Add((CoautorExternoObraTraducida)coautorExterno);
        }

        public virtual void AddCoautorInterno(CoautorInternoProducto coautorInterno)
        {
            coautorInterno.TipoProducto = tipoProducto;
            CoautorInternoObraTraducidas.Add((CoautorInternoObraTraducida)coautorInterno);
        }
        public virtual void AddAutorInterno(AutorInternoProducto autorInterno)
        {
            autorInterno.TipoProducto = tipoProducto;
            AutorInternoObraTraducidas.Add((AutorInternoObraTraducida)autorInterno);
        }
        public virtual void AddAutorExterno(AutorExternoProducto autorExterno)
        {
            autorExterno.TipoProducto = tipoProducto;
            AutorExternoObraTraducidas.Add((AutorExternoObraTraducida)autorExterno);
        }

        public virtual void AddFirma(Firma firma)
        {
            firma.TipoProducto = tipoProducto;
            FirmaObraTraducidas.Add((FirmaObraTraducida)firma);
        }

        public virtual void AddArchivo(Archivo archivo)
        {
            archivo.TipoProducto = tipoProducto;
            ArchivoObraTraducidas.Add((ArchivoObraTraducida)archivo);
        }

        public virtual void AddEditorial(EditorialProducto editorial)
        {
            editorial.TipoProducto = tipoProducto;
            EditorialObraTraducidas.Add((EditorialObraTraducida)editorial);
        }

        public virtual void DeleteEditorial(EditorialProducto editorial)
        {
            EditorialObraTraducidas.Remove((EditorialObraTraducida)editorial);
        }

        public virtual void DeleteArchivo(Archivo archivo)
        {
            ArchivoObraTraducidas.Remove((ArchivoObraTraducida)archivo);
        }

        public virtual void DeleteFirma(Firma firma)
        {
            FirmaObraTraducidas.Remove((FirmaObraTraducida)firma);
        }

        public virtual void DeleteCoautorInterno(CoautorInternoProducto coautorInterno)
        {
            CoautorInternoObraTraducidas.Remove((CoautorInternoObraTraducida)coautorInterno);
        }

        public virtual void DeleteCoautorExterno(CoautorExternoProducto coautorExterno)
        {
            CoautorExternoObraTraducidas.Remove((CoautorExternoObraTraducida)coautorExterno);
        }

        public virtual void DeleteAutorInterno(AutorInternoProducto coautorInterno)
        {
            AutorInternoObraTraducidas.Remove((AutorInternoObraTraducida)coautorInterno);
        }

        public virtual void DeleteAutorExterno(AutorExternoProducto coautorExterno)
        {
            AutorExternoObraTraducidas.Remove((AutorExternoObraTraducida)coautorExterno);
        }

        [Valid]
        public virtual IList<CoautorExternoObraTraducida> CoautorExternoObraTraducidas { get; private set; }

        [Valid]
        public virtual IList<CoautorInternoObraTraducida> CoautorInternoObraTraducidas { get; private set; }

        [Valid]
        public virtual IList<FirmaObraTraducida> FirmaObraTraducidas { get; private set; }

        [Valid]
        public virtual IList<ArchivoObraTraducida> ArchivoObraTraducidas { get; private set; }

        [Valid]
        public virtual IList<AutorInternoObraTraducida> AutorInternoObraTraducidas { get; private set; }

        [Valid]
        public virtual IList<AutorExternoObraTraducida> AutorExternoObraTraducidas { get; private set; }

        [Valid]
        public virtual IList<EditorialObraTraducida> EditorialObraTraducidas { get; private set; }

		[DomainSignature]
		[NotNullNotEmpty]
		public virtual string Nombre { get; set; }

		public virtual Idioma Idioma { get; set; }

		public virtual string NombreTraductor { get; set; }

		public virtual string ApellidoPaterno { get; set; }

		public virtual string ApellidoMaterno { get; set; }

		public virtual string NombreObraTraducida { get; set; }

		public virtual int TipoObraTraducida { get; set; }

		public virtual AreaTematica AreaTematica { get; set; }

		public virtual string PalabraClave1 { get; set; }

		public virtual string PalabraClave2 { get; set; }

		public virtual string PalabraClave3 { get; set; }

		public virtual int EstadoProducto { get; set; }

		public virtual DateTime FechaAceptacion { get; set; }

		public virtual DateTime FechaPublicacion { get; set; }

		public virtual RevistaPublicacion RevistaPublicacion { get; set; }

		public virtual int Volumen { get; set; }

		public virtual int Numero { get; set; }

		public virtual int PaginaInicial { get; set; }

		public virtual int PaginaFinal { get; set; }

		public virtual string NombreLibro { get; set; }

		public virtual int TipoLibro { get; set; }

		public virtual string Resumen { get; set; }

        public virtual int NoPaginas { get; set; }

        public virtual int NoCitas { get; set; }

		public virtual string ISBN { get; set; }

        public virtual int Edicion { get; set; }

		public virtual int Reimpresion { get; set; }

		public virtual int Tiraje { get; set; }

        public virtual int Puntuacion { get; set; }

        [NotNull]
        public virtual Usuario Usuario { get; set; }

        public virtual Departamento Departamento { get; set; }

        public virtual Sede Sede { get; set; }

        public virtual int PosicionAutor { get; set; }

		public virtual Usuario CreadoPor { get; set; }

		public virtual DateTime CreadoEl { get; set; }

		public virtual Usuario ModificadoPor { get; set; }

		public virtual DateTime ModificadoEl { get; set; }

		public virtual bool Activo { get; set; }
    }
}
