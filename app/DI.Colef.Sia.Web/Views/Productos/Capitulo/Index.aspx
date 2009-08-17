<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true"
    Inherits="System.Web.Mvc.ViewPage<GenericViewData<CapituloForm>>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Productos"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models" %>
<%@ Import Namespace="DI.Colef.Sia.Web.Controllers" %>

<asp:Content ID="titleContent" ContentPlaceHolderID="TituloPlaceHolder" runat="server">
    <h2><%=Html.Encode(Model.Title) %></h2>
</asp:Content>

<asp:Content ID="introductionContent" ContentPlaceHolderID="IntroduccionPlaceHolder" runat="server">
    <div id="subcontenido">
        <h3>Agregar Nuevo Capitulo</h3>
        <p>
            Puede agregar un nuevo Capitulo dentro de la lista de administraci&oacute;n presionando
            en el bot&oacute;n derecho de titulo <strong>+ Crear Capitulo</strong>.
		</p>
        <div class="botonzon">
            <span><%=Html.ActionLink<CapituloController>(x => x.New(), "+ Crear Capitulo") %></span>
        </div>
    </div><!--end subcontenido-->
</asp:Content>

<asp:Content ID="sidebarContent" ContentPlaceHolderID="SidebarContentPlaceHolder" runat="server">
    <div id="barra">
        <div id="asistente">
            <h3>Asistente de secci&oacute;n</h3>
            <p>Lista de Cap&iacute;tulos registrados en el sistema.</p>
            <% Html.RenderPartial("_ListSidebar"); %>
        </div><!--end asistente-->
    </div><!--end barra-->
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
<div id="textos">
	
	<% Html.RenderPartial("_Message"); %>
	<% Html.RenderPartial("_Search"); %>
	
	<div id="lista">
		<h4>Cap&iacute;tulos</h4>
            
		<% if (Model.List == null || Model.List.Length == 0) { %>
			<div class="elementolista">
				<div class="elementodescripcion">
					<h6><span>No hay cap&iacute;tulos definidos</span></h6>
				</div><!--end elementodescripcion-->

				<div class="elementobotones">
					<p><span></span></p>
				</div><!--end elementobotones-->	

			</div><!--end elementolista-->
		<% } else { %>
			<% foreach (var capitulo in Model.List) { %>
				<div class="elementolista" id="accion_<%=Html.Encode(capitulo.Id) %>">
					<div class="elementodescripcion">
						<h5><span><%=Html.Encode(capitulo.NombreCapitulo) %></h5></span>
						<h6>Modificado el <%=Html.Encode(capitulo.Modificacion) %></h6>
					</div><!--end elementodescripcion-->

					<div class="elementobotones">
						<p>
							<span><%=Html.ActionLink<CapituloController>(x => x.Edit(capitulo.Id), "Editar") %></span>
			            	<span>
			                	<% if (capitulo.Activo) { %>
			                    	<%=Html.ActionLink("Desactivar", "Deactivate", new { id = capitulo.Id }, new { @class = "remote put" })%>
								<% } else { %>
									<%=Html.ActionLink("Activar", "Activate", new { id = capitulo.Id }, new { @class = "remote put" })%>
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
