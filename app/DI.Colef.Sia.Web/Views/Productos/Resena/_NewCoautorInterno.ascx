﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<ResenaForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<p>
	<label>Coautor interno</label>
	<%=Html.DropDownList("CoautorInternoResena.InvestigadorId", Model.CoautoresInternos.CreateSelectList<InvestigadorForm>("Id", "NombreCoautor"),
                "Seleccione ...", new { rel = "#coautorinterno" })%>
	<%=Html.ValidationMessage("CoautorInternoResena.InvestigadorId")%>
</p>