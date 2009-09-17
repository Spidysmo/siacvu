﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ResenaForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<p class="NotaCritica">
    <label>Nombre del producto</label>
    <%=Html.TextArea("NombreProducto", Model.NombreProducto, 3, 35, new { @class = "input420-bold-requerido", maxlength = 200 })%>
    <%=Html.ValidationMessage("NombreProducto")%>
</p>
<p class="NotaCritica">
    <label>Nombre de la revista</label>
    <%=Html.TextBox("NombreRevista", Model.NombreRevista, new { @class = "input420-requerido", maxlength = 100 })%>
    <%=Html.ValidationMessage("NombreRevista")%>
</p>
<div id="ResenaBibliografica_div">
    <p>
        <label>Referencia bibliogr&aacute;fica del libro</label>
        <%=Html.TextArea("ReferenciaBibliograficaLibro", Model.ReferenciaBibliograficaLibro, 3, 35, new { @class = "input420-requerido", maxlength = 100 })%>
        <%=Html.ValidationMessage("ReferenciaBibliograficaLibro")%>
        <span>(Referencia bibliogr&aacute;fica)</span>
    </p>
    <p>
        <label>Referencia bibliogr&aacute;fica de la revista</label>
        <%=Html.TextArea("ReferenciaBibliograficaRevista", Model.ReferenciaBibliograficaRevista, 3, 35, new { @class = "input420-requerido", maxlength = 100 })%>
        <%=Html.ValidationMessage("ReferenciaBibliograficaRevista")%>
        <span>(Referencia bibliogr&aacute;fica)</span>
    </p>
</div>
<p>
	<label>Pa&iacute;s</label>
	<%=Html.DropDownList("Pais", Model.Paises.CreateSelectList<PaisForm>("Id", "Nombre"),
                "Seleccione ...", new { @class = "requerido" })%>
	<%=Html.ValidationMessage("Pais") %>
</p>
<p>
    <label>P&aacute;gina inicial</label>
    <%=Html.TextBox("PaginaInicial", Model.PaginaInicial, new { @class = "input100-requerido", maxlength = 4, size = 14 })%>
    <span class="cvu"></span>
    <%=Html.ValidationMessage("PaginaInicial")%>										
</p>
<p>
    <label>P&aacute;gina final</label>
    <%=Html.TextBox("PaginaFinal", Model.PaginaFinal, new { @class = "input100-requerido", maxlength = 4, size = 14 })%>
    <span class="cvu"></span>
    <%=Html.ValidationMessage("PaginaFinal")%>
</p>
<p>
	<label>T&iacute;tulo del libro</label>
    <%=Html.TextBox("TituloLibro", Model.TituloLibro, new { @class = "input420-requerido", maxlength = 100 })%>
	<%=Html.ValidationMessage("TituloLibro")%>
</p>
<p class="NotaCritica">
	<label>Editorial</label>
	<%=Html.TextBox("Editorial", Model.Editorial, new { @class = "input420-requerido", maxlength = 100 })%>
	<%=Html.ValidationMessage("Editorial")%>
</p>