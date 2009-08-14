﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<LibroForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models" %>
<p>
    <label>
        Nombre:</label>
    <%=Html.TextBox("Nombre", Model.Nombre, new { @class = "input250-requerido", maxlength = 100 })%>
    <%=Html.ValidationMessage("Nombre")%>
</p>
<p>
    <label>
        Isbn:</label>
    <%=Html.TextBox("ISBN", Model.ISBN, new { @class = "input250", maxlength = 100 })%>
    <%=Html.ValidationMessage("ISBN")%>
</p>
<p>
    <label>
        Editorial:</label>
    <%=Html.TextBox("Editorial", Model.Editorial, new { @class = "input250", maxlength = 100 })%>
    <%=Html.ValidationMessage("Editorial")%>
</p>
<p>
    <label>
        Fecha Edicion:</label>
<<<<<<< HEAD:app/DI.Colef.Sia.Web/Views/Productos/Libro/_ReferenciaBibliografica.ascx
    <%=Html.TextBox("FechaEdicion", Model.FechaEdicion, new { @class="datetime", maxlength = 10 })%>
    <span>(Formato dd/mm/yyyy)</span>
=======
    <%=Html.TextBox("FechaEdicion", Model.FechaEdicion, new { @class="datetime input100", maxlength = 10 })%>
    <span class="helper_message">(Formato dd/mm/yyyy)</span>
>>>>>>> 45466c8c7657207d4f25add6278388a85b7ed26a:app/DI.Colef.Sia.Web/Views/Productos/Libro/_ReferenciaBibliografica.ascx
    <%=Html.ValidationMessage("FechaEdicion")%>
</p>
<p>
    <label>
        Pais:</label>
    <%=Html.DropDownList("Pais", Model.Paises.CreateSelectList<PaisForm>("Id", "Nombre"),
								"Seleccione ...")%>
    <%=Html.ValidationMessage("Pais") %>
</p>
<p>
    <label>
        No Paginas:</label>
    <%=Html.TextBox("NoPaginas", Model.NoPaginas, new { @class = "input250", maxlength = 100, size = 14 })%>
    <%=Html.ValidationMessage("NoPaginas")%>
</p>
<p>
    <label>
        Tiraje:</label>
    <%=Html.TextBox("Tiraje", Model.Tiraje, new { @class = "input250", maxlength = 100 })%>
    <%=Html.ValidationMessage("Tiraje")%>
</p>
<p>
    <label>
        Idioma:</label>
    <%=Html.DropDownList("Idioma", Model.Idiomas.CreateSelectList<IdiomaForm>("Id", "Nombre"),
								"Seleccione ...")%>
    <%=Html.ValidationMessage("Idioma") %>
</p>