using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using DecisionesInteligentes.Colef.Sia.Web.Extensions;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public class CapituloMapper : AutoFormMapper<Capitulo, CapituloForm>, ICapituloMapper
    {
		readonly ICatalogoService catalogoService;
        readonly ICoautorExternoCapituloMapper coautorExternoCapituloMapper;
        readonly ICoautorInternoCapituloMapper coautorInternoCapituloMapper;
        readonly IAutorInternoCapituloMapper autorInternoCapituloMapper;
        readonly IAutorExternoCapituloMapper autorExternoCapituloMapper;
        readonly IProyectoService proyectoService;

		public CapituloMapper(IRepository<Capitulo> repository,
		                      ICatalogoService catalogoService,
                              ICoautorExternoCapituloMapper coautorExternoCapituloMapper,
                              ICoautorInternoCapituloMapper coautorInternoCapituloMapper,
                              IAutorInternoCapituloMapper autorInternoCapituloMapper,
                              IAutorExternoCapituloMapper autorExternoCapituloMapper,
                              IProyectoService proyectoService) 
			: base(repository)
        {
			this.catalogoService = catalogoService;
            this.coautorExternoCapituloMapper = coautorExternoCapituloMapper;
            this.coautorInternoCapituloMapper = coautorInternoCapituloMapper;
            this.autorInternoCapituloMapper = autorInternoCapituloMapper;
            this.autorExternoCapituloMapper = autorExternoCapituloMapper;
		    this.proyectoService = proyectoService;
        }		
		
        protected override int GetIdFromMessage(CapituloForm message)
        {
            return message.Id;
        }

        protected override void MapToModel(CapituloForm message, Capitulo model)
        {
            model.NombreCapitulo = message.NombreCapitulo;
            model.NombreLibro = message.NombreLibro;
            model.NoPaginas = message.NoPaginas;
            model.NoCitas = message.NoCitas;
            model.PosicionAutor = message.PosicionAutor;
            model.AutorLibro = message.AutorLibro;
            model.Resumen = message.Resumen;
            model.TieneProyecto = message.TieneProyecto;
            model.Volumen = message.Volumen;
            model.TipoLibro = message.TipoLibro;

            model.FechaPublicacion = message.FechaPublicacion.FromYearDateToDateTime();
            model.FechaAceptacion = message.FechaAceptacion.FromYearDateToDateTime();

            model.Editorial = catalogoService.GetEditorialById(message.Editorial);
            model.TipoCapitulo = message.TipoCapitulo;
            model.EstadoProducto = message.EstadoProducto;
            //model.Idioma = catalogoService.GetIdiomaById(message.Idioma);
            model.Proyecto = proyectoService.GetProyectoById(message.ProyectoId);
            model.AreaTematica = catalogoService.GetAreaTematicaById(message.AreaTematicaId);
            model.Subdisciplina = catalogoService.GetSubdisciplinaById(message.SubdisciplinaId);
        }

        public Capitulo Map(CapituloForm message, Usuario usuario, Investigador investigador)
        {
            var model = Map(message);

            if (model.IsTransient())
            {
                model.Usuario = usuario;
                model.CreadorPor = usuario;
                model.Sede = GetLatest(investigador.CargosInvestigador).Sede;
                model.Departamento = GetLatest(investigador.CargosInvestigador).Departamento;
            }

            model.ModificadoPor = usuario;

            return model;
        }

        public Capitulo Map(CapituloForm message, Usuario usuario, Investigador investigador,
            CoautorExternoProductoForm[] coautoresExternos, CoautorInternoProductoForm[] coautoresInternos,
            AutorExternoProductoForm[] autoresExternos, AutorInternoProductoForm[] autoresInternos)
        {
            var model = Map(message, usuario, investigador);

            foreach (var coautorExterno in coautoresExternos)
            {
                var coautor =
                    coautorExternoCapituloMapper.Map(coautorExterno);

                coautor.CreadorPor = usuario;
                coautor.ModificadoPor = usuario;

                model.AddCoautorExterno(coautor);
            }

            foreach (var coautorInterno in coautoresInternos)
            {
                var coautor =
                    coautorInternoCapituloMapper.Map(coautorInterno);

                coautor.CreadorPor = usuario;
                coautor.ModificadoPor = usuario;

                model.AddCoautorInterno(coautor);
            }

            foreach (var autorExterno in autoresExternos)
            {
                var autor =
                    autorExternoCapituloMapper.Map(autorExterno);

                autor.CreadorPor = usuario;
                autor.ModificadoPor = usuario;

                model.AddAutorExterno(autor);
            }

            foreach (var autorInterno in autoresInternos)
            {
                var autor =
                    autorInternoCapituloMapper.Map(autorInterno);

                autor.CreadorPor = usuario;
                autor.ModificadoPor = usuario;

                model.AddAutorInterno(autor);
            }

            return model;
        }
    }
}