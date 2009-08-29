﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ApoyoConacytForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<p>
    <label>No Apoyo</label>
    <%=Html.TextBox("NoApoyo", Model.NoApoyo, new { @class = "input250-requerido" })%>
    <%=Html.ValidationMessage("NoApoyo")%>
</p>
<p>
    <label>Tipo Apoyo</label>
    <%=Html.DropDownList("TipoApoyo", Model.TiposApoyos.CreateSelectList<TipoApoyoForm>("Id", "Nombre"),
				"Seleccione ...", new { @class ="requerido" })%>
    <%=Html.ValidationMessage("TipoApoyo") %>
</p>
<p>
    <label>Subprograma Conacyt</label>
    <%=Html.DropDownList("SubprogramaConacyt", Model.SubprogramasConacyts.CreateSelectList<SubprogramaConacytForm>("Id", "Nombre"),
				"Seleccione ...", new { @class ="requerido" })%>
    <%=Html.ValidationMessage("SubprogramaConacyt") %>
</p>
<p>
    <label>Fecha Inicial</label>
    <%=Html.TextBox("FechaInicial", Model.FechaInicial, new { @class = "datetime input100-requerido", maxlength = 10 })%>
    <span>(Formato dd/mm/yyyy)</span>
    <%=Html.ValidationMessage("FechaInicial")%>
</p>
<p>
    <label>Fecha final</label>
    <%=Html.TextBox("FechaFinal", Model.FechaFinal, new { @class = "datetime input100-requerido", maxlength = 10 })%>
    <span>(Formato dd/mm/yyyy)</span>
    <%=Html.ValidationMessage("FechaFinal")%>
</p>
<p>
	<label>Palabra clave 1</label>
	<%=Html.TextBox("PalabraClave1", Model.PalabraClave1, new { @class = "input250", maxlength = 100 })%>
	<%=Html.ValidationMessage("PalabraClave1")%>
</p>
<p>
	<label>Palabra clave 2</label>
	<%=Html.TextBox("PalabraClave2", Model.PalabraClave2, new { @class = "input250", maxlength = 100 })%>
	<%=Html.ValidationMessage("PalabraClave2")%>
</p>
<p>
	<label>Palabra clave 3</label>
    <%=Html.TextBox("PalabraClave3", Model.PalabraClave3, new { @class = "input250", maxlength = 100 })%>
	<%=Html.ValidationMessage("PalabraClave3")%>
</p>
