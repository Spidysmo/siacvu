﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ArticuloForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models" %>
<p>
	<label>Posici&oacute;n del autor</label>
    <%=Html.TextBox("PosicionAutor", Model.PosicionAutor, new { @class = "input100", maxlength = 3 })%>
	<span class="cvu"></span>
	<%=Html.ValidationMessage("PosicionAutor")%>
</p>

<% Html.RenderPartial("_ShowRevista", new ShowFieldsForm { RevistaPublicacionId = Model.RevistaPublicacionId, RevistaPublicacionTitulo = Model.RevistaPublicacionTitulo, RevistaLabel = "Nombre de la revista", IsShowForm = false }); %>

<p>
    <label></label>
    <%= Html.CheckBox("TieneProyecto", Model.TieneProyecto) %> Tiene proyecto de investigaci&oacute;n de referencia?
</p>
<p id="tieneproyecto_field">
    <label>Nombre del proyecto de investigaci&oacute;n</label>
    <%=Html.TextBox("ProyectoNombre", Model.ProyectoNombre,
        new { @class = "autocomplete buscar-requerido", rel = Url.Action("Search", "Proyecto"), maxlength = 100 })%>
    <%=Html.Hidden("ProyectoId", Model.ProyectoId, new { rel = "#ProyectoNombre" })%>
    <%=Html.ValidationMessage("ProyectoNombre")%>
</p>
<div id="notieneproyecto_field">
    <% Html.RenderPartial("_ShowAreaTematica", new ShowFieldsForm { AreaTematicaId = Model.AreaTematicaId, AreaTematicaNombre = Model.AreaTematicaNombre, ModelId = Model.Id, IsShowForm = false}); %>
</div>
<p>
	<label>Palabra clave 1</label>
	<%=Html.TextBox("PalabraClave1", Model.PalabraClave1, new { @class = "input250", maxlength = 50 })%>
	<span class="cvu"></span>
</p>
<p>
	<label>Palabra clave 2</label>
	<%=Html.TextBox("PalabraClave2", Model.PalabraClave2, new { @class = "input250", maxlength = 50 })%>
	<span class="cvu"></span>
</p>
<p>
	<label>Palabra clave 3</label>
    <%=Html.TextBox("PalabraClave3", Model.PalabraClave3, new { @class = "input250", maxlength = 50 })%>
	<span class="cvu"></span>
</p>
<p>
    <label>Estatus de la publicaci&oacute;n</label>
    <%=Html.DropDownList("EstadoProducto", Model.EstadosProductos.CreateSelectList<CustomSelectForm>("Id", "Nombre"),
        "Seleccione ...", new { @class = "requerido" })%>
    <%=Html.ValidationMessage("EstadoProducto")%>
</p>
<p id="EstatusAceptado">
    <label>Fecha de aceptaci&oacute;n</label>
    <%=Html.TextBox("FechaAceptacion", Model.FechaAceptacion, new { @class = "datetime input100-requerido", maxlength = 10 })%>
    <span>(Formato dd/mm/yyyy)</span>
    <%=Html.ValidationMessage("FechaAceptacion")%>
</p>
<p class="EstatusPublicado">
    <label>Fecha de publicaci&oacute;n</label>
    <%=Html.TextBox("FechaPublicacion", Model.FechaPublicacion, new { @class = "datetime input100-requerido", maxlength = 10 })%>
    <span>(Formato dd/mm/yyyy)</span>
    <%=Html.ValidationMessage("FechaPublicacion")%>
</p>