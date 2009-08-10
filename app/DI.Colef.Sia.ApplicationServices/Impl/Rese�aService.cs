using System;
using System.Collections.Generic;
using DecisionesInteligentes.Colef.Sia.Core;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.ApplicationServices
{
	public class Rese�aService : IRese�aService
    {
        readonly IRepository<Rese�a> rese�aRepository;

        public Rese�aService(IRepository<Rese�a> rese�aRepository)
        {
            this.rese�aRepository = rese�aRepository;
        }

        public Rese�a GetRese�aById(int id)
        {
            return rese�aRepository.Get(id);
        }

        public Rese�a[] GetAllRese�as()
        {
            return ((List<Rese�a>)rese�aRepository.GetAll()).ToArray();
        }
        
        public Rese�a[] GetActiveRese�as()
        {
            return ((List<Rese�a>)rese�aRepository.FindAll(new Dictionary<string, object> { { "Activo", true } })).ToArray();
        }

        public void SaveRese�a(Rese�a rese�a)
        {
            if(rese�a.Id == 0)
            {
                rese�a.Puntuacion = 0;
                rese�a.Activo = true;
                rese�a.CreadorEl = DateTime.Now;
            }
            rese�a.ModificadoEl = DateTime.Now;
            
            rese�aRepository.SaveOrUpdate(rese�a);
        }
    }
}
