using System;
using System.Collections.Generic;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Core.DataInterfaces;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.ApplicationServices
{
	public class EventoService : IEventoService
    {
        readonly IRepository<Evento> eventoRepository;
        readonly IProductoQuerying productoQuerying;

        public EventoService(IRepository<Evento> eventoRepository, IProductoQuerying productoQuerying)
        {
            this.eventoRepository = eventoRepository;
            this.productoQuerying = productoQuerying;
        }

        public Evento GetEventoById(int id)
        {
            return eventoRepository.Get(id);
        }

        public Evento[] GetAllEventos()
        {
            return ((List<Evento>)eventoRepository.GetAll()).ToArray();
        }
        
        public Evento[] GetActiveEventos()
        {
            return ((List<Evento>)eventoRepository.FindAll(new Dictionary<string, object> { { "Activo", true } })).ToArray();
        }

        public void SaveEvento(Evento evento)
        {
            if(evento.Id == 0)
            {
                evento.Puntuacion = 0;
                evento.Activo = true;
                evento.CreadoEl = DateTime.Now;
            }

            evento.PosicionAutor = 1;
            evento.ModificadoEl = DateTime.Now;
            
            eventoRepository.SaveOrUpdate(evento);
        }

	    public Evento[] GetAllEventos(Usuario usuario)
	    {
            return productoQuerying.GetProductosByUsuario<Evento>(usuario, "CoautorInternoEventos");
	    }
    }
}
