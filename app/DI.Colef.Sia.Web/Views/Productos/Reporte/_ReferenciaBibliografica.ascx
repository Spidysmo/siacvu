﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ReporteForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<p>
	<label>Instituci&oacute;n</label>
	<%=Html.DropDownList("Institucion", Model.Instituciones.CreateSelectList<InstitucionForm>("Id", "Nombre"),
			"Seleccione ...")%>
	<%=Html.ValidationMessage("Institucion") %>
</p>
<p>
	<label>Editorial</label>
	<%=Html.TextBox("Editorial", Model.Editorial, new { @class = "input250-requerido", maxlength = 100 })%>
	<%=Html.ValidationMessage("Editorial")%>
</p>
<p>
	<label>Pa&iacute;s</label>
	<%=Html.DropDownList("Pais", Model.Paises.CreateSelectList<PaisForm>("Id", "Nombre"),
			"Seleccione ...")%>
	<%=Html.ValidationMessage("Pais") %>									
</p>
<p>
	<label>No P&aacute;ginas</label>
    <%=Html.TextBox("NoPaginas", Model.NoPaginas, new { @class = "input250-requerido", maxlength = 10, size = 14 })%>
    <%=Html.ValidationMessage("NoPaginas")%>
</p>
<p>
	<label>Descripci&oacute;n</label>
	<%=Html.TextBox("Descripcion", Model.Descripcion, new { @class = "input250-requerido", maxlength = 100 })%>
	<%=Html.ValidationMessage("Descripcion")%>
</p>