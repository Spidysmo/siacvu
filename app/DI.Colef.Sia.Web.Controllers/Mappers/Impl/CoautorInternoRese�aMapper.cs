using System;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public class CoautorInternoRese�aMapper : AutoFormMapper<CoautorInternoRese�a, CoautorInternoRese�aForm>, ICoautorInternoRese�aMapper
    {
        readonly IInvestigadorService investigadorService;

        public CoautorInternoRese�aMapper(IRepository<CoautorInternoRese�a> repository, IInvestigadorService investigadorService)
            : base(repository)
        {
            this.investigadorService = investigadorService;
        }

        protected override int GetIdFromMessage(CoautorInternoRese�aForm message)
        {
            return message.Id;
        }

        protected override void MapToModel(CoautorInternoRese�aForm message, CoautorInternoRese�a model)
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
