using System;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public class EditorialLibroMapper : AutoFormMapper<EditorialLibro, EditorialLibroForm>, IEditorialLibroMapper
    {
        readonly ICatalogoService catalogoService;

        public EditorialLibroMapper(IRepository<EditorialLibro> repository, ICatalogoService catalogoService)
            : base(repository)
        {
            this.catalogoService = catalogoService;
        }

        protected override int GetIdFromMessage(EditorialLibroForm message)
        {
            return message.Id;
        }

        protected override void MapToModel(EditorialLibroForm message, EditorialLibro model)
        {
            model.Editorial = catalogoService.GetEditorialById(message.Editorial);

            if (model.IsTransient())
            {
                model.Activo = true;
                model.CreadorEl = DateTime.Now;
            }
            model.ModificadoEl = DateTime.Now;
        }
    }
}
