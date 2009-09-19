using System;
using DecisionesInteligentes.Colef.Sia.ApplicationServices;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Web.Controllers.Models;
using DecisionesInteligentes.Colef.Sia.Web.Extensions;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Mappers
{
    public class ProyectoMapper : AutoFormMapper<Proyecto, ProyectoForm>, IProyectoMapper
    {
        readonly ICatalogoService catalogoService;
        readonly IResponsableInternoProyectoMapper responsableInternoProyectoMapper;
        readonly IParticipanteInternoProyectoMapper participanteInternoProyectoMapper;
        readonly IParticipanteExternoProyectoMapper participanteExternoProyectoMapper;
        readonly IRecursoFinancieroProyectoMapper recursoFinancieroProyectoMapper;

        public ProyectoMapper(IRepository<Proyecto> repository, ICatalogoService catalogoService,
                              IResponsableInternoProyectoMapper responsableInternoProyectoMapper,
                              IParticipanteInternoProyectoMapper participanteInternoProyectoMapper,
                              IParticipanteExternoProyectoMapper participanteExternoProyectoMapper,
                              IRecursoFinancieroProyectoMapper recursoFinancieroProyectoMapper)
            : base(repository)
        {
            this.catalogoService = catalogoService;
            this.responsableInternoProyectoMapper = responsableInternoProyectoMapper;
            this.participanteInternoProyectoMapper = participanteInternoProyectoMapper;
            this.participanteExternoProyectoMapper = participanteExternoProyectoMapper;
            this.recursoFinancieroProyectoMapper = recursoFinancieroProyectoMapper;
        }

        protected override int GetIdFromMessage(ProyectoForm message)
        {
            return message.Id;
        }

        protected override void MapToModel(ProyectoForm message, Proyecto model)
        {
            model.Nombre = message.Nombre;
            model.ConRecursos = message.ConRecursos;
            model.ConConvenio = message.ConConvenio;
            model.ObjetivoGeneral = message.ObjetivoGeneral;
            model.PalabraClave1 = message.PalabraClave1;
            model.PalabraClave2 = message.PalabraClave2;
            model.PalabraClave3 = message.PalabraClave3;
            model.ImpactoAcademicoEsperado = message.ImpactoAcademicoEsperado;
            model.UsuariosPotenciales = message.UsuariosPotenciales;
            model.PosiblesBeneficiarios = message.PosiblesBeneficiarios;
            model.RequiereServicioUSEG = message.RequiereServicioUSEG;
            model.ParticipaEstudiante = message.ParticipaEstudiante;
            model.NombreEstudiante = message.NombreEstudiante;

            model.FechaInicial = message.FechaInicial.FromShortDateToDateTime();
            model.FechaFinal = message.FechaFinal.FromShortDateToDateTime();
            model.FechaProrroga = message.FechaProrroga.FromShortDateToDateTime();
            model.FechaConclusion = message.FechaConclusion.FromShortDateToDateTime();
            model.FechaEntregaProducto = message.FechaEntregaProducto.FromShortDateToDateTime();

            model.TipoProyecto = catalogoService.GetTipoProyectoById(message.TipoProyecto);
            model.Convenio = catalogoService.GetConvenioById(message.Convenio);
            model.EstatusProyecto = catalogoService.GetEstatusProyectoById(message.EstatusProyecto);
            model.SectorFinanciamiento = catalogoService.GetSectorFinanciamientoById(message.SectorFinanciamiento);
            model.FondoConacyt = catalogoService.GetFondoConacytById(message.FondoConacyt);
            model.LineaTematica = catalogoService.GetLineaTematicaInstitucionalById(message.LineaTematica);
            model.AreaTematica = catalogoService.GetAreaTematicaById(message.AreaTematica);
            model.ImpactoPoliticaPublica = catalogoService.GetImpactoPoliticaPublicaById(message.ImpactoPoliticaPublica);
            model.USEG = catalogoService.GetUSEGById(message.USEG);
            model.ProductoAcademico = catalogoService.GetProductoAcademicoById(message.ProductoAcademico);
            model.ActividadPrevista = catalogoService.GetActividadPrevistaById(message.ActividadPrevista);
            model.TipoEstudiante = catalogoService.GetTipoEstudianteById(message.TipoEstudiante);
            model.GradoAcademico = catalogoService.GetGradoAcademicoById(message.GradoAcademico);
            model.Sector = catalogoService.GetSectorById(message.Sector);
            model.Organizacion = catalogoService.GetOrganizacionById(message.Organizacion);
            model.Nivel2 = catalogoService.GetNivelById(message.Nivel2);
            model.Nivel3 = catalogoService.GetNivelById(message.Nivel3);
            model.Nivel4 = catalogoService.GetNivelById(message.Nivel4);
            model.Nivel5 = catalogoService.GetNivelById(message.Nivel5);
            model.Nivel6 = catalogoService.GetNivelById(message.Nivel6);
            model.Area = catalogoService.GetAreaById(message.Area);
            model.Disciplina = catalogoService.GetDisciplinaById(message.Disciplina);
            model.Subdisciplina = catalogoService.GetSubdisciplinaById(message.Subdisciplina);
            model.SectorEconomico = catalogoService.GetSectorEconomicoById(message.SectorEconomico);
            model.Rama = catalogoService.GetRamaById(message.Rama);
            model.Clase = catalogoService.GetClaseById(message.Clase);

            ///Campos Prototipo
            //model.Responsable = message.Responsable;
            //model.ProductoEsperado = message.ProductoEsperado;
            //model.FechaRegistro = message.FechaRegistro.FromShortDateToDateTime();
            //model.FechaTramite = message.FechaTramite.FromShortDateToDateTime();
            //model.Coordinacion = catalogoService.GetCoordinacionById(message.Coordinacion);

            ///Campos Nunca Usados
            //model.OtroImpacto = message.OtroImpacto;
            //model.Monto = message.Monto;
            //model.IncluirWeb = message.IncluirWeb;
            //model.Entidad = message.Entidad;
            //model.OtraEmpresaInstitucionParticipante = message.OtraEmpresaInstitucionParticipante;
            //model.FechaEntregaCompromiso = message.FechaEntregaCompromiso.FromShortDateToDateTime();
            //model.Sede = catalogoService.GetSedeById(message.Sede);
            //model.Ambito = catalogoService.GetAmbitoById(message.Ambito);
            //model.TipoFinanciamiento = catalogoService.GetTipoFinanciamientoById(message.TipoFinanciamiento);
            //model.Moneda = catalogoService.GetMonedaById(message.Moneda);
            //model.Institucion = catalogoService.GetInstitucionById(message.Institucion);
            //model.NivelEstudio = catalogoService.GetNivelEstudioById(message.NivelEstudio);
            //model.Departamento = catalogoService.GetDepartamentoById(message.Departamento);
        }

        public Proyecto Map(ProyectoForm message, Usuario usuario)
        {
            var model = Map(message);

            if (model.IsTransient())
            {
                model.Usuario = usuario;
                model.CreadorPor = usuario;
            }

            model.ModificadoPor = usuario;

            return model;
        }

        public Proyecto Map(ProyectoForm message, Usuario usuario, string[] participantesExternos, 
            string[] participantesInternos, string[] responsablesInternos, 
            string[] institucionRecursoFinanciero, string[] monedaRecursoFinanciero, string[] montoRecursoFinanciero, 
            string[] recursoRecursoFinanciero)
        {
            var model = Map(message, usuario);

            foreach (var participanteId in participantesExternos)
            {
                var participante =
                    participanteExternoProyectoMapper.Map(new ParticipanteExternoProyectoForm
                                                              {InvestigadorExternoId = int.Parse(participanteId)});

                participante.CreadorPor = usuario;
                participante.ModificadoPor = usuario;

                model.AddParticipanteExterno(participante);
            }

            foreach (var participanteId in participantesInternos)
            {
                var participante =
                    participanteInternoProyectoMapper.Map(new ParticipanteInternoProyectoForm
                                                              {InvestigadorId = int.Parse(participanteId)});

                participante.CreadorPor = usuario;
                participante.ModificadoPor = usuario;

                model.AddParticipanteInterno(participante);
            }

            foreach (var responsableId in responsablesInternos)
            {
                var responsable =
                    responsableInternoProyectoMapper.Map(new ResponsableInternoProyectoForm
                                                             {InvestigadorId = int.Parse(responsableId)});

                responsable.CreadorPor = usuario;
                responsable.ModificadoPor = usuario;

                model.AddResponsableInterno(responsable);
            }

            for (var i = 0; i < institucionRecursoFinanciero.Length; i++)
            {
                var recurso = recursoFinancieroProyectoMapper.Map(new RecursoFinancieroProyectoForm
                                                                      {
                                                                          InstitucionId = int.Parse(institucionRecursoFinanciero[i]),
                                                                          MonedaId = int.Parse(monedaRecursoFinanciero[i]),
                                                                          Monto = long.Parse(montoRecursoFinanciero[i]),
                                                                          Recurso = recursoRecursoFinanciero[i]
                                                                      });
                recurso.CreadorPor = usuario;
                recurso.ModificadoPor = usuario;

                model.AddRecursoFinanciero(recurso);
            }

            return model;
        }
    }
}