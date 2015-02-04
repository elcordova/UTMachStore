<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="EdicionPublicacion.aspx.cs" Inherits="Proyecto.interfaces.EdicionPublicacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content12" ContentPlaceHolderID="editarPublicaciones" runat="server">
    
    <h1 class="cent_tit_publ caption clearfix">Editar Publicaciones</h1>

    <img class="img_edpubl" src="images/editpub.png"/>

    <div class="form_edpubl">
        <label class="control-label" for="h2">Seleccione una Categoria</label><br />
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
        <label class="control-label" for="h2">Añade un Titulo</label><br />
        <asp:TextBox ID="txtTituloPublicacion" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTituloPublicacion" ErrorMessage="Ingrese titulo" ForeColor="Red" ToolTip="Ingrese titulo">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <label class="control-label" for="h2">Describe tu producto</label><br />
        <asp:TextBox ID="txtDatosPublicacion" runat="server" TextMode="MultiLine" Height="213px" Width="431px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDatosPublicacion" ErrorMessage="De una pequeña descripcion de su producto" ForeColor="Red" ToolTip="De una pequeña descripcion de su producto">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <label class="control-label" for="h2">Número de Contacto</label><br />
        <asp:TextBox ID="txtNumeroContacto" runat="server" MaxLength="10"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Ingrese numeros" ForeColor="Red" ToolTip="Ingrese numero" ValidationExpression="([0-9]|-)*" ControlToValidate="txtNumeroContacto">*</asp:RegularExpressionValidator>
        <br />
        <br />
        <label class="control-label" for="h2">Stock del producto</label><br />
        <asp:TextBox ID="txtStockProductos" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtStockProductos" ErrorMessage="Ingrese numeros" ForeColor="Red" ToolTip="Ingrese numero" ValidationExpression="([0-9]|-)*">*</asp:RegularExpressionValidator>
        <br />
        <br />
        <label class="control-label" for="h2">Precio</label><br />
        <asp:TextBox ID="txtPrecioProducto" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPrecioProducto" ErrorMessage="Ingrese precio" ForeColor="Red" ToolTip="Ingrese precio" ValidationExpression="([0-9,]|-)*">*</asp:RegularExpressionValidator>
        <br />
        <br />
        <label class="control-label" for="h2">Foto</label><br />
        <asp:FileUpload ID="FileUploadSubir" runat="server" />
        <asp:Button ID="btnSubir" runat="server" Text="Subir" />
        <br />
        <br />

        <br />
        <asp:Panel ID="PnlMostrarImagen" runat="server" BorderColor="Blue" BorderStyle="Dashed" HorizontalAlign="Center"></asp:Panel>
        <br />

        <asp:Button ID="Button2" runat="server" Text="Guardar" OnClick="Button2_Click" />
    </div>
    <div class="hr grid_12">&nbsp;</div>
	<div class="clear"></div>
</asp:Content>