﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ReporteForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<p>
    <label>Posici&oacute;n del autor</label>
    <span class="valor"><%=Html.Encode(Model.PosicionAutor) %></span>
    <%=Html.Hidden("PosicionAutor", Model.PosicionAutor) %>
    <span class="cvu"></span>
</p>

<h4>Estatus de la publicaci&oacute;n</h4>

<p>
	<label>Estado actual</label>
	<%=Html.DropDownList("EstadoProducto", Model.EstadosProductos.CreateSelectList<CustomSelectForm>("Id", "Nombre"),
        "Seleccione ...", new { @class = "requerido" })%>
	<%=Html.ValidationMessage("EstadoProducto") %>
</p>
<p id="EstatusAceptado">
    <label>A&ntilde;o de aceptaci&oacute;n</label>
    <%=Html.TextBox("FechaAceptacion", Model.FechaAceptacion, new { @class = "input100-requerido", maxlength = 4 })%>
    <span>(Formato yyyy)</span>
    <%=Html.ValidationMessage("FechaAceptacion")%>
</p>
<p id="EstatusPublicado">
    <label>A&ntilde;o de publicaci&oacute;n</label>
    <%=Html.TextBox("FechaPublicacion", Model.FechaPublicacion, new { @class = "input100-requerido", maxlength = 4 })%>
    <span>(Formato yyyy)</span>
    <%=Html.ValidationMessage("FechaPublicacion")%>
</p>