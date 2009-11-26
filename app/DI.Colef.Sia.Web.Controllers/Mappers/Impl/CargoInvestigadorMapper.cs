using System;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public class CargoInvestigadorMapper : AutoFormMapper<CargoInvestigador, CargoInvestigadorForm>, ICargoInvestigadorMapper
    {
        readonly ICatalogoService catalogoService;

        public CargoInvestigadorMapper(IRepository<CargoInvestigador> repository,
            ICatalogoService catalogoService) : base(repository)
        {
            this.catalogoService = catalogoService;
        }

        protected override int GetIdFromMessage(CargoInvestigadorForm message)
        {
            return message.Id;
        }

        protected override void MapToModel(CargoInvestigadorForm message, CargoInvestigador model)
        {
            model.Departamento = catalogoService.GetDepartamentoById(message.Departamento);
            model.Puesto = catalogoService.GetPuestoById(message.Puesto);
            model.Sede = catalogoService.GetSedeById(message.Sede);

            if (model.IsTransient())
            {
                model.Activo = true;
                model.CreadorEl = DateTime.Now;
            }
            model.ModificadoEl = DateTime.Now;
        }
    }
}