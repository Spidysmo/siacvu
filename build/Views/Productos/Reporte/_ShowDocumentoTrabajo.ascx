﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ReporteForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<p>
    <label>Instituci&oacute;n donde se publica</label>
    <span class="valor"><%= Html.Encode(Model.InstitucionNombre)%>&nbsp;</span>
</p>
<p>
    <label>Serie/N&uacute;mero</label>
    <span class="valor"><%= Html.Encode(Model.Numero)%>&nbsp;</span>
</p>
<p>
    <label>Descripci&oacute;n del cuaderno</label>
    <span class="valor"><%= Html.Encode(Model.Descripcion)%>&nbsp;</span>
</p>
<p>
    <label>Objetivo del cuaderno</label>
    <span class="valor"><%= Html.Encode(Model.Objetivo)%>&nbsp;</span>
</p>
<p>
    <label>No. de p&aacute;ginas</label>
    <span class="valor"><%= Html.Encode(Model.NoPaginas)%>&nbsp;</span>
</p>