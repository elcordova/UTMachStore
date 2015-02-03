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
    <asp:Image CssClass="img_deseos" ID="Image1" runat="server" Height="300px" Width="300px" />
    <asp:GridView CssClass="tabla" ID="tabladeseo" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="734px" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField HeaderText="nombre_Pub" DataField="nombre_Pub" SortExpression="nombre_Pub" />
                    <asp:BoundField HeaderText="fecha_Pub" DataField="fecha_Pub" SortExpression="fecha_Pub" />
                    <asp:BoundField HeaderText="precio_Pub" DataField="precio_Pub" SortExpression="precio_Pub" />
                    <asp:BoundField HeaderText="stock_Pub" DataField="stock_Pub" SortExpression="stock_Pub" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UTMachStoreConnectionString3 %>" SelectCommand="SELECT [nombre_Pub], [fecha_Pub], [precio_Pub], [stock_Pub] FROM [Publicaciones]"></asp:SqlDataSource>
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
