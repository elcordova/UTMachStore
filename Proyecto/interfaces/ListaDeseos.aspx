<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="ListaDeseos.aspx.cs" Inherits="Proyecto.interfaces.ListaDeseos" %>

<asp:Content ID="Content12" ContentPlaceHolderID="listadeseos" runat="server">
        <br />
    <br />
    <br />
    <br />

    <h1 class="centrado_titulo">Lista de deseos</h1>
    <div class="pr grid_12 clearfix">&nbsp;</div>
    <div class="boton2_centrar">
         <asp:Button CssClass="boton_color_s" ID="Button1" runat="server" Text="Quitar de la lista" />
         <asp:Button CssClass="boton_color_s" ID="Button2" runat="server" Text="Ir a la publicación" />
    </div>
    <asp:Table CssClass="publicacion_deseos" ID="Table1" runat="server" Height="92px" Width="790px">

    </asp:Table>
    <br /><br />

    
   

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
