using DecisionesInteligentes.Colef.Sia.Core;
using FluentNHibernate.AutoMap;
using FluentNHibernate.AutoMap.Alterations;

namespace DecisionesInteligentes.Colef.Sia.Data.NHibernateMaps.Alteration
{
    public class ParticipanteExternoAlteration : IAutoMappingAlteration
    {
        public void Alter(AutoPersistenceModel model)
        {
            model.ForTypesThatDeriveFrom<ParticipanteExternoProducto>(
                    map => map.DiscriminateSubClassesOnColumn("TipoProducto", 1));
        }
    }
}