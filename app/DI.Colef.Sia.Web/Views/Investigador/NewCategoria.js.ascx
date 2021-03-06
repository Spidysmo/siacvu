﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<InvestigadorForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>

var html = '
    <% using (Html.BeginForm("AddCategoria", "Investigador", FormMethod.Post, new { id = "categoriaform", style = "margin: 0px;" })) { %>
    <%=Html.Hidden("InvestigadorId", Model.Id) %>
    <% Html.RenderPartial("_NewCategoria"); %>
    <div class="minilistaboton">
        <p>
            <span>
                <%=Html.SubmitButton("Guardar", "Agregar Categoria", new { rel = "#categoriaform", @class = "remote", @style = "border: 0px none;" })%>
            </span> &oacute; <a href="#" class="cancel minilistacancelar" rel="categoria">Cancelar</a>
        </p>
    </div>
    <% } %>
';

$('#categoriaForm').html(html);
$('#categoriaNew').hide();
$('#categoriaForm').show();
DateTimePicker.setup();

var auth = "<% = Request.Cookies[FormsAuthentication.FormsCookieName]==null ? string.Empty : Request.Cookies[FormsAuthentication.FormsCookieName].Value %>";
var uploader = '<%=ResolveUrl("~/Scripts/uploadify.swf") %>';
var cancelImg = '<%=ResolveUrl("~/Content/Images/eliminar-icon.png") %>';
var action = '<%=Url.Action("AddFile") %>';

UploadFile.setup('#CategoriaInvestigador_DocumentoProbatorio', 'Categoria_FileQueue',
            uploader, cancelImg, action, auth);