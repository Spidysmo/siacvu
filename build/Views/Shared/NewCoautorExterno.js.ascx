﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<CoautorForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>

var cssclass = 'remote';
var rel = '#coautorexternoform';

var html = '
    <% using (Html.BeginForm("AddCoautorExterno", Model.Controller, FormMethod.Post, new { id = "coautorexternoform" })){ %>
    <%=Html.Hidden(Model.IdName, Model.Id)%>
    <% Html.RenderPartial("_NewCoautorExterno"); %>
    <div class="minilistaboton">
        <p>
            <span>
                <%=Html.SubmitButton("Guardar", "Agregar coautor externo", new { rel = "' + rel + '", @class = "' + cssclass + '", @style = "border: 0px none;" })%>
            </span> &oacute; <a href="#" class="cancel minilistacancelar" rel="coautorexterno">Cancelar</a>
        </p>
    </div>
    <% } %>
';

$('#coautorexternoForm').html(html);
$('#coautorexternoNew').hide();
$('#coautorexternoForm').show();
DateTimePicker.setup();
AutoComplete.config($('#CoautorExterno_Institucion'));
