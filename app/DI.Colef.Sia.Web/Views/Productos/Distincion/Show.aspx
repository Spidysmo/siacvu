﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true"
    Inherits="System.Web.Mvc.ViewPage<GenericViewData<DistincionForm>>" %>
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
            Aqu&iacute; se muestra la informaci&oacute;n detallada de la distinci&oacute;n como est&aacute; en el sistema.
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
                <h4>Datos del investigador</h4>
	            <p>
                    <label>Departamento</label>
                    <strong><%= Html.Encode(Model.Form.DepartamentoNombre)%>&nbsp;</strong>
                </p>
                <p>
                    <label>Sede</label>
                    <strong><%= Html.Encode(Model.Form.SedeNombre)%>&nbsp;</strong>
                </p>
                
                <p>
                    <label>T&iacute;tulo de la distinci&oacute;n</label>
                    <strong><%= Html.Encode(Model.Form.Titulo)%>&nbsp;</strong>
                </p>
                <p>
                    <label>Tipo de distinci&oacute;n</label>
                    <strong><%= Html.Encode(Model.Form.TipoDistincionNombre)%>&nbsp;</strong>
                </p>
                <p>
                    <label>Descripci&oacute;n de la distinci&oacute;n</label>
                    <strong><%= Html.Encode(Model.Form.Descripcion)%>&nbsp;</strong>
                </p>
                <p>
                    <label>Fecha de otorgamiento</label>
                    <strong><%= Html.Encode(Model.Form.FechaOtorgamiento)%>&nbsp;</strong><span>Formato (dd/mm/yyyy)</span>
                </p>
                <p>
                    <label>Instituci&oacute;n otorgante</label>
                    <strong><%= Html.Encode(Model.Form.InstitucionNombre)%>&nbsp;</strong>
                </p>
                <p>
                    <label>&Aacute;mbito</label>
                    <strong><%= Html.Encode(Model.Form.AmbitoNombre)%>&nbsp;</strong>
                </p>
                <p>
                    <label>Pa&iacute;s</label>
                    <strong><%= Html.Encode(Model.Form.PaisNombre)%>&nbsp;</strong>
                </p>
                <p>
                    <label>Estado del pa&iacute;s</label>
                    <strong><%= Html.Encode(Model.Form.EstadoPaisNombre)%>&nbsp;</strong>
                </p>
                <p>
                    <label>Municipio</label>
                    <strong><%= Html.Encode(Model.Form.Municipio)%>&nbsp;</strong>
                </p>
                
                <p class="submit">
                    <%=Html.ActionLink<DistincionController>(x => x.Index(), "Regresar") %>
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
