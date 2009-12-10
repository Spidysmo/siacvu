﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<EventoForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<div id="sesionList" class="minilista">
	<h5>Sesion(es) del evento estrat&eacute;gico</h5>
	<% if (Model.SesionEventos != null && Model.SesionEventos.Length > 0) { %>
        <% for (int i = 0; i < Model.SesionEventos.Length; i++){ %>
	        <div class="sublista" id="estado_<%=Html.Encode(Model.SesionEventos[i].NombreSesion.Replace(" ", "_")) %>">
	            <h6>
	                <a href="<%=Url.Action("DeleteSesion", null, new{id = Model.Id, nombreSesion = Model.SesionEventos[i].NombreSesion.Replace(" ", "_")}) %>" class="remote delete"><img src="<%=ResolveUrl("~/Content/Images/eliminar-icon.png") %>" /></a>
	                <%=Html.Encode(Model.SesionEventos[i].NombreSesion)%>
	                <%=Html.Hidden("Sesion[" + i + "].NombreSesion", Model.SesionEventos[i].NombreSesion)%>
	                <span>
	                    Objetivo <%=Html.Encode(Model.SesionEventos[i].ObjetivoSesion)%>
	                    <%=Html.Hidden("Sesion[" + i + "].ObjetivoSesion", Model.SesionEventos[i].ObjetivoSesion)%>
	                    &Aacute;mbito <%=Html.Encode(Model.SesionEventos[i].AmbitoNombre)%>
	                    <%=Html.Hidden("Sesion[" + i + "].Ambito", Model.SesionEventos[i].AmbitoId)%>
	                    Fecha <%=Html.Encode(Model.SesionEventos[i].FechaEvento)%>
	                    <%=Html.Hidden("Sesion[" + i + "].FechaEvento", Model.SesionEventos[i].FechaEvento)%>
	                    Lugar <%=Html.Encode(Model.SesionEventos[i].Lugar)%>
	                    <%=Html.Hidden("Sesion[" + i + "].Lugar", Model.SesionEventos[i].Lugar)%>
	                </span>
	            </h6>
			</div><!--end sublista-->
        <% } %>
    <% } else { %>
        <div class="sublista" id="sesionEmptyList_form">
            <h6><span>No hay sesiones del evento estrat&eacute;gico registradas</span></h6>
		</div><!--end elementodescripcion-->
    <% } %>
</div><!--end minilista-->