﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ParticipacionMedioForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<p>
	<label>Tipo de participaci&oacute;n</label>
	<%=Html.DropDownList("TipoParticipacion", Model.TiposParticipaciones.CreateSelectList<TipoParticipacionForm>("Id", "Nombre"),
        "Seleccione ...", new { @class = "requerido" })%>
	<span class="cvu"></span>
	<%=Html.ValidationMessage("TipoParticipacion")%>
</p>
<p>
	<label class="noeffect" id="libro_label">Nombre del libro</label>
	<label class="noeffect" id="investigacion_label">Nombre del proyecto de investigaci&oacute;n</label>
	<label class="noeffect" id="notaPeriodistica_label">Nota period&iacute;stica</label>
	<label class="noeffect" id="titulo_label">T&iacute;tulo/Tema presentado</label>
	<%=Html.TextBox("Titulo", Model.Titulo, new { @class = "input420-bold-requerido", maxlength = 100 })%>
	<span class="cvu"></span>
	<%=Html.ValidationMessage("Titulo")%>
</p>

<% Html.RenderPartial("_ShowPalabrasClave", new ShowFieldsForm { PalabraClave1 = Model.PalabraClave1, PalabraClave2 = Model.PalabraClave2, PalabraClave3 = Model.PalabraClave3, IsShowForm = false }); %>

<% Html.RenderPartial("_ShowAreaTematica", new ShowFieldsForm { AreaTematicaId = Model.AreaTematicaId, AreaTematicaNombre = Model.AreaTematicaNombre, ModelId = Model.Id, IsShowForm = false}); %>

<p>
	<label>Instituci&oacute;n responsable/Nombre del medio</label>
	<%=Html.TextBox("Institucion", Model.Institucion, new { @class = "input420-requerido", maxlength = 100 })%>
	<span class="cvu"></span>
	<%=Html.ValidationMessage("Institucion")%>
</p>
<p>
	<label>&Aacute;mbito</label>
	<%=Html.DropDownList("Ambito", Model.Ambitos.CreateSelectList<AmbitoForm>("Id", "Nombre"),
        "Seleccione ...", new { @class = "requerido" })%>
	<%=Html.ValidationMessage("Ambito") %>
</p>
<p>
    <label>Dirigido a</label>
	<%=Html.DropDownList("DirigidoA", Model.DirigidosA.CreateSelectList<DirigidoAForm>("Id", "Nombre"),
        "Seleccione ...", new { @class = "requerido" })%>
	<span class="cvu"></span>
	<%=Html.ValidationMessage("DirigidoA")%>
</p>
<p>
	<label>Lugar de la presentaci&oacute;n</label>
	<%=Html.TextBox("LugarPresentacion", Model.LugarPresentacion, new { @class = "input420-requerido", maxlength = 100 })%>
	<%=Html.ValidationMessage("LugarPresentacion")%>
</p>
<p>
	<label>Fecha de la presentaci&oacute;n</label>
	<%=Html.TextBox("FechaPresentacion", Model.FechaPresentacion, new { @class = "datetime input100-requerido", maxlength = 10 })%>
    <span>(Formato dd/mm/yyyy)</span>
    <span class="cvu"></span>
    <%=Html.ValidationMessage("FechaPresentacion")%>
</p>