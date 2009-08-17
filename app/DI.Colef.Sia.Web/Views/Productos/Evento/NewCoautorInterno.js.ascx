﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<EventoForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>

var html = '
    <% using (Html.BeginForm("AddCoautorInterno", "Evento", FormMethod.Post, new { id = "coautorinternoform" })){ %>
    <%=Html.Hidden("EventoId", Model.Id)%>
    <% Html.RenderPartial("_NewCoautorInterno"); %>
    <div class="btn_container_footer">
        <span class="btn btn_small_brown">
            <%=Html.SubmitButton("Guardar", "Agregar Coautor Interno", new { rel = "#coautorinternoform", @class = "remote", @style = "border: 0px none;" })%>
        </span>
        
	        <a href="#" class="cancel" rel="coautorinterno">Cancelar</a>
        </span>
    </div>
    <% } %>
';

$('#coautorinterno_form').html(html);
$('#coautorinterno_new').hide();
$('#coautorinterno_form').show();
DateTimePicker.setup();
