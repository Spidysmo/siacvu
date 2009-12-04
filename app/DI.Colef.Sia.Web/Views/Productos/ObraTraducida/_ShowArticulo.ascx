﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ObraTraducidaForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models" %>

<% if(Model.RevistaPublicacionTitulo != ""){ %>
    <% Html.RenderPartial("_ShowRevista", Model.ShowFields); %>
<% } %>

<p>
    <label>Volumen</label>
    <span class="valor"><%= Html.Encode(Model.Volumen)%>&nbsp;</span>
</p>
<p>
    <label>N&uacute;mero</label>
    <span class="valor"><%= Html.Encode(Model.Numero)%>&nbsp;</span>
</p>
<p>
    <label>De la p&aacute;gina</label>
    <span class="valor"><%= Html.Encode(Model.PaginaInicial)%>&nbsp;</span>
</p>
<p>    
    <label>A la p&aacute;gina</label>
    <span class="valor"><%= Html.Encode(Model.PaginaFinal)%>&nbsp;</span>
</p>