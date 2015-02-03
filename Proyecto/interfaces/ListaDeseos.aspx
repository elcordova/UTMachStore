<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="ListaDeseos.aspx.cs" Inherits="Proyecto.interfaces.ListaDeseos" %>

<asp:Content ID="Content12" ContentPlaceHolderID="listadeseos" runat="server">
        <br />
    <br />
    <br />
    <br /> 

    <h1 class="centrado_titulo">Lista de deseos</h1>
    <div class="pr grid_12 clearfix">&nbsp;</div>
    <div class="boton2_centrar">
         <asp:Button CssClass="boton_color_s" ID="Button1" runat="server" Text="Quitar de la lista" OnClick="Button1_Click" />
         <asp:Button CssClass="boton_color_s" ID="Button2" runat="server" Text="Ir a la publicación" OnClick="Button2_Click" />
    </div>
    <br />
        <asp:GridView  ID="tabladeseo" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="116px" Width="649px">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <br />

    
   

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
