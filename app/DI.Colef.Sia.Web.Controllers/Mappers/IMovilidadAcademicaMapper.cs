using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public interface IMovilidadAcademicaMapper : IMapper<MovilidadAcademica, MovilidadAcademicaForm>
    {
        MovilidadAcademica Map(MovilidadAcademicaForm message, Usuario usuario);
    }
}
