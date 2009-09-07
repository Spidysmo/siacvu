﻿using System;
using NHibernate.Validator.Engine;

namespace DecisionesInteligentes.Colef.Sia.Core.NHibernateValidator
{
    [AttributeUsage(AttributeTargets.Class)]
    [ValidatorClass(typeof(ResenaValidator))]
    public class ResenaValidatorAttribute : Attribute, IRuleArgs
    {
        public ResenaValidatorAttribute()
        {
            Message = "Entidad invalidad";
        }

        public string Message { get; set; }
    }

    public class ResenaValidator : BaseValidatorAttribute<ResenaValidatorAttribute>
    {
        public override void Initialize(ResenaValidatorAttribute parameters)
        {
        }

        public override bool IsValid(object value, IConstraintValidatorContext constraintValidatorContext)
        {
            var isValid = true;
            var resena = value as Resena;

            if (!resena.IsTransient())
            {
                isValid &= !ValidateIsNullOrEmpty<Resena>(resena, x => x.EstadoProducto, constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Resena>(resena, x => x.FechaAceptacion, constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Resena>(resena, x => x.LineaTematica, "LineaTematicaNombre",
                                                            constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Resena>(resena, x => x.Pais, constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Resena>(resena, x => x.FechaEdicion, constraintValidatorContext);
                isValid &= !ValidateIsNullOrEmpty<Resena>(resena, x => x.TipoResena, constraintValidatorContext);
            }

            if (resena.TipoResena != null)
                isValid &= ValidateTipoResena(resena, constraintValidatorContext);
            
            return isValid;
        }

        bool ValidateTipoResena(Resena resena, IConstraintValidatorContext constraintValidatorContext)
        {
            var isValid = true;

            if (resena.TipoResena.Nombre.Contains("Nota critica"))
            {
                if (resena.NombreProducto == "")
                {
                    constraintValidatorContext.AddInvalid(
                        "no debe ser nulo o vacío o cero|NombreProducto", "NombreProducto");

                    isValid = false;
                }

                if (resena.Editorial == "")
                {
                    constraintValidatorContext.AddInvalid(
                        "no debe ser nulo o vacío o cero|Editorial", "Editorial");

                    isValid = false;
                }
            }

            if (resena.TipoResena.Nombre.Contains("Reseña bibliografica"))
            {
                if (resena.ReferenciaBibliograficaLibro == "")
                {
                    constraintValidatorContext.AddInvalid(
                        "no debe ser nulo o vacío o cero|ReferenciaBibliograficaLibro", "ReferenciaBibliograficaLibro");

                    isValid = false;
                }

                if (resena.ReferenciaBibliograficaRevista == "")
                {
                    constraintValidatorContext.AddInvalid(
                        "no debe ser nulo o vacío o cero|ReferenciaBibliograficaRevista", "ReferenciaBibliograficaRevista");

                    isValid = false;
                }
            }

            return isValid;
        }
    }
}
