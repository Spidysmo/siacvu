using System;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public class EditorialResenaMapper : AutoFormMapper<EditorialResena, EditorialProductoForm>, IEditorialResenaMapper
    {
        readonly ICatalogoService catalogoService;
		
		public EditorialResenaMapper(IRepository<EditorialResena> repository, ICatalogoService catalogoService) 
			: base(repository)
        {
			this.catalogoService = catalogoService;
        }

        protected override int GetIdFromMessage(EditorialProductoForm message)
        {
            return message.Id;
        }

        protected override void MapToModel(EditorialProductoForm message, EditorialResena model)
        {
            model.Editorial = catalogoService.GetEditorialById(message.EditorialId);

            if (model.IsTransient())
            {
                model.Activo = true;
                model.CreadorEl = DateTime.Now;
            }
            model.ModificadoEl = DateTime.Now;
        }
    }
}