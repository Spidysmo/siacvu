using System;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public class AutorResenaMapper : AutoFormMapper<AutorResena, AutorResenaForm>, IAutorResenaMapper
    {
		readonly IInvestigadorService investigadorService;
		
		public AutorResenaMapper(IRepository<AutorResena> repository,
            IInvestigadorService investigadorService)
			: base(repository)
        {	
            this.investigadorService = investigadorService;
        }
		
        protected override int GetIdFromMessage(AutorResenaForm message)
        {
            return message.Id;
        }

        protected override void MapToModel(AutorResenaForm message, AutorResena model)
        {
            model.Investigador = investigadorService.GetInvestigadorById(message.Investigador);
			
			if (model.IsTransient())
            {
                model.Activo = true;
                model.CreadorEl = DateTime.Now;
            }

            model.ModificadoEl = DateTime.Now;
        }
    }
}