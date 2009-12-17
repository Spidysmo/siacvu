using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public class SubdisciplinaMapper : AutoFormMapper<Subdisciplina, SubdisciplinaForm>, ISubdisciplinaMapper
    {
        readonly ICatalogoService catalogoService;

        public SubdisciplinaMapper(IRepository<Subdisciplina> repository, ICatalogoService catalogoService) : base(repository)
        {
            this.catalogoService = catalogoService;
        }

        protected override int GetIdFromMessage(SubdisciplinaForm message)
        {
            return message.Id;
        }

        protected override void MapToModel(SubdisciplinaForm message, Subdisciplina model)
        {
			model.Nombre = message.Nombre;
            model.CodigoConacyt = message.CodigoConacyt;
            model.Disciplina = catalogoService.GetDisciplinaById(message.Disciplina);
        }
    }
}
