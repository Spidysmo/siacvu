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
        readonly IResponsableInternoCapituloMapper responsableInternoCapituloMapper;
        readonly IResponsableExternoCapituloMapper responsableExternoCapituloMapper;
        readonly IProyectoService proyectoService;

		public CapituloMapper(IRepository<Capitulo> repository,
		                      ICatalogoService catalogoService,
                              ICoautorExternoCapituloMapper coautorExternoCapituloMapper,
                              ICoautorInternoCapituloMapper coautorInternoCapituloMapper,
                              IResponsableInternoCapituloMapper responsableInternoCapituloMapper,
                              IResponsableExternoCapituloMapper responsableExternoCapituloMapper,
                              IProyectoService proyectoService) 
			: base(repository)
        {
			this.catalogoService = catalogoService;
            this.coautorExternoCapituloMapper = coautorExternoCapituloMapper;
            this.coautorInternoCapituloMapper = coautorInternoCapituloMapper;
            this.responsableInternoCapituloMapper = responsableInternoCapituloMapper;
            this.responsableExternoCapituloMapper = responsableExternoCapituloMapper;
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
            model.Editorial = message.Editorial;
            model.NoPaginas = message.NoPaginas;
            model.Volumen = message.Volumen;
            model.PosicionAutor = message.PosicionAutor;
            model.AutorLibro = message.AutorLibro;
            model.Traductor = message.Traductor;
            model.Resumen = message.Resumen;
            model.TieneProyecto = message.TieneProyecto;

            model.FechaPublicacion = message.FechaPublicacion.FromShortDateToDateTime();
            model.FechaAceptacion = message.FechaAceptacion.FromShortDateToDateTime();
            model.FechaEdicion = message.FechaEdicion.FromYearDateToDateTime();

            model.Institucion = catalogoService.GetInstitucionById(message.InstitucionId);
            model.TipoCapitulo = catalogoService.GetTipoCapituloById(message.TipoCapitulo);
            model.EstadoProducto = catalogoService.GetEstadoProductoById(message.EstadoProducto);
            model.Idioma = catalogoService.GetIdiomaById(message.Idioma);
            model.Pais = catalogoService.GetPaisById(message.Pais);
            model.FormaParticipacion = catalogoService.GetFormaParticipacionById(message.FormaParticipacion);
            model.TipoParticipacion = catalogoService.GetTipoParticipacionById(message.TipoParticipacion);
            model.TipoParticipante = catalogoService.GetTipoParticipanteById(message.TipoParticipante);
            model.Area = catalogoService.GetAreaById(message.Area);
            model.Disciplina = catalogoService.GetDisciplinaById(message.Disciplina);
            model.Subdisciplina = catalogoService.GetSubdisciplinaById(message.Subdisciplina);
            model.Proyecto = proyectoService.GetProyectoById(message.ProyectoId);
        }

        public Capitulo Map(CapituloForm message, Usuario usuario, PeriodoReferencia periodo, Investigador investigador)
        {
            var model = Map(message);

            if (model.IsTransient())
            {
                model.Usuario = usuario;
                model.CreadorPor = usuario;
                model.PeriodoReferencia = periodo;
                model.Sede = investigador.CargosInvestigador[investigador.CargosInvestigador.Count - 1].Sede;
                model.Departamento = investigador.CargosInvestigador[investigador.CargosInvestigador.Count - 1].Departamento;
            }

            model.ModificadoPor = usuario;

            return model;
        }

        public Capitulo Map(CapituloForm message, Usuario usuario, PeriodoReferencia periodo, Investigador investigador,
            CoautorExternoProductoForm[] coautoresExternos, CoautorInternoProductoForm[] coautoresInternos,
            ResponsableExternoProductoForm[] responsablesExternos, ResponsableInternoProductoForm[] responsablesInternos)
        {
            var model = Map(message, usuario, periodo, investigador);

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

            foreach (var responsableExterno in responsablesExternos)
            {
                var responsable =
                    responsableExternoCapituloMapper.Map(responsableExterno);

                responsable.CreadorPor = usuario;
                responsable.ModificadoPor = usuario;

                model.AddResponsableExterno(responsable);
            }

            foreach (var responsableInterno in responsablesInternos)
            {
                var responsable =
                    responsableInternoCapituloMapper.Map(responsableInterno);

                responsable.CreadorPor = usuario;
                responsable.ModificadoPor = usuario;

                model.AddResponsableInterno(responsable);
            }

            return model;
        }
    }
}