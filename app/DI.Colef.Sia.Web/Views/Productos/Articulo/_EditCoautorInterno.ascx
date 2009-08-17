﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ArticuloForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<div class="minilista" id="coautorinternoList">
    <h5>Coautor Interno</h5>

    <% if (Model.CoautorInternoArticulos != null) { %>
        <% foreach(var coautorInterno in Model.CoautorInternoArticulos) { %>
	        <div class="sublista" id="coautorinterno_<%=Html.Encode(coautorInterno.Id) %>">
	            <h6><%=Html.Encode(coautorInterno.InvestigadorUsuarioPersonaNombre)%></h6>
			</div><!--end sublista-->
        <% } %>
    <% } else { %>
        <div class="sublista" id="coautorinternoEmptyList_form">
            <h6><span>No hay coautores internos definidos</span></h6>
		</div><!--end elementodescripcion-->
    <% } %>

	<div id="coautorinterno_new" class="minilistaboton">
		<p>
			<span>
	    		<%=Html.ActionLink("+ Nuevo Coautor Interno", "NewCoautorInterno", new { Id = Model.Id }, new { @class = "remote get" })%>
			</span>
		</p>
	</div><!--end minilistaboton-->

</div><!--end minilista-->

<div id="coautorinterno_form" class="display:hidden;"></div>