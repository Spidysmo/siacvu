using System;
using DecisionesInteligentes.Colef.Sia.Core;

namespace DecisionesInteligentes.Colef.Sia.ApplicationServices
{
	public interface IRese�aService
    {
        Rese�a GetRese�aById(int id);
        Rese�a[] GetAllRese�as();
        Rese�a[] GetActiveRese�as();
        void SaveRese�a(Rese�a rese�a);
    }
}
