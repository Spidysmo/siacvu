using System;
using SharpArch.Core.DomainModel;

namespace DecisionesInteligentes.Colef.Sia.Core
{
    public class CursoInvestigador : Entity
    {
        public virtual Investigador Investigador { get; set; }

        public virtual string Nombre { get; set; }

        public virtual string NombreInvestigador { get; set; }

        public virtual ProgramaEstudio ProgramaEstudio { get; set; }

        public virtual Institucion Institucion { get; set; }

        public virtual DateTime FechaInicial { get; set; }

        public virtual DateTime FechaFinal { get; set; }

        public virtual int NumeroHoras { get; set; }

        public virtual NivelEstudio NivelEstudio { get; set; }

        public virtual Sector Sector { get; set; }

        public virtual Organizacion Organizacion { get; set; }

        public virtual Nivel Nivel2 { get; set; }

        public virtual Area Area { get; set; }

        public virtual Disciplina Disciplina { get; set; }

        public virtual Subdisciplina Subdisciplina { get; set; }
    }
}