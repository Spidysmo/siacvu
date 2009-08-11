<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<TipoEstanciaForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>

var html = '
<div class="floatr btn_container">
<% if (Model.Activo) { %>
    <span class="btn btn_small_white">
        <%=Html.ActionLink("Desactivar", "Deactivate", new { id = Model.Id }, new { @class = "remote put" })%>
    </span>
<% } else { %>
    <span class="btn btn_small_white">
        <%=Html.ActionLink("Activar", "Activate", new { id = Model.Id }, new { @class = "remote put" })%>
    </span>
<% } %>
</div>
';

$('#accion_<%=Html.Encode(Model.Id) %>').html(html);
showMessage('TipoEstancia <%=Html.Encode(Model.Nombre) %> ha sido <%if(Model.Activo) { %> activada. <% } else { %> desactivada. <% } %>');
