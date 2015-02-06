<%@ Page Title="" Language="C#" MasterPageFile="/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="userCompraVenta.aspx.cs" Inherits="Proyecto.interfaces.userCompraVenta" %>
<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
    &nbsp;<asp:Panel ID="Panel1" runat="server">
        <div style="margin-left:auto; margin-right:auto;">
        <asp:Label ID="Label1" runat="server" Text="VENTAS REALIZADAS" BackColor="White" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large" ForeColor="#B96E32"></asp:Label>
    
        <br />
            &nbsp;
        <asp:GridView ID="gridventas" runat="server" Width="945px" Height="250px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
            <RowStyle HorizontalAlign="Center" />
        </asp:GridView>
        <br />
        <asp:Label ID="Label2" runat="server" Text="COMPRAS REALIZADAS" BackColor="White" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large" ForeColor="#B96E32"></asp:Label>
        <br />
        <br />
    </div>
    <div style="margin-left:auto; margin-right:auto;">
        <asp:GridView ID="gridcompras" runat="server" Width="944px" Height="250px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
            <RowStyle HorizontalAlign="Center" />
        </asp:GridView>
    
        <br />        
        </div>
    </asp:Panel>

 </asp:Content>







