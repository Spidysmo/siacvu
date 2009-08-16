﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ParticipacionForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<p>
	<label>Titulo</label>

	<%=Html.TextBox("Titulo", Model.Titulo, new { @class = "input250-requerido",  maxlength = 100 })%>
	<%=Html.ValidationMessage("Titulo")%>
</p>
<p>
	<label>Autor</label>

    <%=Html.DropDownList("Autor", Model.Autores.CreateSelectList<InvestigadorForm>("Id", "Nombre"),
		"Seleccione ...")%>
	<%=Html.ValidationMessage("Autor")%>
</p>
<p>
	<label>Otra Participacion</label>

	<%=Html.DropDownList("OtraParticipacion", Model.OtrasParticipaciones.CreateSelectList<OtraParticipacionForm>("Id", "Nombre"),
		"Seleccione ...")%>
	<%=Html.ValidationMessage("OtraParticipacion") %>
</p>
<p>
	<label>Tipo Presentacion</label>

	<%=Html.DropDownList("TipoPresentacion", Model.TiposPresentaciones.CreateSelectList<TipoPresentacionForm>("Id", "Nombre"),
		"Seleccione ...")%>
	<%=Html.ValidationMessage("TipoPresentacion") %>
</p>
<p>
	<label>Institucion</label>

	<%=Html.TextBox("Institucion", Model.Institucion, new { @class = "input250-requerido", maxlength = 100 })%>
	<%=Html.ValidationMessage("Institucion")%>
</p>
<p>
	<label>Fecha Presentacion</label>

	<%=Html.TextBox("FechaPresentacion", Model.FechaPresentacion, new { @class = "datetime input100-requerido", maxlength = 10 })%>
    <span>(Formato dd/mm/yyyy)</span>
    <%=Html.ValidationMessage("FechaPresentacion")%>
</p>
<p>
	<label>Periodo Referencia</label>

	<%=Html.DropDownList("PeriodoReferencia", Model.PeriodosReferencias.CreateSelectList<PeriodoReferenciaForm>("Id", "Periodo"),
		"Seleccione ...")%>
	<%=Html.ValidationMessage("PeriodoReferencia") %>
</p>
<p>
	<label>Proyecto</label>

	<%=Html.DropDownList("Proyecto", Model.Proyectos.CreateSelectList<ProyectoForm>("Id", "Nombre"),
		"Seleccione ...")%>
	<%=Html.ValidationMessage("Proyecto") %>
</p>
<p>
	<label>Lugar</label>

	<%=Html.TextBox("Lugar", Model.Lugar, new { @class = "input250-requerido", maxlength = 100 })%>
	<%=Html.ValidationMessage("Lugar")%>
</p>
<p>
	<label>Pais</label>

	<%=Html.DropDownList("Pais", Model.Paises.CreateSelectList<PaisForm>("Id", "Nombre"),
		"Seleccione ...")%>
	<%=Html.ValidationMessage("Pais") %>
</p>
<p>
	<label>Estado Pais</label>

	<%=Html.DropDownList("EstadoPais", Model.EstadosPaises.CreateSelectList<EstadoPaisForm>("Id", "Nombre"),
		"Seleccione ...")%>
	<%=Html.ValidationMessage("EstadoPais") %>
</p>
<p>
	<label>Ciudad</label>

	<%=Html.TextBox("Ciudad", Model.Ciudad, new { @class = "input250-requerido", maxlength = 100 })%>
	<%=Html.ValidationMessage("Ciudad")%>
</p>
