﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true"
    Inherits="System.Web.Mvc.ViewPage<GenericViewData<ExperienciaProfesionalForm>>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Productos"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Extensions" %>
<%@ Import Namespace="DI.Colef.Sia.Web.Controllers" %>

<asp:Content ID="titleContent" ContentPlaceHolderID="TituloPlaceHolder" runat="server">
    <h2>
        <%=Html.Encode(Model.Title) %>
    </h2>
</asp:Content>

<asp:Content ID="introductionContent" ContentPlaceHolderID="IntroduccionPlaceHolder" runat="server">
    <div id="introduccion">
        <p>
            Aqu&iacute; se muestra la informaci&oacute;n detallada de la experiencia profesional como est&aacute; en el sistema.
		</p>
    </div><!--end introduccion-->
</asp:Content>

<asp:Content ID="sidebarContent" ContentPlaceHolderID="SidebarContentPlaceHolder" runat="server">
    <div id="barra">
        <div id="asistente">
            <h3>Asistente de secci&oacute;n</h3>
            <% Html.RenderPartial("_ShowSidebar"); %>
        </div><!--end asistente-->

    </div><!--end barra-->
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div id="textos">

        <div id="forma">
            <div id="campos">
                <p>
                    <label>Nombramiento</label>
                    <span class="valor"><%= Html.Encode(Model.Form.Nombramiento)%>&nbsp;</span>
                </p>
                <p>
                    <label>Entidad</label>
                    <span class="valor"><%= Html.Encode(Model.Form.Entidad)%>&nbsp;</span>
                </p>
                <p>
                    <label>Fecha inicial</label>
                    <span class="valor"><%= Html.Encode(Model.Form.FechaInicial)%>&nbsp;</span><span>Formato (dd/mm/yyyy)</span>
                </p>
                <p>
                    <label>Fecha final</label>
                    <span class="valor"><%= Html.Encode(Model.Form.FechaFinal)%>&nbsp;</span><span>Formato (dd/mm/yyyy)</span>
                </p>
                <p>
                    <label>Pa&iacute;s</label>
                    <span class="valor"><%= Html.Encode(Model.Form.PaisNombre)%>&nbsp;</span>
                </p>
                
                <% if (Model.Form.Nivel2Id != 0) { %>
                	<h4>Estructura funcional</h4>
                	<% Html.RenderPartial("_Show2doNivel", Model.Form.ShowFields); %>
                <% } %>
                        
                
                <% if (Model.Form.SubdisciplinaId != 0) { %>
                	<h4>&Aacute;rea de conocimiento</h4>
                	<% Html.RenderPartial("_ShowSubdisciplina", Model.Form.ShowFields); %>
                <% } %>
                
                
                <% if (Model.Form.ClaseId != 0) { %>
                	<h4>Actividad econ&oacute;mica</h4>
                	<% Html.RenderPartial("_ShowClase", Model.Form.ShowFields); %>
                <% } %>
                
                <p>
                    <label>L&iacute;nea de investigaci&oacute;n 1</label>
                    <span class="valor"><%= Html.Encode(Model.Form.LineaInvestigacion1)%>&nbsp;</span>
                </p>
                <p>
                    <label>L&iacute;nea de investigaci&oacute;n 2</label>
                    <span class="valor"><%= Html.Encode(Model.Form.LineaInvestigacion2)%>&nbsp;</span>
                </p>
                <p>
                    <label>L&iacute;nea de investigaci&oacute;n 3</label>
                    <span class="valor"><%= Html.Encode(Model.Form.LineaInvestigacion3)%>&nbsp;</span>
                </p>
                <p>
                    <label>Principales logros</label>
                    <span class="valor"><%= Html.Encode(Model.Form.PrincipalesLogros)%>&nbsp;</span>
                </p>
                
                <p class="submit">
                    <%=Html.ActionLink<ExperienciaProfesionalController>(x => x.Index(), "Regresar") %>
                </p>
            </div><!--end campos-->
        </div><!--end lista-->

    </div><!--end textos-->
    
<script type="text/javascript">
    $(document).ready(function() {
        setupDocument();
    });
</script>
</asp:Content>