using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{

    public interface IRese�aMapper : IMapper<Rese�a, Rese�aForm>
    {
        Rese�a Map(Rese�aForm message, Usuario usuario, Investigador investigador);
    }
}
