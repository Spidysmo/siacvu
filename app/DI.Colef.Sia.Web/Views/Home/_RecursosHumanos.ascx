﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<HomeForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Helpers"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>

<% if (Model.FormacionRecursosHumanos == null || Model.FormacionRecursosHumanos.Length == 0){ %>
	<div class="elementolista">
		<div class="elementodescripcion">
			<h5><span>No hay formaci&oacute;n de recursos humanos registrados</span></h5>
		</div><!--end elementodescripcion-->

	</div><!--end elementolista-->
<% } else { %>
    <% foreach (var recursoHumano in Model.FormacionRecursosHumanos){ %>
        <div class="elementolista" id="accion_<%=Html.Encode(recursoHumano.GuidNumber)%><%=Html.Encode(recursoHumano.Id)%><%=Html.Encode(recursoHumano.TipoProducto)%>">
            <div class="elementodescripcion">
                <h5><span><%=Html.Encode(recursoHumano.Nombre)%></span></h5>
                <h6>
                    <%=HumanizeHelper.GetNombreProducto(recursoHumano.TipoProducto)%>
                    Registrado el: <%=HumanizeHelper.FormatDate(recursoHumano.CreadoEl)%>
                    <% if (recursoHumano.Institucion != null){ %>
                        Instituci&oacute;n: <%=Html.Encode(recursoHumano.Institucion.Nombre)%>
                    <% } %>
                    <% if (recursoHumano.Firma.Aceptacion2 == 2){ %>
                        Rechazado Motivo: <%=Html.Encode(recursoHumano.Firma.Descripcion)%>
                    <% } %>
                </h6>
            </div><!--end elementodescripcion-->

			<div class="elementobotones">
				<p>
			        <% if (recursoHumano.Firma.Aceptacion2 != 1 && recursoHumano.Firma.Aceptacion1 == 0){ %>
				        <span><%=Html.CustomActionLink("Home", "Edit", "Editar", recursoHumano.Id, recursoHumano.TipoProducto)%></span>
				        <span><%=Html.CustomActionLink("Home", "Sign", "Firmar", recursoHumano.Id, recursoHumano.TipoProducto, recursoHumano.GuidNumber, new { @class = "remote put" })%></span>
                        <span><%=Html.CustomActionLink("Home", "Show", "Ver", recursoHumano.Id, recursoHumano.TipoProducto)%></span>
                    <% } %>
                    <%if(Page.User.IsInRole("Investigadores")){ %>
                        <% if (recursoHumano.Firma.Aceptacion1 == 1){ %>
                            <span><%=Html.CustomActionLink("Home", "Show", "Ver", recursoHumano.Id, recursoHumano.TipoProducto)%></span>
                        <% } %>
                    <% } %>
                    <% if(Page.User.IsInRole("DGAA")){ %>
                        <% if (recursoHumano.Firma.Aceptacion1 == 1){ %>
                            <span><%=Html.CustomActionLink("Home", "Edit", "Editar", recursoHumano.Id, recursoHumano.TipoProducto)%></span>
                        <% } %>                    
                    <% } %>
               	</p>
			</div><!--end elementobotones-->
        		
        </div><!--end elementolista-->
    <% } %>
<% } %>