using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public interface IReporteMapper : IMapper<Reporte, ReporteForm>
    {
        Reporte Map(ReporteForm message, Usuario usuario, PeriodoReferencia periodo);
        Reporte Map(ReporteForm message, Usuario usuario, PeriodoReferencia periodo,
                    CoautorExternoProductoForm[] coautoresExternos, CoautorInternoProductoForm[] coautoresInternos);
    }
}
