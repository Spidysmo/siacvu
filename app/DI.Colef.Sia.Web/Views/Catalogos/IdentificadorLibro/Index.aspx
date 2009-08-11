<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true" 
    Inherits="System.Web.Mvc.ViewPage<GenericViewData<IdentificadorLibroForm>>" %>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.ViewData"%>
<%@ Import Namespace="DecisionesInteligentes.Colef.Sia.Web.Controllers.Models"%>
<%@ Import Namespace="DI.Colef.Sia.Web.Controllers" %>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h2><%=Html.Encode(Model.Title) %></h2>
    <div id="message" class="<% if(TempData["message"] != null) { %>message<% } else if(TempData["error"] != null) { %>errormessage<% } %>"><%=Html.Encode(TempData["message"])%></div>
    <br />
    <div id="datalist">   
        <div>
            <div class="floatr btn_container">
                <% Html.RenderPartial("_Search"); %>
	        </div>
            <div class="btn_container">
		        <span class="btn btn_medium_brown">
			        <%=Html.ActionLink<IdentificadorLibroController>(x => x.New(), "+ Crear Identificador Libro") %>
		        </span>
	        </div>
	    </div>
        <br />
        <div class="table_title">Identificadores de Libros</div>
        <table>
             <% if(Model.List == null || Model.List.Length == 0) { %>
                <tr>
                    <td>No hay Identificadores de Libros definidos</td>
                </tr>
            <% } else { %>
                <% foreach (var identificadorLibro in Model.List) { %>
                    <tr class="highlight">
				        <td class="button" width="46">
					        <div class="floatr btn_container">
						        <span class="btn btn_small_white">
							        <%=Html.ActionLink<IdentificadorLibroController>(x => x.Edit(identificadorLibro.Id), "Editar") %>
						        </span>
					        </div>
				        </td>                
                        <td class="single" width="70%">
                            <%=Html.Encode(identificadorLibro.Nombre) %>
                            <div class="meta_info">Modificado el <%=Html.Encode(identificadorLibro.Modificacion) %></div>
                        </td>
                        <td id="accion_<%=Html.Encode(identificadorLibro.Id) %>" class="button" width="140">
                            <div class="floatr btn_container">
                            <% if (identificadorLibro.Activo) { %>
                                <span class="btn btn_small_white">
                                    <%=Html.ActionLink("Desactivar", "Deactivate", new { id = identificadorLibro.Id }, new { @class = "remote put" })%>
                                </span>
                            <% } else { %>
                                <span class="btn btn_small_white">
                                    <%=Html.ActionLink("Activar", "Activate", new { id = identificadorLibro.Id }, new { @class = "remote put" })%>
                                </span>
                            <% } %>
                            </div>
                        </td>
                    </tr>
                <% } %>
            <% } %>
        </table>
    </div>    
<script type="text/javascript">
    $(document).ready(function() {
        setupDocument();
    });
</script>
</asp:Content>
