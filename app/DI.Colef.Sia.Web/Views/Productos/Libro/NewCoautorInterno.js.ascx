<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<LibroForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>

var class = 'remote';
var rel = '#coautorinternoform';

<% if(Model.Id == 0) { %>
    class = 'local';
    rel = '#CoautorInternoLibro.InvestigadorId';
<% } %>

var html = '
    <% using (Html.BeginForm("AddCoautorInterno", "Libro", FormMethod.Post, new { id = "coautorinternoform" })){ %>
    <%=Html.Hidden("LibroId", Model.Id) %>
    <% Html.RenderPartial("_NewCoautorInterno"); %>
    <div class="minilistaboton">
        <p>
            <span>
                <%=Html.SubmitButton("Guardar", "Agregar Coautor Interno", new { rel = "' + rel + '", @class = "' + class + '", @style = "border: 0px none;" })%>
            </span> &oacute; <a href="#" class="cancel minilistacancelar" rel="coautorinterno">Cancelar</a>
        </p>
    </div>
    <% } %>
';

$('#coautorinterno_form').html(html);
$('#coautorinterno_new').hide();
$('#coautorinterno_form').show();
DateTimePicker.setup();
