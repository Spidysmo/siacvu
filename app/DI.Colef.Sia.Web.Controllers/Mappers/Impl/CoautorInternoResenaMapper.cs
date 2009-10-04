using System;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public class CoautorInternoResenaMapper : AutoFormMapper<CoautorInternoResena, CoautorInternoProductoForm>, ICoautorInternoResenaMapper
    {
        readonly IInvestigadorService investigadorService;

        public CoautorInternoResenaMapper(IRepository<CoautorInternoResena> repository, IInvestigadorService investigadorService)
            : base(repository)
        {
            this.investigadorService = investigadorService;
        }

        protected override int GetIdFromMessage(CoautorInternoProductoForm message)
        {
            return message.Id;
        }

        protected override void MapToModel(CoautorInternoProductoForm message, CoautorInternoResena model)
        {
            model.Investigador = investigadorService.GetInvestigadorById(message.InvestigadorId);

            if (model.IsTransient())
            {
                model.Activo = true;
                model.CreadorEl = DateTime.Now;
            }
            model.ModificadoEl = DateTime.Now;
            model.Posicion = message.Posicion;
        }
    }
}
