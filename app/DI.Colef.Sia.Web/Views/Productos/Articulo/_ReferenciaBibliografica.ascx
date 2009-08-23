﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ArticuloForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models" %>
<p>
    <label>T&iacute;tulo Art&iacute;culo</label>
    <%=Html.TextBox("Titulo", Model.Titulo, new { @class = "input250-requerido", maxlength = 100 })%>
    <%=Html.ValidationMessage("Titulo")%>
</p>
<p>
    <label>Revista Publicacion</label>
    <%=Html.TextBox("RevistaPublicacionTitulo", Model.RevistaPublicacionTitulo, 
        new { @class = "autocomplete input250-requerido", rel = Url.Action("Search", "RevistaPublicacion"), maxlength = 100 }) %>
    <%=Html.Hidden("RevistaPublicacionId", Model.RevistaPublicacionId, new { rel = "#RevistaPublicacionTitulo" })%>
</p>
<p>
    <label>Instituci&oacute;n</label>
    <%=Html.TextBox("InstitucionNombre", Model.InstitucionNombre,
    new { @class = "autocomplete input250-requerido", rel = Url.Action("Search", "Institucion"), maxlength = 100 })%>
    <%=Html.Hidden("InstitucionId", Model.InstitucionId, new { rel = "#InstitucionNombre" })%>
</p>
<p>
    <label>&Iacute;ndice 1</label>
    <%=Html.DropDownList("Indice1", Model.Indices1.CreateSelectList<IndiceForm>("Id", "Nombre"),
                "Seleccione ...", new { @class = "requerido" })%>
    <%=Html.ValidationMessage("Indice1")%>
</p>
<p>
    <label>&Iacute;ndice 2</label>
    <%=Html.DropDownList("Indice2", Model.Indices2.CreateSelectList<IndiceForm>("Id", "Nombre"),
                "Seleccione ...", new { @class = "requerido" })%>
    <%=Html.ValidationMessage("Indice2")%>
</p>
<p>
    <label>&Iacute;ndice 3</label>
    <%=Html.DropDownList("Indice3", Model.Indices3.CreateSelectList<IndiceForm>("Id", "Nombre"),
                "Seleccione ...", new { @class = "requerido" })%>
    <%=Html.ValidationMessage("Indice3")%>
</p>
<p>
    <label>Pa&iacute;s</label>
    <%=Html.DropDownList("Pais", Model.Paises.CreateSelectList<PaisForm>("Id", "Nombre"),
                "Seleccione ...", new { @class = "requerido" })%>
    <%=Html.ValidationMessage("Pais") %>
</p>
<p>
    <label>Volumen</label>
    <%=Html.TextBox("Volumen", Model.Volumen, new { @class = "input250-requerido", maxlength = 100 })%>
    <%=Html.ValidationMessage("Volumen")%>
</p>
<p>
    <label>N&uacute;mero</label>
    <%=Html.TextBox("Numero", Model.Numero, new { @class = "input250-requerido", maxlength = 100 })%>
    <%=Html.ValidationMessage("Numero")%>
</p>
<p>
    <label>Fecha Edici&oacute;n</label>    
    <%=Html.TextBox("FechaEdicion", Model.FechaEdicion, new { @class = "datetime input100-requerido", maxlength = 10 })%>
    <span>(Formato dd/mm/yyyy)</span>
    <%=Html.ValidationMessage("FechaEdicion")%>
</p>
<p>
    <label>Pagina Inicial</label> 
    <%=Html.TextBox("PaginaInicial", Model.PaginaInicial, new { @class = "input250-requerido", maxlength = 10, size = 14 })%>
    <%=Html.ValidationMessage("PaginaInicial")%>
</p>
<p>    
    <label>Pagina Final</label>
    <%=Html.TextBox("PaginaFinal", Model.PaginaFinal, new { @class = "input250-requerido", maxlength = 10, size = 14 })%>
    <%=Html.ValidationMessage("PaginaFinal")%>
</p>