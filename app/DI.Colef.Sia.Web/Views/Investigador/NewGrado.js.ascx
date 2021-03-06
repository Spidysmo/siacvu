﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<InvestigadorForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>

var html = '
    <% using (Html.BeginForm("AddGrado", "Investigador", FormMethod.Post, new { id = "gradoform" })) { %>
    <%=Html.Hidden("InvestigadorId", Model.Id) %>
    <% Html.RenderPartial("_NewGrado"); %>
    <div class="minilistaboton">
        <p>
            <span>
                <%=Html.SubmitButton("Guardar", "Agregar grado", new { rel = "#gradoform", @class = "remote", @style = "border: 0px none;" })%>
            </span> &oacute; <a href="#" class="cancel minilistacancelar" rel="grado">Cancelar</a>
        </p>
    </div>
    <% } %>
';

$('#gradoForm').html(html);
$('#gradoNew').hide();
$('#gradoForm').show();

AutoComplete.manualSetup('GradoAcademicoInvestigador_InstitucionNombre');
DateTimePicker.setup();

var auth = "<% = Request.Cookies[FormsAuthentication.FormsCookieName]==null ? string.Empty : Request.Cookies[FormsAuthentication.FormsCookieName].Value %>";
var uploader = '<%=ResolveUrl("~/Scripts/uploadify.swf") %>';
var cancelImg = '<%=ResolveUrl("~/Content/Images/eliminar-icon.png") %>';
var action = '<%=Url.Action("AddFile") %>';
        
UploadFile.setup('#GradoAcademicoInvestigador_DocumentoProbatorio', 'GradoAcademico_FileQueue',
            uploader, cancelImg, action, auth);