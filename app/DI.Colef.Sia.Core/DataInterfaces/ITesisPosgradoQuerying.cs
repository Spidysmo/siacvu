namespace DecisionesInteligentes.Colef.Sia.Core.DataInterfaces
{
    public interface ITesisPosgradoQuerying
    {
        TesisPosgrado[] FindUnsedTesisInvestigador(Investigador investigador);
    }
}