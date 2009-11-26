<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true"
    Inherits="System.Web.Mvc.ViewPage<GenericViewData<ArticuloForm>>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Productos"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions" %>
<%@ Import Namespace="DI.Colef.Sia.Web.Controllers" %>

<asp:Content ID="titleContent" ContentPlaceHolderID="TituloPlaceHolder" runat="server">
    <h2><%=Html.Encode(Model.Title) %></h2>
</asp:Content>

<asp:Content ID="introductionContent" ContentPlaceHolderID="IntroduccionPlaceHolder" runat="server">
	<div id="introduccion">
	    <p>
	        Favor de llenar los siguientes campos para dar de alta un nuevo art&iacute;culo dentro del sistema.
	    </p>
	</div><!--end introduccion-->
</asp:Content>

<asp:Content ID="sidebarContent" ContentPlaceHolderID="SidebarContentPlaceHolder" runat="server">
	<div id="barra">
	    <div id="asistente">
	        <h3>Asistente de secci&oacute;n</h3>
	        <% Html.RenderPartial("_NewSidebar"); %>
	    </div><!--end asistente-->

	</div><!--end barra-->
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
	<div id="textos">
	
	    <% Html.RenderPartial("_Message"); %>    
	    <div id="forma">
	
	        <% using (Html.BeginForm("Create", "Articulo")){ %>
	            <%=Html.AntiForgeryToken() %>
	            <%=Html.Hidden("Id", Model.Form.Id) %>
                
                <h4>Datos de la publicaci&oacute;n</h4>
                <p>
                    <label>Nombre del art&iacute;culo</label>
                    <%=Html.TextBox("Titulo", Model.Form.Titulo, new { @class = "input420-bold-requerido", maxlength = 100 })%>
                    <span class="cvu"></span>
                    <%=Html.ValidationMessage("Titulo")%>
                </p>
                <p>
                    <label>Tipo de art&iacute;culo</label>
                    <%=Html.DropDownList("TipoArticulo", Model.Form.TiposArticulos.CreateSelectList<CustomSelectForm>("Id", "Nombre"),
                                        "Seleccione ...", new { @class = "tipo requerido" })%>
                    <span class="cvu"></span>
                    <%=Html.ValidationMessage("TipoArticulo") %>
                </p>
                <p>
                    <label></label>
                    <%= Html.CheckBox("TieneProyecto", Model.Form.TieneProyecto)%> Existe proyecto de investigaci&oacute;n de referencia?
                </p>
                <div id="tieneproyecto_field">
                    <% Html.RenderPartial("_ShowProyecto", new ShowFieldsForm { ProyectoId = Model.Form.ProyectoId, ProyectoNombre = Model.Form.ProyectoNombre, IsShowForm = false }); %>
                </div>
                
                <% Html.RenderPartial("_ShowAreaTematica", new ShowFieldsForm { AreaTematicaId = Model.Form.AreaTematicaId, AreaTematicaNombre = Model.Form.AreaTematicaNombre, ModelId = Model.Form.Id, IsShowForm = false }); %>
                
                <p>
	                <label>Palabra clave 1</label>
	                <%=Html.TextBox("PalabraClave1", Model.Form.PalabraClave1, new { @class = "input250", maxlength = 50 })%>
	                <span class="cvu"></span>
                </p>
                <p>
	                <label>Palabra clave 2</label>
	                <%=Html.TextBox("PalabraClave2", Model.Form.PalabraClave2, new { @class = "input250", maxlength = 50 })%>
	                <span class="cvu"></span>
                </p>
                <p>
	                <label>Palabra clave 3</label>
                    <%=Html.TextBox("PalabraClave3", Model.Form.PalabraClave3, new { @class = "input250", maxlength = 50 })%>
	                <span class="cvu"></span>
                </p>
                
                <% Html.RenderPartial("_ShowSubdisciplina", new ShowFieldsForm { SubdisciplinaId = Model.Form.SubdisciplinaId, SubdisciplinaNombre = Model.Form.SubdisciplinaNombre, ModelId = Model.Form.Id, IsShowForm = false }); %>
                
                <h4>Coautores de la publicaci&oacute;n<span class="cvu"></span></h4>
				<% Html.RenderPartial("_EditCoautorInterno", new CoautorForm { CoautoresInternos = Model.Form.CoautorInternoArticulos, ModelId = Model.Form.Id }); %>
	            <% Html.RenderPartial("_EditCoautorExterno", new CoautorForm { CoautoresExternos = Model.Form.CoautorExternoArticulos, ModelId = Model.Form.Id }); %>
	            <p>
	                <label>Total de autores</label>
	                <span id="totalcoautores" class="valor"><%=Html.Encode(Model.Form.TotalAutores) %></span>
	                <span class="cvu"></span>
	            </p>
	            
	            <% Html.RenderPartial("_DatosArticulo", Model.Form); %>
            
	            <h4 class="EstatusPublicado">Referencia bibliogr&aacute;fica</h4>
	            <% Html.RenderPartial("_ReferenciaBibliografica", Model.Form); %>
				
				<h4>Documentos de la publicaci&oacute;n</h4>
				<% Html.RenderPartial("_EditArchivo", new ArchivoForm { Archivos = Model.Form.ArchivoArticulos, ModelId = Model.Form.Id }); %>
            
	            <p class="submit">
	                <%=Html.SubmitButton("Guardar", "Guardar cambios") %> &oacute; <%=Html.ActionLink<ArticuloController>(x => x.Index(), "Regresar") %>
	            </p>
	        <% } %>
	    </div><!--end forma-->
    
	</div><!--end textos-->

<script type="text/javascript">
    $(document).ready(function() {
        setupDocument();

        articuloSetup();
    });
</script>

</asp:Content>
