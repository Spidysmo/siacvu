using DecisionesInteligentes.Colef.Sia.Core;
using FluentNHibernate.AutoMap;
using FluentNHibernate.AutoMap.Alterations;

namespace DecisionesInteligentes.Colef.Sia.Data.NHibernateMaps.Alteration
{
    public class AutorExternoAlteration : IAutoMappingAlteration
    {
        public void Alter(AutoPersistenceModel model)
        {
            model.ForTypesThatDeriveFrom<AutorExternoProducto>(
                    map => map.DiscriminateSubClassesOnColumn("TipoProducto", 1));
        }
    }
}