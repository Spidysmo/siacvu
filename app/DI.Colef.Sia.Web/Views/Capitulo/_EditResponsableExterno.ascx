﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<CapituloForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<table class="form" id="responsableexternoList">
    <tr>
        <th class="subform">Responsable Externo</th>
    </tr>
    <% foreach(var responsableExterno in Model.ResponsableExternoCapitulos) { %>
    <tr id="coautorexterno_<%=Html.Encode(responsableExterno.Id) %>">
        <td class="subform">
            <%=Html.Encode(responsableExterno.InvestigadorExternoNombre)%>
        </td>
    </tr>
    <% } %>
</table>
<div id="responsableexterno_new" class="floatl btn_container">
    <span class="btn btn_small_white">
	    <%=Html.ActionLink("+ Nuevo Responsable Externo", "NewResponsableExterno", new { Id = Model.Id }, new { @class = "remote get" })%>
	</span>
</div>
<div id="responsableexterno_form" class="display:hidden;"></div>