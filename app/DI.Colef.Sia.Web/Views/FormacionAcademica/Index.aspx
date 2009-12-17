<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true"
    Inherits="System.Web.Mvc.ViewPage<GenericViewData<FormacionAcademicaForm>>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models" %>
<%@ Import Namespace="DI.Colef.Sia.Web.Controllers" %>

<asp:Content ID="titleContent" ContentPlaceHolderID="TituloPlaceHolder" runat="server">
    <h2>
        <%=Html.Encode(Model.Title) %></h2>
</asp:Content>

<asp:Content ID="introductionContent" ContentPlaceHolderID="IntroduccionPlaceHolder"
    runat="server">
    <div id="subcontenido">
        <h3>Agregar nueva formaci&oacute;n acad&eacute;mica</h3>
        <p>
            Puede agregar una nueva formaci&oacute;n acad&eacute;mica dentro de la lista de administraci&oacute;n
            presionando en el bot&oacute;n derecho de t&iacute;tulo <strong>+ Nueva formaci&oacute;n acad&eacute;mica</strong>.
        </p>
        <div class="botonzon">
            <span><%=Html.ActionLink<FormacionAcademicaController>(x => x.New(), "+ Nueva formaci�n acad�mica")%></span>
        </div>
    </div><!--end subcontenido-->
</asp:Content>

<asp:Content ID="sidebarContent" ContentPlaceHolderID="SidebarContentPlaceHolder"
    runat="server">
    <div id="barra">
        <div id="asistente">
            <h3Asistente de secci&oacute;n</h3>
            <p>Lista de formaciones acad&eacute;micas registradas en el sistema.</p>
            <% Html.RenderPartial("_ListSidebar"); %>
        </div><!--end asistente-->
    </div><!--end barra-->
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
<div id="textos">

    <% Html.RenderPartial("_Message"); %>
    <% Html.RenderPartial("_Search"); %>
    
    <div id="lista">
        <h4>Formaciones acad&eacute;micas</h4>
        
         <% if(Model.List == null || Model.List.Length == 0) { %>
			<div class="elementolista">
				<div class="elementodescripcion">
					<h5><span>No hay formaciones acad&eacute;micas registradas</span></h5>
				</div><!--end elementodescripcion-->	

			</div><!--end elementolista-->
		    
        <% } else { %>
            <% foreach (var formacionAcademica in Model.List) { %>
                <div class="elementolista" id="accion_<%=Html.Encode(formacionAcademica.Id) %>">
			        <div class="elementodescripcion">
			            <h5><span><%=Html.Encode(formacionAcademica.TituloGrado)%></span></h5>
				        <h6>Modificado el <%=Html.Encode(formacionAcademica.Modificacion)%></h6>
			        </div><!--end elementodescripcion-->
    				
			        <div class="elementobotones">
				        <p>
				            <span><%=Html.ActionLink<FormacionAcademicaController>(x => x.Edit(formacionAcademica.Id), "Editar")%></span> 
				            <span><%=Html.ActionLink("Ver", "Show", new { id = formacionAcademica.Id })%></span>
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
