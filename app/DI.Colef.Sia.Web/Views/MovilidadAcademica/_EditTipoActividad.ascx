<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl<MovilidadAcademicaForm>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<div id="tipoactividadList" class="minilista">
	<h5>Tipo actividad</h5>
	<% if (Model.TipoActividadMovilidadAcademicas != null && Model.TipoActividadMovilidadAcademicas.Length > 0){%>
	    <% foreach (var tipoActividad in Model.TipoActividadMovilidadAcademicas){ %>
            <div class="sublista" id="tipoactividad_<%=Html.Encode(tipoActividad.TipoActividadId) %>">            
    	        <h6>
    	            <%=Html.Encode(tipoActividad.TipoActividadNombre)%>
    	            <% if(Model.Id == 0) { %>
	                    <%=Html.Hidden("TipoActividadMovilidadAcademica.TipoActividadId_New", tipoActividad.TipoActividadId)%>
	                <% } %>
    	        </h6>
            </div><!--end tipoActividadLista-->
        <% } %>
    <% } else { %>
        <div class="sublista" id="tipoactividadEmptyList_form">
            <h6><span>No hay actividades definidas</span></h6>
        </div>
    <% } %>
    
    <div id="tipoactividad_new" class="minilistaboton">
		<p><span><%=Html.ActionLink("+ Nuevo tipo actividad", "NewTipoActividad", new { Id = Model.Id }, new { @class = "remote get" })%></span></p>
	</div><!--end minilistaboton-->	
          
</div><!--end minilista-->

<div id="tipoactividad_form" class="display:hidden;"></div>
	