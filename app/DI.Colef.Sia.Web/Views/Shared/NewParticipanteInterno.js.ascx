﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ParticipanteForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>

var cssclass = 'remote';
var rel = '#participanteinternoform';

var html = '
    <% using (Html.BeginForm("AddParticipanteInterno", Model.Controller, FormMethod.Post, new { id = "participanteinternoform" })){ %>
    <%=Html.Hidden(Model.IdName, Model.Id)%>
    <% Html.RenderPartial("_NewParticipanteInterno"); %>
    <div class="minilistaboton">
        <p>
            <span>
                <%=Html.SubmitButton("Guardar", "Agregar participante interno", new { rel = "' + rel + '", @class = "' + cssclass + '", @style = "border: 0px none;" })%>
            </span> &oacute; <a href="#" class="cancel minilistacancelar" rel="participanteinterno">Cancelar</a>
        </p>
    </div>
    <% } %>
';

$('#participanteinternoForm').html(html);
$('#participanteinternoNew').hide();
$('#participanteinternoForm').show();
DateTimePicker.setup();
AutoComplete.config($('#ParticipanteInterno_Nombre'));
