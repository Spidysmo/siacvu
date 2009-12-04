﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<CargoInvestigadorForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>

var html = '
    <div id="cargo_<%=Html.Encode(Model.Id) %>" class="sublista">
        <h6><%=Html.Encode(Model.CargoNombre)%> <span><%=Html.Encode(Model.PuestoNombre)%>, <%=Html.Encode(Model.SedeNombre)%></span></h6>
        <span><%=Html.Encode(Model.DepartamentoNombre)%>, <%=Html.Encode(Model.DireccionRegionalNombre) %></span>
    </div><!--end estadolista-->
';

$('#message').html('');
$('#message').removeClass('errormessage');

$('#cargoForm').hide();
$('#cargoNew').show();
$('#cargoForm').html('');
$('#cargoList div:first').before(html);

$('#cargo_' + <%=Html.Encode(Model.Id) %> + ':first').hide();
$('#cargo_' + <%=Html.Encode(Model.Id) %> + ':first').fadeIn('slow');

setupSublistRows();
