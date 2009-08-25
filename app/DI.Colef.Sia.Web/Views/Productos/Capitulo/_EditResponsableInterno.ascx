﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<CapituloForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<div class="minilista" id="responsableinternoList">
    <h5>Investigador Interno</h5>

    <% if (Model.ResponsableInternoCapitulos != null && Model.ResponsableInternoCapitulos.Length > 0) { %>
        <% foreach (var responsableInterno in Model.ResponsableInternoCapitulos){ %>
	        <div class="sublista" id="responsableinterno_<%=Html.Encode(responsableInterno.InvestigadorId) %>">
	            <h6>
	                <%=Html.Encode(responsableInterno.NombreCoautor)%>
	                <% if(Model.Id == 0) { %>
	                    <%=Html.Hidden("ResponsableInternoCapitulo.InvestigadorId_New", responsableInterno.InvestigadorId)%>
	                <% } %>
	            </h6>
			</div><!--end sublista-->
        <% } %>
    <% } else { %>
        <div class="sublista" id="responsableinternoEmptyList_form">
            <h6><span>No hay responsables internos registrados</span></h6>
		</div><!--end elementodescripcion-->
    <% } %>

	<div id="responsableinterno_new" class="minilistaboton">
		<p>
			<span>
		    	<%=Html.ActionLink("+ Nuevo responsable interno", "NewResponsableInterno", new { Id = Model.Id }, new { @class = "remote get" })%>
			</span>
		</p>
	</div><!--end minilistaboton-->

</div><!--end minilista-->
	
<div id="responsableinterno_form" class="display:hidden;"></div>