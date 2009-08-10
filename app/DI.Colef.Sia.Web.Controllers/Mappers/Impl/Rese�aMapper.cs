using System;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using DecisionesInteligentes.Colef.Sia.Web.Extensions;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public class Rese�aMapper : AutoFormMapper<Rese�a, Rese�aForm>, IRese�aMapper
    {
        readonly ICatalogoService catalogoService;
        readonly ICoautorExternoRese�aMapper coautorExternoRese�aMapper;
        readonly ICoautorInternoRese�aMapper coautorInternoRese�aMapper;


        public Rese�aMapper(IRepository<Rese�a> repository, ICatalogoService catalogoService, 
            ICoautorExternoRese�aMapper coautorExternoRese�aMapper, ICoautorInternoRese�aMapper coautorInternoRese�aMapper)
            : base(repository)
        {
            this.catalogoService = catalogoService;
            this.coautorExternoRese�aMapper = coautorExternoRese�aMapper;
            this.coautorInternoRese�aMapper = coautorInternoRese�aMapper;
        }

        protected override int GetIdFromMessage(Rese�aForm message)
        {
            return message.Id;
        }

        protected override void MapToModel(Rese�aForm message, Rese�a model)
        {
            model.ReferenciaBibliograficaLibro = message.ReferenciaBibliograficaLibro;
            model.ReferenciaBibliograficaRevista = message.ReferenciaBibliograficaRevista;
            model.NombreProducto = message.NombreProducto;
            model.PaginaInicial = message.PaginaInicial;
            model.PaginaFinal = message.PaginaFinal;
            model.TituloLibro = message.TituloLibro;
            model.NombreRevista = message.NombreRevista;
            model.Editorial = message.Editorial;
            model.PalabrasClave = message.PalabrasClave;
            model.FechaEdicion = message.FechaEdicion.FromShortDateToDateTime();
            model.FechaAceptacion = message.FechaAceptacion.FromShortDateToDateTime();

            model.EstadoProducto = catalogoService.GetEstadoProductoById(message.EstadoProducto);
            model.PeriodoReferencia = catalogoService.GetPeriodoReferenciaById(message.PeriodoReferencia);
            model.Proyecto = catalogoService.GetProyectoById(message.Proyecto);
            model.LineaTematica = catalogoService.GetLineaTematicaById(message.LineaTematica);
            model.Pais = catalogoService.GetPaisById(message.Pais);
            model.Area = catalogoService.GetAreaById(message.Area);
            model.Disciplina = catalogoService.GetDisciplinaById(message.Disciplina);
            model.Subdisciplina = catalogoService.GetSubdisciplinaById(message.Subdisciplina);

            if (message.CoautorExternoRese�a != null)
                model.AddCoautorExterno(coautorExternoRese�aMapper.Map(message.CoautorExternoRese�a));
            if (message.CoautorInternoRese�a != null)
                model.AddCoautorInterno(coautorInternoRese�aMapper.Map(message.CoautorInternoRese�a));
        }

        public Rese�a Map(Rese�aForm message, Usuario usuario, Investigador investigador)
        {
            var model = Map(message);

            if (model.IsTransient())
            {
                model.Investigador = investigador;
                model.CreadorPor = usuario;
            }

            model.ModificadoPor = usuario;

            return model;
        }
    }
}
