﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<CoautorForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>

<p>
    <label>Coautor interno</label>
    <%=Html.TextBox("CoautorInterno.Nombre", "",
        new { @class = "autocomplete buscar-requerido", rel = Url.Action("Search", "Investigador"), maxlength = 100 })%>
    <%=Html.Hidden("CoautorInterno.InvestigadorId", 0, new { rel = "#CoautorInterno_Nombre" })%>
</p>

<p><%=Html.Hidden("CoautorInterno.Posicion", 2) %></p>