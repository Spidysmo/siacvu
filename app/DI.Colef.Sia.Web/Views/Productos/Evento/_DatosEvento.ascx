﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<EventoForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<p>
	<label>Palabra clave 1</label>
	<%=Html.TextBox("PalabraClave1", Model.PalabraClave1, new { @class = "input250", maxlength = 100 })%>
	<span class="cvu"></span>
</p>
<p>
    <label>Palabra clave 2</label>
	<%=Html.TextBox("PalabraClave2", Model.PalabraClave2, new { @class = "input250", maxlength = 100 })%>
	<span class="cvu"></span>
</p>
<p>
    <label>Palabra clave 3</label>
	<%=Html.TextBox("PalabraClave3", Model.PalabraClave3, new { @class = "input250", maxlength = 100 })%>
	<span class="cvu"></span>
</p>
<p>
    <label>&Aacute;mbito</label>
	<%=Html.DropDownList("Ambito", Model.Ambitos.CreateSelectList<AmbitoForm>("Id", "Nombre"),
                "Seleccione ...", new { @class = "requerido" })%>
	<%=Html.ValidationMessage("Ambito") %>
</p>
<p>
    <label>Con invitaci&oacute;n</label>
    <%= Html.CheckBox("Invitacion", Model.Invitacion) %>
    <%=Html.ValidationMessage("Invitacion")%>
</p>