﻿using System;
using NHibernate.Validator.Engine;

namespace DecisionesInteligentes.Colef.Sia.Core.NHibernateValidator
{
    [AttributeUsage(AttributeTargets.Class)]
    [ValidatorClass(typeof(SNIInvestigadorValidator))]
    public class SNIInvestigadorValidatorAttribute : Attribute, IRuleArgs
    {
        public SNIInvestigadorValidatorAttribute()
        {
            Message = "Entidad invalidad";
        }

        public string Message { get; set; }
    }

    public class SNIInvestigadorValidator : IValidator
    {
        public bool IsValid(object value, IConstraintValidatorContext constraintValidatorContext)
        {
            var isValid = true;
            var sniInvestigador = value as SNIInvestigador;
            if (sniInvestigador != null && sniInvestigador.SNI.Nombre != "No Pertenece")
            {
                if (sniInvestigador.FechaInicial <= DateTime.Parse("1910-01-01"))
                {
                    constraintValidatorContext.DisableDefaultError();
                    constraintValidatorContext.AddInvalid<SNIInvestigador, DateTime>(
                        "fecha inicial inválida o nula|FechaInicial", x => x.FechaInicial);
                    isValid = false;
                }

                if (sniInvestigador.SNI != null && (sniInvestigador.SNI.Nombre != "Emerito"))
                {
                    if (sniInvestigador.FechaFinal <= DateTime.Parse("1910-01-01"))
                    {
                        constraintValidatorContext.DisableDefaultError();
                        constraintValidatorContext.AddInvalid<SNIInvestigador, DateTime>(
                            "fecha final inválida o nula|FechaFinal", x => x.FechaFinal);
                        isValid = false;
                    }
                    else if (sniInvestigador.FechaInicial >= sniInvestigador.FechaFinal)
                    {
                        constraintValidatorContext.DisableDefaultError();
                        constraintValidatorContext.AddInvalid<SNIInvestigador, DateTime>(
                            "fecha inicial debe ser menor a fecha final|FechaInicial", x => x.FechaInicial);
                        constraintValidatorContext.AddInvalid<SNIInvestigador, DateTime>(
                            "fecha final debe ser mayor a fecha inicial|FechaFinal", x => x.FechaFinal);
                        isValid = false;
                    }
                }
            }

            return isValid;
        }
    }
}
