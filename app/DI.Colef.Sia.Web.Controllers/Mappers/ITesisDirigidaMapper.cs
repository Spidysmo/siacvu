using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public interface ITesisDirigidaMapper : IMapper<TesisDirigida, TesisDirigidaForm>
    {
        TesisDirigida Map(TesisDirigidaForm message, Usuario usuario, Investigador investigador);
        TesisDirigida Map(TesisDirigidaForm message, Usuario usuario);
    }
}
