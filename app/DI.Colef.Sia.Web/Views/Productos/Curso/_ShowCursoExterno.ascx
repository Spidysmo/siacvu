﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<CursoForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<% if (!Model.IsShowForm) {%>
<p>
    <label>Nombre del curso</label>
    <%=Html.TextBox("Nombre", Model.Nombre, new {@class = "input420-bold-requerido", maxlength = 100})%>
    <span class="cvu"></span>
    <%=Html.ValidationMessage("Nombre")%>
</p>
<p>
    <label>Programa de estudios</label>
    <%=Html.TextBox("ProgramaEstudio", Model.ProgramaEstudio, new { @class = "input420-requerido", maxlength = 100 })%>
    <span class="cvu"></span>
    <%=Html.ValidationMessage("ProgramaEstudio")%>
</p>
<p>
    <label>Nivel de estudios</label>
    <%=Html.DropDownList("NivelEstudio", Model.NivelEstudios.CreateSelectList<NivelEstudioForm>("Id", "Nombre"),
        "Seleccione ...", new {@class = "requerido"})%>
    <span class="cvu"></span>
    <%=Html.ValidationMessage("NivelEstudio")%>
</p>

<% Html.RenderPartial("_ShowInstitucionShort", new ShowFieldsForm { InstitucionId = Model.InstitucionId, InstitucionNombre = Model.InstitucionNombre, InstitucionLabel = "Institución", IsShowForm = false});%>

<p>
    <label>Fecha de inicio</label>
    <%=Html.TextBox("FechaInicial", Model.FechaInicial, new {@class = "datetime input100-requerido", maxlength = 10})%>
    <span>(Formato dd/mm/yyyy)</span>
    <span class="cvu"></span>
    <%=Html.ValidationMessage("FechaInicial")%>
</p>
<p>
    <label>Fecha de fin</label>
    <%=Html.TextBox("FechaFinal", Model.FechaFinal, new {@class = "datetime input100-requerido", maxlength = 10})%>
    <span>(Formato dd/mm/yyyy)</span>
    <span class="cvu"></span>
    <%=Html.ValidationMessage("FechaFinal")%>
</p>
<p>
    <label>N&uacute;mero de horas</label>
    <%=Html.TextBox("NumeroHoras", Model.NumeroHoras, new {@class = "input100-requerido", maxlength = 3})%>
    <span class="cvu"></span>
    <%=Html.ValidationMessage("NumeroHoras")%>
</p>

<% Html.RenderPartial("_Show2doNivel", new ShowFieldsForm { Sectores = Model.Sectores, Organizaciones = Model.Organizaciones, Niveles = Model.Niveles, IsShowForm = false });%>

<% } else { %>
    <p>
        <label>Nombre del curso</label>
        <span class="valor"><%= Html.Encode(Model.Nombre) %>&nbsp;</span>
    </p>
    <p>
        <label>Programa de estudios</label>
        <span class="valor"><%= Html.Encode(Model.ProgramaEstudio) %>&nbsp;</span>
    </p>
    <p>
        <label>Nivel de estudios</label>
        <span class="valor"><%= Html.Encode(Model.NivelEstudioNombre) %>&nbsp;</span>
    </p>

    <% Html.RenderPartial("_ShowInstitucionShort", Model.ShowFields); %>

    <p>
        <label>Fecha de inicio</label>
        <span class="valor"><%= Html.Encode(Model.FechaInicial) %>&nbsp;</span>
    </p>
    <p>
        <label>Fecha de fin</label>
        <span class="valor"><%= Html.Encode(Model.FechaFinal) %>&nbsp;</span>
    </p>
    <p>
        <label>N&uacute;mero de horas</label>
        <span class="valor"><%= Html.Encode(Model.NumeroHoras) %>&nbsp;</span>
    </p>

    <% Html.RenderPartial("_Show2doNivel", Model.ShowFields); %>
<% } %>