<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true"
    Inherits="System.Web.Mvc.ViewPage<GenericViewData<ParticipacionForm>>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Productos"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models" %>
<%@ Import Namespace="DI.Colef.Sia.Web.Controllers" %>

<asp:Content ID="titleContent" ContentPlaceHolderID="TituloPlaceHolder" runat="server">
    <h2><%=Html.Encode(Model.Title) %></h2>
</asp:Content>

<asp:Content ID="introductionContent" ContentPlaceHolderID="IntroduccionPlaceHolder" runat="server">
    <div id="subcontenido">
        <h3>Agregar nueva participaci&oacute;n</h3>
        <p>
            Puede agregar una nueva participaci&oacute;n dentro de la lista de administraci&oacute;n presionando
            en el bot&oacute;n derecho de t&iacute;tulo <strong>+ Nueva participaci&oacute;n</strong>.
		</p>
        <div class="botonzon">
            <span><%=Html.ActionLink<ParticipacionController>(x => x.New(), "+ Nueva participaci�n")%></span>
        </div>
    </div><!--end subcontenido-->
</asp:Content>

<asp:Content ID="sidebarContent" ContentPlaceHolderID="SidebarContentPlaceHolder" runat="server">
    <div id="barra">
        <div id="asistente">
            <h3>Asistente de secci&oacute;n</h3>
            <p>Lista de participaciones registradas en el sistema.</p>
            <% Html.RenderPartial("_ListSidebar"); %>
        </div><!--end asistente-->
    </div><!--end barra-->
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
<div id="textos">
	
	<% Html.RenderPartial("_Message"); %>
	<% Html.RenderPartial("_Search"); %>
	
	<div id="lista">
	<h4>Participaciones</h4>
            
		<% if (Model.List == null || Model.List.Length == 0) { %>
			<div class="elementolista">
				<div class="elementodescripcion">
					<h5><span>No hay participaciones registradas</span></h5>
				</div><!--end elementodescripcion-->

			</div><!--end elementolista-->
		<% } else { %>
			<% foreach (var participacion in Model.List) { %>
				<div class="elementolista" id="accion_<%=Html.Encode(participacion.Id) %>">
					<div class="elementodescripcion">
					    <h5><span><%=Html.Encode(participacion.Titulo)%></span></h5>
						<h6>Modificado el <%=Html.Encode(participacion.Modificacion) %></h6>
					</div><!--end elementodescripcion-->

					<div class="elementobotones">
						<p>
							<span><%=Html.ActionLink<ParticipacionController>(x => x.Edit(participacion.Id), "Editar") %></span>
			            	<span><%=Html.ActionLink("Ver", "Show", new { id = participacion.Id })%></span>
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
