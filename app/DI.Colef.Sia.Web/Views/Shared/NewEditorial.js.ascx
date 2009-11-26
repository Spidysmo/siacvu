<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<EditorialForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>

var cssclass = 'remote';
var rel = '#editorialform';

var html = '
    <% using (Html.BeginForm("AddEditorial", Model.Controller, FormMethod.Post, new { id = "editorialform" })){ %>
    <%=Html.Hidden(Model.IdName, Model.Id)%>
    <% Html.RenderPartial("_NewEditorial"); %>
    <div class="minilistaboton">
        <p>
            <span>
                <%=Html.SubmitButton("Guardar", "Agregar editorial", new { rel = "' + rel + '", @class = "' + cssclass + '", @style = "border: 0px none;" })%>
            </span> &oacute; <a href="#" class="cancel minilistacancelar" rel="editorial">Cancelar</a>
        </p>
    </div>
    <% } %>
';

$('#editorialForm').html(html);
$('#editorialNew').hide();
$('#editorialForm').show();
AutoComplete.config($('#Editorial_Nombre'));
