﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ResenaForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<div class="minilista" id="coautorexternoList">
    <h5>Coautor externo</h5>

    <% if (Model.CoautorExternoResenas != null && Model.CoautorExternoResenas.Length > 0) { %>
        <% foreach (var coautorExterno in Model.CoautorExternoResenas){ %>
	        <div class="sublista" id="coautorexterno_<%=Html.Encode(coautorExterno.InvestigadorExternoId) %>">
	            <h6>
	                <%=Html.Encode(coautorExterno.InvestigadorExternoNombre)%>
	                <% if(Model.Id == 0) { %>
	                    <%=Html.Hidden("CoautorExternoResena.InvestigadorExternoId_New", coautorExterno.InvestigadorExternoId)%>
	                <% } %>
	            </h6>
			</div><!--end sublista-->
        <% } %>
    <% } else { %>
        <div class="sublista" id="coautorexternoEmptyList_form">
            <h6><span>No hay coautores externos registrados</span></h6>
		</div><!--end elementodescripcion-->
    <% } %>

	<div id="coautorexterno_new" class="minilistaboton">
		<p>
			<span>
	    		<%=Html.ActionLink("+ Nuevo coautor externo", "NewCoautorExterno", new { Id = Model.Id }, new { @class = "remote get" })%>
			</span>
		</p>
	</div><!--end minilistaboton-->

</div><!--end minilista-->
	
<div id="coautorexterno_form" class="display:hidden;"></div>