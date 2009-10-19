namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Models
{
    public class EventoForm
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Titulo { get; set; }
        public bool Invitacion { get; set; }
        public string Ciudad { get; set; }
        public string FechaInicial { get; set; }
        public string FechaFinal { get; set; }
        public string PalabraClave1 { get; set; }
        public string PalabraClave2 { get; set; }
        public string PalabraClave3 { get; set; }
        public bool Activo { get; set; }
        public string Modificacion { get; set; }
        public string DepartamentoNombre { get; set; }
        public string SedeNombre { get; set; }

        public int Ambito { get; set; }
        public int AmbitoId { get; set; }
        public string AmbitoNombre { get; set; }

        public int DirigidoA { get; set; }
        public int DirigidoAId { get; set; }
        public string DirigidoANombre { get; set; }

        public int Pais { get; set; }
        public int PaisId { get; set; }
        public string PaisNombre { get; set; }

        public int EstadoPais { get; set; }
        public int EstadoPaisId { get; set; }
        public string EstadoPaisNombre { get; set; }

        public int TipoEvento { get; set; }
        public int TipoEventoId { get; set; }
        public string TipoEventoNombre { get; set; }

        public int InstitucionId { get; set; }
        public string InstitucionNombre { get; set; }

        public int LineaTematicaId { get; set; }
        public string LineaTematicaNombre { get; set; }

        public int TipoFinanciamiento { get; set; }
        public int TipoFinanciamientoId { get; set; }
        public string TipoFinanciamientoNombre { get; set; }

        public int TipoParticipacion { get; set; }
        public int TipoParticipacionId { get; set; }
        public string TipoParticipacionNombre { get; set; }

        public int TotalAutores
        {
            get
            {
                return (CoautorExternoEventos == null ? 0 : CoautorExternoEventos.Length) +
                    (CoautorInternoEventos == null ? 0 : CoautorInternoEventos.Length) + 1;
            }
        }

        public CoautorExternoProductoForm[] CoautorExternoEventos { get; set; }
        public CoautorInternoProductoForm[] CoautorInternoEventos { get; set; }

        /* New */
        public CoautorExternoProductoForm CoautorExternoProducto { get; set; }
        public CoautorInternoProductoForm CoautorInternoProducto { get; set; }

        /* Catalogos */
        public AmbitoForm[] Ambitos { get; set; }
        public DirigidoAForm[] DirigidosA { get; set; }
        public EstadoPaisForm[] EstadoPaises { get; set; }
        public PaisForm[] Paises { get; set; }
        public TipoEventoForm[] TiposEventos { get; set; }
        public TipoParticipacionForm[] TiposParticipaciones { get; set; }
        public InvestigadorExternoForm[] CoautoresExternos { get; set; }
        public InvestigadorForm[] CoautoresInternos { get; set; }
        public TipoFinanciamientoForm[] TiposFinanciamientos { get; set; }
    }
}
