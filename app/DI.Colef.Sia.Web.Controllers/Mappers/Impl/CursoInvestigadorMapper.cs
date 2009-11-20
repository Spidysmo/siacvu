using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using DecisionesInteligentes.Colef.Sia.Web.Extensions;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public class CursoInvestigadorMapper : AutoFormMapper<CursoInvestigador, CursoInvestigadorForm>, ICursoInvestigadorMapper
    {
        readonly ICatalogoService catalogoService;

        public CursoInvestigadorMapper(IRepository<CursoInvestigador> repository, ICatalogoService catalogoService)
            : base(repository)
        {
            this.catalogoService = catalogoService;
        }

        protected override int GetIdFromMessage(CursoInvestigadorForm message)
        {
            return message.Id;
        }

        protected override void MapToModel(CursoInvestigadorForm message, CursoInvestigador model)
        {
            model.Nombre = message.Nombre;
            model.NombreInvestigador = message.NombreInvestigador;
            model.FechaInicial = message.FechaInicial.FromShortDateToDateTime();
            model.FechaFinal = message.FechaFinal.FromShortDateToDateTime();
            model.NumeroHoras = message.NumeroHoras;

            model.ProgramaEstudio = catalogoService.GetProgramaEstudioById(message.ProgramaEstudioId);
            model.Institucion = catalogoService.GetInstitucionById(message.InstitucionId);
        }
    }
}