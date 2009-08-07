﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<CapituloForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<table class="form" id="coautorexternoList">
    <tr>
        <th class="subform">Coautor Externo</th>
    </tr>
    <% foreach(var coautorExterno in Model.CoautorExternoCapitulos) { %>
    <tr id="coautorexterno_<%=Html.Encode(coautorExterno.Id) %>">
        <td class="subform">
            <%=Html.Encode(coautorExterno.InvestigadorExternoNombre)%>
        </td>
    </tr>
    <% } %>
</table>
<div id="coautorexterno_new" class="floatl btn_container">
    <span class="btn btn_small_white">
	    <%=Html.ActionLink("+ Nuevo Coautor Externo", "NewCoautorExterno", new { Id = Model.Id }, new { @class = "remote get" })%>
	</span>
</div>
<div id="coautorexterno_form" class="display:hidden;"></div>