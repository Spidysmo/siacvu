﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<LibroForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models" %>
<table class="subform">
    <tr>
        <td>
            <label>
                Forma Participacion:<em>*</em></label>
        </td>
        <td>
            <%=Html.DropDownList("FormaParticipacion", Model.FormasParticipaciones.CreateSelectList<FormaParticipacionForm>("Id", "Nombre"),
								"Seleccione ...")%>
            <%=Html.ValidationMessage("FormaParticipacion") %>
        </td>
    </tr>
</table>
