<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userCompraVenta.aspx.cs" Inherits="Proyecto.interfaces.userCompraVenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Ventas"></asp:Label>
    
        <br />
        <asp:GridView ID="gridventas" runat="server" AutoGenerateColumns="False" DataSourceID="sqlventas" OnSelectedIndexChanged="gridventas_SelectedIndexChanged" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="nic_Usu" HeaderText="nic_Usu" SortExpression="nic_Usu" />
                <asp:BoundField DataField="nombre_Pub" HeaderText="nombre_Pub" SortExpression="nombre_Pub" />
                <asp:BoundField DataField="precio_Pub" HeaderText="precio_Pub" SortExpression="precio_Pub" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sqlventas" runat="server" ConnectionString="<%$ ConnectionStrings:UTMachStoreConnectionString2 %>" SelectCommand="SELECT * FROM [listarventas]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Compras"></asp:Label>
        <br />
        <asp:GridView ID="gridcompras" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo_Cat" DataSourceID="ejemplo">
            <Columns>
                <asp:BoundField DataField="codigo_Cat" HeaderText="codigo_Cat" InsertVisible="False" ReadOnly="True" SortExpression="codigo_Cat" />
                <asp:BoundField DataField="nombre_Cat" HeaderText="nombre_Cat" SortExpression="nombre_Cat" />
                <asp:BoundField DataField="detalle_Cat" HeaderText="detalle_Cat" SortExpression="detalle_Cat" />
                <asp:BoundField DataField="FK_codigo_Cat" HeaderText="FK_codigo_Cat" SortExpression="FK_codigo_Cat" />
            </Columns>
        </asp:GridView>
    
        <asp:SqlDataSource ID="ejemplo" runat="server" ConnectionString="<%$ ConnectionStrings:UTMachStoreConnectionString2 %>" SelectCommand="SELECT * FROM [Categorias]"></asp:SqlDataSource>
    
        <br />
    
    </div>
    </form>
</body>
</html>
