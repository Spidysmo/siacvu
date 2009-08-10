using System;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public class CoautorExternoRese�aMapper : AutoFormMapper<CoautorExternoRese�a, CoautorExternoRese�aForm>, ICoautorExternoRese�aMapper
    {
        readonly ICatalogoService catalogoService;

        public CoautorExternoRese�aMapper(IRepository<CoautorExternoRese�a> repository, ICatalogoService catalogoService)
            : base(repository)
        {
            this.catalogoService = catalogoService;
        }

        protected override int GetIdFromMessage(CoautorExternoRese�aForm message)
        {
            return message.Id;
        }

        protected override void MapToModel(CoautorExternoRese�aForm message, CoautorExternoRese�a model)
        {
            model.InvestigadorExterno = catalogoService.GetInvestigadorExternoById(message.InvestigadorExternoId);

            if (model.IsTransient())
            {
                model.Activo = true;
                model.CreadorEl = DateTime.Now;
            }
            model.ModificadoEl = DateTime.Now;
        }
    }
}
