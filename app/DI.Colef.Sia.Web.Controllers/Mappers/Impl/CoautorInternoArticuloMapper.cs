using System;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public class CoautorInternoArticuloMapper : AutoFormMapper<CoautorInternoArticulo, CoautorInternoArticuloForm>, ICoautorInternoArticuloMapper
    {
        readonly IInvestigadorService investigadorService;

        public CoautorInternoArticuloMapper(IRepository<CoautorInternoArticulo> repository,
            IInvestigadorService investigadorService)
            : base(repository)
        {
            this.investigadorService = investigadorService;
        }

        protected override int GetIdFromMessage(CoautorInternoArticuloForm message)
        {
            return message.Id;
        }

        protected override void MapToModel(CoautorInternoArticuloForm message, CoautorInternoArticulo model)
        {
            model.Investigador = investigadorService.GetInvestigadorById(message.InvestigadorId);

            if (model.IsTransient())
            {
                model.Activo = true;
                model.CreadorEl = DateTime.Now;
            }
            model.ModificadoEl = DateTime.Now;
        }
    }
}
