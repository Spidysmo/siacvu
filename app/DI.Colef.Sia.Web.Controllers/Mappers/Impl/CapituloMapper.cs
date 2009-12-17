using System;
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
        readonly IEditorialCapituloMapper editorialCapituloMapper;
        private Usuario usuarioCapitulo = null;

		public CapituloMapper(IRepository<Capitulo> repository,
		                      ICatalogoService catalogoService,
                              ICoautorExternoCapituloMapper coautorExternoCapituloMapper,
                              ICoautorInternoCapituloMapper coautorInternoCapituloMapper,
                              IAutorInternoCapituloMapper autorInternoCapituloMapper,
                              IAutorExternoCapituloMapper autorExternoCapituloMapper,
                              IProyectoService proyectoService, IEditorialCapituloMapper editorialCapituloMapper) 
			: base(repository)
        {
			this.catalogoService = catalogoService;
            this.coautorExternoCapituloMapper = coautorExternoCapituloMapper;
            this.coautorInternoCapituloMapper = coautorInternoCapituloMapper;
            this.autorInternoCapituloMapper = autorInternoCapituloMapper;
            this.autorExternoCapituloMapper = autorExternoCapituloMapper;
		    this.proyectoService = proyectoService;
		    this.editorialCapituloMapper = editorialCapituloMapper;
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
            model.AutorLibro = message.AutorLibro;
            model.Resumen = message.Resumen;
            model.TieneProyecto = message.TieneProyecto;
            model.Volumen = message.Volumen;
            model.TipoLibro = message.TipoLibro;

            if (model.Usuario == null || model.Usuario == usuarioCapitulo)
                model.PosicionAutor = message.PosicionAutor;

            if (message.EstadoProducto != 0)
            {
                if (message.FechaAceptacion.FromYearDateToDateTime() > DateTime.Parse("1910-01-01"))
                    model.FechaAceptacion = message.FechaAceptacion.FromYearDateToDateTime();
                if (message.FechaPublicacion.FromYearDateToDateTime() > DateTime.Parse("1910-01-01"))
                {
                    if (message.FechaAceptacion.FromYearDateToDateTime() == DateTime.Parse("1910-01-01"))
                        model.FechaAceptacion = message.FechaPublicacion.FromYearDateToDateTime();
                }
            }
            else
                model.FechaAceptacion = message.FechaAceptacion.FromYearDateToDateTime();

            model.FechaPublicacion = message.FechaPublicacion.FromYearDateToDateTime();

            model.TipoCapitulo = message.TipoCapitulo;
            model.EstadoProducto = message.EstadoProducto;
            model.Proyecto = proyectoService.GetProyectoById(message.ProyectoId);
            model.AreaTematica = catalogoService.GetAreaTematicaById(message.AreaTematicaId);

            model.Area = catalogoService.GetAreaById(message.AreaId);
            model.Disciplina = catalogoService.GetDisciplinaById(message.DisciplinaId);
            model.Subdisciplina = catalogoService.GetSubdisciplinaById(message.SubdisciplinaId);
        }

        public Capitulo Map(CapituloForm message, Usuario usuario)
        {
            usuarioCapitulo = usuario;
            var model = Map(message);

            model.ModificadoPor = usuario;

            return model;
        }

        public Capitulo Map(CapituloForm message, Usuario usuario, Investigador investigador)
        {
            usuarioCapitulo = usuario;
            var model = Map(message);

            if (model.IsTransient())
            {
                model.Usuario = usuario;
                model.CreadoPor = usuario;
                model.Sede = GetLatest(investigador.CargosInvestigador).Sede;
                model.Departamento = GetLatest(investigador.CargosInvestigador).Departamento;
            }

            if (model.Usuario != investigador.Usuario)
            {
                foreach (var coautor in model.CoautorInternoCapitulos)
                {
                    if (coautor.Investigador == investigador)
                        coautor.Posicion = message.PosicionAutor;
                }
            }

            model.ModificadoPor = usuario;

            return model;
        }

        public Capitulo Map(CapituloForm message, Usuario usuario, Investigador investigador, 
            CoautorExternoProductoForm[] coautoresExternos, CoautorInternoProductoForm[] coautoresInternos, 
            AutorExternoProductoForm[] autoresExternos, AutorInternoProductoForm[] autoresInternos, EditorialProductoForm[] editoriales)
        {
            var model = Map(message, usuario, investigador);

            foreach (var coautorExterno in coautoresExternos)
            {
                var coautor = coautorExternoCapituloMapper.Map(coautorExterno);

                coautor.CreadoPor = usuario;
                coautor.ModificadoPor = usuario;

                model.AddCoautorExterno(coautor);
            }

            foreach (var coautorInterno in coautoresInternos)
            {
                var coautor = coautorInternoCapituloMapper.Map(coautorInterno);

                coautor.CreadoPor = usuario;
                coautor.ModificadoPor = usuario;

                model.AddCoautorInterno(coautor);
            }

            foreach (var autorExterno in autoresExternos)
            {
                var autor = autorExternoCapituloMapper.Map(autorExterno);

                autor.CreadoPor = usuario;
                autor.ModificadoPor = usuario;

                model.AddAutorExterno(autor);
            }

            foreach (var autorInterno in autoresInternos)
            {
                var autor = autorInternoCapituloMapper.Map(autorInterno);

                autor.CreadoPor = usuario;
                autor.ModificadoPor = usuario;

                model.AddAutorInterno(autor);
            }

            foreach (var editorial in editoriales)
            {
                var editorialProducto = editorialCapituloMapper.Map(editorial);

                editorialProducto.CreadoPor = usuario;
                editorialProducto.ModificadoPor = usuario;

                model.AddEditorial(editorialProducto);
            }

            return model;
        }
    }
}