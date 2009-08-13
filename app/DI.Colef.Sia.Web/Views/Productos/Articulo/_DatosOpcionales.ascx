﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ArticuloForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models" %>
<p>
    <label>Linea de Investigacion personal:</label>
    <%=Html.DropDownList("LineaInvestigacion", Model.LineasInvestigaciones.CreateSelectList<LineaInvestigacionForm>("Id", "Nombre"),
                "Seleccione ...")%>
    <%=Html.ValidationMessage("LineaInvestigacion") %>
</p>
<p>
    <label>
        Tipo de Actividad:</label>
    <%=Html.DropDownList("TipoActividad", Model.TiposActividades.CreateSelectList<TipoActividadForm>("Id", "Nombre"),
                "Seleccione ...")%>
    <%=Html.ValidationMessage("TipoActividad") %>
</p>
<p>
    <label>Tipo de Participante:</label>
    <%=Html.DropDownList("TipoParticipante", Model.TiposParticipantes.CreateSelectList<TipoParticipanteForm>("Id", "Nombre"),
                "Seleccione ...")%>
    <%=Html.ValidationMessage("TipoParticipante") %>
</p>
<p>
    <label>
        Participantes:</label>
    <%=Html.TextBox("Participantes", Model.Participantes, new { maxlength = 5, size = 5 })%>
    <%=Html.ValidationMessage("Participantes")%>
</p>
<p>
    <label>
        Palabras Claves:</label>
    <%=Html.TextBox("PalabrasClaves", Model.PalabrasClaves, new { maxlength = 100 })%>
    <%=Html.ValidationMessage("PalabrasClaves")%>
</p>
<p>
    <label>
        Area:</label>
    <%=Html.DropDownList("Area", Model.Areas.CreateSelectList<AreaForm>("Id", "Nombre"),
                "Seleccione ...")%>
    <%=Html.ValidationMessage("Area") %>
</p>
<p>
    <label>
        Disciplina:</label>
    <%=Html.DropDownList("Disciplina", Model.Disciplinas.CreateSelectList<DisciplinaForm>("Id", "Nombre"),
                "Seleccione ...")%>
    <%=Html.ValidationMessage("Disciplina") %>
</p>
<p>
    <label>
        Subdisciplina:</label>
    <%=Html.DropDownList("Subdisciplina", Model.Subdisciplinas.CreateSelectList<SubdisciplinaForm>("Id", "Nombre"),
                "Seleccione ...")%>
    <%=Html.ValidationMessage("Subdisciplina") %>
</p>
<p>
    <label>
        Fecha Publicacion:</label>    
    <%=Html.TextBox("FechaPublicacion", Model.FechaPublicacion, new { @class="datetime", maxlength = 10 })%>
    <span class="helper_message">(Formato dd/mm/yyyy)</span>
    <%=Html.ValidationMessage("FechaPublicacion")%>
</p>