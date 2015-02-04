<%@ Page Title="" Language="C#" MasterPageFile="/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="publicar.aspx.cs" Inherits="Proyecto.interfaces.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="publicar" runat="server">
    
    <h1 class="cent_tit_publ caption clearfix">Anunciate</h1>

    <img class="img_publ" src="images/publicr.png"/>

    <div class="form_publ">
        <label class="control-label" for="h4">Seleccione una Categoria</label><br />
        <asp:DropDownList ID="cmbCategoria" runat="server">
            <asp:ListItem>Teléfonos - Tablets</asp:ListItem>
            <asp:ListItem>Computación - Electrónica</asp:ListItem>
            <asp:ListItem>Casa - Muebles</asp:ListItem>
            <asp:ListItem>Moda - Belleza</asp:ListItem>
            <asp:ListItem>Vehículos</asp:ListItem>
            <asp:ListItem>Animales</asp:ListItem>
            <asp:ListItem>Arte - Deportes</asp:ListItem>
            <asp:ListItem>Propiedades</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <label class="control-label" for="h4">Añade un Titulo</label><br />
        <asp:TextBox ID="txtTituloPublicacion" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTituloPublicacion" ErrorMessage="Ingrese titulo" ForeColor="Red" ToolTip="Ingrese titulo" Font-Bold="True" Font-Size="Larger">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <label class="control-label" for="h4">Describre tu producto</label><br />
        <asp:TextBox ID="txtDatosPublicacion" runat="server" TextMode="MultiLine" Height="213px" Width="431px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDatosPublicacion" ErrorMessage="De una pequeña descripcion de su producto" ForeColor="Red" ToolTip="De una pequeña descripcion de su producto" Font-Bold="True" Font-Size="Larger">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <label class="control-label" for="h4">Número de Contacto</label><br />
        <asp:TextBox ID="txtNumeroContacto" runat="server" MaxLength="10"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Ingrese numeros" ForeColor="Red" ToolTip="Ingrese numero" ValidationExpression="([0-9]|-)*" ControlToValidate="txtNumeroContacto" Font-Bold="True" Font-Size="Larger">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" ToolTip="Campo obligatorio" ControlToValidate="txtNumeroContacto" Font-Bold="True" Font-Size="Larger">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <label class="control-label" for="h4">Stock del producto</label><br />
        <asp:TextBox ID="txtStockProductos" runat="server" MaxLength="1000"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtStockProductos" ErrorMessage="Ingrese numeros" ForeColor="Red" ToolTip="Ingrese numero" ValidationExpression="([0-9]|-)*" Font-Bold="True" Font-Size="Larger">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" ToolTip="Campo obligatorio" ControlToValidate="txtStockProductos" Font-Bold="True" Font-Size="Larger">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <label class="control-label" for="h4">Precio</label><br />
        <asp:TextBox ID="txtPrecioProducto" runat="server" MaxLength="99999"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPrecioProducto" ErrorMessage="Ingrese precio" ForeColor="Red" ToolTip="Ingrese precio valido" ValidationExpression="([0-9,]|-)*" Font-Bold="True" Font-Size="Larger">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" ToolTip="Campo obligatorio" ControlToValidate="txtPrecioProducto" Font-Bold="True" Font-Size="Larger">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <label class="control-label" for="h4">Formas de pago</label><br />
        <asp:CheckBox ID="c1" runat="server" Text="Efectivo" />
        <asp:CheckBox ID="c2" runat="server" Text="Deposito Bancario" />
        <asp:CheckBox ID="c3" runat="server" Text="Tarjeta de Credito" />
        <br />
        <br />
        <label class="control-label" for="h4">Foto</label><br />
        <asp:Button ID="btnSubir" runat="server" OnClick="Button1_Click" Text="Subir" />
        <br />

        <br />
        <asp:Panel ID="PnlMostrarImagen" runat="server" BorderColor="Blue" BorderStyle="Dashed" HorizontalAlign="Center"></asp:Panel>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Publicar" OnClick="Button2_Click" />
        
    </div>
    <div class="hr grid_12">&nbsp;</div>
	<div class="clear"></div>
</asp:Content>
