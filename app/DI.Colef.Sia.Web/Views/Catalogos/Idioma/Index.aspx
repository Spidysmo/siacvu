<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true" 
    Inherits="System.Web.Mvc.ViewPage<GenericViewData<IdiomaForm>>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Catalogos"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<%@ Import Namespace="DI.Colef.Sia.Web.Controllers" %>

<asp:Content ID="titleContent" ContentPlaceHolderID="TituloPlaceHolder" runat="server">
    <h2><%=Html.Encode(Model.Title) %></h2>
</asp:Content>

<asp:Content ID="introductionContent" ContentPlaceHolderID="IntroduccionPlaceHolder" runat="server">
    <div id="subcontenido">
        <h3>Agregar nuevo idioma</h3>
        <p>
            Puede agregar un nuevo idioma dentro de la lista de administraci&oacute;n de
            catalogos presionando en el bot&oacute;n derecho de t&iacute;tulo <strong>+ Nuevo idioma</strong>.
		</p>
        <div class="botonzon">
            <span><%=Html.ActionLink<IdiomaController>(x => x.New(), "+ Nuevo idioma")%></span>
        </div>
    </div>
</asp:Content>

<asp:Content ID="sidebarContent" ContentPlaceHolderID="SidebarContentPlaceHolder" runat="server">
    <div id="barra">
        <div id="asistente">
            <h3>Asistente de secci&oacute;n</h3>
            <p>Lista de idiomas registrados en el sistema.</p>
            <% Html.RenderPartial("_ListSidebar"); %>
        </div><!--end asistente-->
    </div><!--end barra-->
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
<div id="textos">
	
	<% Html.RenderPartial("_Message"); %>
	<% Html.RenderPartial("_Search"); %>
	
	<div id="lista">
		<h4>Idiomas</h4>
            
		<% if (Model.List == null || Model.List.Length == 0) { %>
			<div class="elementolista">
				<div class="elementodescripcion">
					<h5><span>No hay idiomas registrados</span></h5>
				</div><!--end elementodescripcion-->

			</div><!--end elementolista-->
		<% } else { %>
			<% foreach (var idioma in Model.List) { %>
				<div class="elementolista" id="accion_<%=Html.Encode(idioma.Id) %>">
					<div class="elementodescripcion">
						<h5><span><%=Html.Encode(idioma.Nombre) %></span></h5>
						<h6>Modificado el <%=Html.Encode(idioma.Modificacion) %></h6>
					</div><!--end elementodescripcion-->

					<div class="elementobotones">
						<p>
							<span><%=Html.ActionLink<IdiomaController>(x => x.Edit(idioma.Id), "Editar") %></span>
	                        <span>
	                            <% if (idioma.Activo) { %>
	                                <%=Html.ActionLink("Desactivar", "Deactivate", new { id = idioma.Id }, new { @class = "remote put" })%>
	                            <% } else { %>
	                                <%=Html.ActionLink("Activar", "Activate", new { id = idioma.Id }, new { @class = "remote put" })%>
	                            <% } %>
	                        </span>
	                   	</p>
					</div><!--end elementobotones-->
		
               </div><!--end elementolista-->
			<% } %>
		<% } %>
            
	</div><!--end lista-->

</div><!--end textos-->

<script type="text/javascript">
    $(document).ready(function() {
        setupDocument();
    });
</script>

</asp:Content>
