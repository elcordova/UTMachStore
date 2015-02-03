<%@ Page Title="" Language="C#" MasterPageFile="/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="userCompraVenta.aspx.cs" Inherits="Proyecto.interfaces.userCompraVenta" %>
<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Ventas"></asp:Label>
    
        <br />
        <asp:GridView ID="gridventas" runat="server" AutoGenerateColumns="False" DataSourceID="sqlventas" OnSelectedIndexChanged="gridventas_SelectedIndexChanged" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="Nombre del Usuario" HeaderText="Nombre del Usuario" SortExpression="Nombre del Usuario" />
                <asp:BoundField DataField="Nombre de la Publicacion" HeaderText="Nombre de la Publicacion" SortExpression="Nombre de la Publicacion" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="Comprador" HeaderText="Comprador" SortExpression="Comprador" />
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
        <asp:SqlDataSource ID="sqlventas" runat="server" ConnectionString="<%$ ConnectionStrings:UTMachStoreConnectionString2 %>" SelectCommand="listar_Ventas" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Compras"></asp:Label>
        <br />
        <asp:GridView ID="gridcompras" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo_Cat" DataSourceID="ejemplo" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="codigo_Cat" HeaderText="codigo_Cat" InsertVisible="False" ReadOnly="True" SortExpression="codigo_Cat" />
                <asp:BoundField DataField="nombre_Cat" HeaderText="nombre_Cat" SortExpression="nombre_Cat" />
                <asp:BoundField DataField="detalle_Cat" HeaderText="detalle_Cat" SortExpression="detalle_Cat" />
                <asp:BoundField DataField="FK_codigo_Cat" HeaderText="FK_codigo_Cat" SortExpression="FK_codigo_Cat" />
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
    
        <asp:SqlDataSource ID="ejemplo" runat="server" ConnectionString="<%$ ConnectionStrings:UTMachStoreConnectionString2 %>" SelectCommand="SELECT * FROM [Categorias]"></asp:SqlDataSource>
    
        <br />        

    </asp:Panel>

 </asp:Content>







