﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<LibroForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models" %>
<p>
    <label>Nombre del libro</label>
    <%=Html.TextBox("Nombre", Model.Nombre, new { @class = "input350-bold-requerido", maxlength = 100 })%>
    <%=Html.ValidationMessage("Nombre")%>
</p>
<p>
    <label>ISBN</label>
    <%=Html.TextBox("ISBN", Model.ISBN, new { @class = "input250-requerido", maxlength = 100 })%>
    <%=Html.ValidationMessage("ISBN")%>
</p>
<p>
    <label>Editorial</label>
    <%=Html.TextBox("Editorial", Model.Editorial, new { @class = "input250-requerido", maxlength = 100 })%>
    <%=Html.ValidationMessage("Editorial")%>
</p>
<p>
    <label>Fecha de edici&oacute;n</label>
    <%=Html.TextBox("FechaEdicion", Model.FechaEdicion, new { @class = "datetime input100-requerido", maxlength = 10 })%>
    <span>(Formato dd/mm/yyyy)</span>
    <%=Html.ValidationMessage("FechaEdicion")%>
</p>
<p>
    <label>Pa&iacute;s</label>
    <%=Html.DropDownList("Pais", Model.Paises.CreateSelectList<PaisForm>("Id", "Nombre"),
                "Seleccione ...", new { @class = "requerido" })%>
    <%=Html.ValidationMessage("Pais") %>
</p>
<p>
    <label>No. de p&aacute;ginas</label>
    <%=Html.TextBox("NoPaginas", Model.NoPaginas, new { @class = "input250-requerido", maxlength = 100, size = 14 })%>
    <%=Html.ValidationMessage("NoPaginas")%>
</p>
<p>
    <label>Tiraje</label>
    <%=Html.TextBox("Tiraje", Model.Tiraje, new { @class = "input250-requerido", maxlength = 100 })%>
    <%=Html.ValidationMessage("Tiraje")%>
</p>
<p>
    <label>Volumen</label>
    <%=Html.TextBox("Volumen", Model.Tiraje, new { @class = "input250-requerido", maxlength = 100 })%>
    <%=Html.ValidationMessage("Volumen")%>
</p>
<p>
    <label>N&uacute;mero</label>
    <%=Html.TextBox("Tiraje", Model.Tiraje, new { @class = "input250-requerido", maxlength = 100 })%>
    <%=Html.ValidationMessage("Tiraje")%>
</p>
<p>
    <label>Fecha del evento</label>
    <%=Html.TextBox("FechaEvento", Model.Tiraje, new { @class = "input250-requerido", maxlength = 100 })%>
    <%=Html.ValidationMessage("FechaEvento")%>
</p>
<p>
    <label>Instituci&oacute;n</label>
    <%=Html.TextBox("InstitucionNombre", Model.InstitucionNombre,
        new { @class = "autocomplete input250-requerido", rel = Url.Action("Search", "Institucion"), maxlength = 100 })%>
    <%=Html.Hidden("InstitucionId", Model.InstitucionId, new { rel = "#InstitucionNombre" })%>
</p>
<p>
    <label>Nombre de la revista</label>
    <%=Html.TextBox("NombreRevistaTitulo", Model.NombreRevistaTitulo, 
        new { @class = "autocomplete input250-requerido", rel = Url.Action("Search", "RevistaPublicacion"), maxlength = 100 }) %>
    <%=Html.Hidden("NombreRevistaId", Model.NombreRevistaId, new { rel = "#NombreRevistaTitulo" })%>
</p>
<p>
    <label>Nombre del evento</label>
    <%=Html.DropDownList("NombreEvento", Model.Eventos.CreateSelectList<EventoForm>("Id", "Nombre"),
                "Seleccione ...", new { @class = "requerido" })%>
    <%=Html.ValidationMessage("NombreEvento")%>
</p>