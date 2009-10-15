using System;
using NHibernate.Validator.Constraints;
using SharpArch.Core.DomainModel;

namespace DecisionesInteligentes.Colef.Sia.Core
{
    public class Archivo : Entity, IBaseEntity
    {
        [NotNullNotEmpty]
        public virtual string Nombre { get; set; }

        public virtual TipoArchivo TipoArchivo { get; set; }

        public virtual int TipoProducto { get; set; }

        public virtual byte[] Datos { get; set; }

        public virtual Usuario CreadorPor { get; set; }

        public virtual DateTime CreadorEl { get; set; }

        public virtual Usuario ModificadoPor { get; set; }

        public virtual DateTime ModificadoEl { get; set; }

        public virtual bool Activo { get; set; }
    }

    public class ArchivoArticulo : Archivo
    {

    }

    public class ArchivoCapitulo : Archivo
    {

    }

    public class ArchivoCurso : Archivo
    {

    }

    public class ArchivoDictamen : Archivo
    {

    }

    public class ArchivoDistincion : Archivo
    {

    }

    public class ArchivoEvento : Archivo
    {

    }

    public class ArchivoLibro : Archivo
    {

    }

    public class ArchivoOrganoExterno : Archivo
    {

    }

    public class ArchivoParticipacion : Archivo
    {

    }

    public class ArchivoParticipacionMedio : Archivo
    {

    }

    public class ArchivoReporte : Archivo
    {

    }

    public class ArchivoResena : Archivo
    {

    }

    public class ArchivoTesisDirigida : Archivo
    {

    }
}