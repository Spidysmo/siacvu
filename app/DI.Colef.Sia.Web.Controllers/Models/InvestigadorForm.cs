namespace DecisionesInteligentes.Colef.Sia.Web.Controllers.Models
{
    public class InvestigadorForm
    {
		public int Id { get; set; }
        public string FechaIngreso { get; set; }

		public bool Activo { get; set; }
		public string Modificacion { get; set; }

        public int Usuario { get; set; }

        public string UsuarioPersonaNombre { get; set; }
        public string UsuarioPersonaApellidoPaterno { get; set; }
        public string UsuarioPersonaApellidoMaterno { get; set; }

        public string Nombre { 
            get
            {
                return string.Format("{0} {1} {2}", UsuarioPersonaNombre, UsuarioPersonaApellidoPaterno,
                                     UsuarioPersonaApellidoMaterno);
            }
        }

        public string NombreCoautor
        {
            get
            {
                return string.Format("{0} {1} {2}", UsuarioPersonaApellidoPaterno,
                                     UsuarioPersonaApellidoMaterno, UsuarioPersonaNombre);
            }
        }

        public EstadoInvestigadorForm[] EstadosInvestigador { get; set; }
        public GradoAcademicoInvestigadorForm[] GradosAcademicosInvestigador { get; set; }
        public CategoriaInvestigadorForm[] CategoriasInvestigador { get; set; }
        public CargoInvestigadorForm[] CargosInvestigador { get; set; }
        public SNIInvestigadorForm[] SNIsInvestigador { get; set; }

        /* New */
        public EstadoInvestigadorForm EstadoInvestigador { get; set; }
        public GradoAcademicoInvestigadorForm GradoAcademicoInvestigador { get; set; }
        public CategoriaInvestigadorForm CategoriaInvestigador { get; set; }
        public CargoInvestigadorForm CargoInvestigador { get; set; }
        public SNIInvestigadorForm SNIInvestigador { get; set; }
        
        /* Catalogos */
        public UsuarioForm[] Usuarios { get; set; }
        public EstadoForm[] Estados { get; set; }
        public GradoAcademicoForm[] GradosAcademicos { get; set; }
        public CategoriaForm[] Categorias { get; set; }
        public CargoForm[] Cargos { get; set; }
        public DepartamentoForm[] Departamentos { get; set; }
        public SedeForm[] Sedes { get; set; }
        public SNIForm[] SNIs { get; set; }
    }
}
