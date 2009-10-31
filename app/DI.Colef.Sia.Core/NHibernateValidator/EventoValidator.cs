using System;
using NHibernate.Validator.Engine;

namespace DecisionesInteligentes.Colef.Sia.Core.NHibernateValidator
{
    [AttributeUsage(AttributeTargets.Class)]
    [ValidatorClass(typeof(EventoValidator))]
    public class EventoValidatorAttribute : Attribute, IRuleArgs
    {
        public EventoValidatorAttribute()
        {
            Message = "Entidad invalidad";
        }

        public string Message { get; set; }
    }

    public class EventoValidator : BaseValidatorAttribute<EventoValidatorAttribute>
    {
        public override void Initialize(EventoValidatorAttribute parameters)
        {
        }

        public override bool IsValid(object value, IConstraintValidatorContext constraintValidatorContext)
        {
            var isValid = true;
            var evento = value as Evento;

            if (!evento.IsTransient())
            {/*
                isValid &= !ValidateIsNullOrEmpty<Evento>(evento, x => x.TipoEvento, constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Evento>(evento, x => x.Ambito, constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Evento>(evento, x => x.TituloTrabajo, constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Evento>(evento, x => x.TipoParticipacion, constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Evento>(evento, x => x.Institucion, "InstitucionNombre",
                                                          constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Evento>(evento, x => x.Pais, constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Evento>(evento, x => x.EstadoPais, constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Evento>(evento, x => x.Ciudad, constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Evento>(evento, x => x.TipoFinanciamiento, constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Evento>(evento, x => x.LineaTematica, "LineaTematicaNombre",
                                                          constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Evento>(evento, x => x.FechaInicial, constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Evento>(evento, x => x.FechaFinal, constraintValidatorContext); */
            }

            isValid &= ValidateFechas(evento, constraintValidatorContext);

            return isValid;
        }

        private bool ValidateFechas(Evento evento, IConstraintValidatorContext constraintValidatorContext)
        {
            var isValid = true;

            if (evento.FechaEvento == DateTime.Parse("1900-01-01"))
            {
                constraintValidatorContext.AddInvalid(
                    "formato de fecha no v�lido|FechaEvento", "FechaEvento");
                isValid = false;
            }

            if (evento.FechaEvento > DateTime.Now)
            {
                constraintValidatorContext.AddInvalid(
                    "el a�o no puede estar en el futuro|FechaEvento", "FechaEvento");
                isValid = false;
            }

            if (!isValid)
                constraintValidatorContext.DisableDefaultError();

            return isValid;
        }
    }
}