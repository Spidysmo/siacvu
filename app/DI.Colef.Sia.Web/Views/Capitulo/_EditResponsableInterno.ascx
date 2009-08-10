﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<CapituloForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<table class="form" id="responsableinternoList">
    <tr>
        <th class="subform">Responsable Interno</th>
    </tr>
    <% if (Model.ResponsableInternoCapitulos != null){%>
        <% foreach (var responsableInterno in Model.ResponsableInternoCapitulos){ %>
        <tr id="responsableinterno_<%=Html.Encode(responsableInterno.Id) %>">
            <td class="subform">
                <%=Html.Encode(responsableInterno.InvestigadorUsuarioPersonaNombre)%>
            </td>
        </tr>
        <% } %>
    <% } else { %>
        <tr id="responsableinternoEmptyList_form">
            <td class="subform">
                No hay responsables internos definidos
            </td>
        </tr>
    <% } %>
</table>
<div id="responsableinterno_new" class="floatl btn_container">
    <span class="btn btn_small_white">
	    <%=Html.ActionLink("+ Nuevo Responsable Interno", "NewResponsableInterno", new { Id = Model.Id }, new { @class = "remote get" })%>
	</span>
</div>
<div id="responsableinterno_form" class="display:hidden;"></div>