﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<EventoForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<div class="minilista" id="coautorinternoList">
    <h5>Coautor interno</h5>

    <% if (Model.CoautorInternoEventos != null && Model.CoautorInternoEventos.Length > 0) { %>
        <% foreach (var coautorInterno in Model.CoautorInternoEventos){ %>
        <div class="sublista" id="coautorinterno_<%=Html.Encode(coautorInterno.InvestigadorId) %>">
            <h6>
                <%=Html.Encode(coautorInterno.InvestigadorUsuarioPersonaNombre)%>
                <% if(Model.Id == 0) { %>
                    <%=Html.Hidden("CoautorInternoEvento.InvestigadorId_New", coautorInterno.InvestigadorId)%>
                <% } %>
            </h6>
        </div><!--end sublista-->
        <% } %>
    <% } else { %>
        <div class="sublista" id="coautorinternoEmptyList_form">
            <h6><span>No hay coautores internos registrados</span></h6>
        </div><!--end elementodescripcion-->
    <% } %>

	<div id="coautorinterno_new" class="minilistaboton">
		<p>
			<span>
		    	<%=Html.ActionLink("+ Nuevo coautor interno", "NewCoautorInterno", new { Id = Model.Id }, new { @class = "remote get" })%>
			</span>
		</p>
	</div><!--end minilistaboton-->

</div><!--end minilista-->
	
<div id="coautorinterno_form" class="display:hidden;"></div>