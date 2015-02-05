<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="negociacion.aspx.cs" Inherits="Proyecto.interfaces.negociacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #TextArea1 {
            height: 77px;
            width: 429px;
        }
        #TextAreaDatos {
            width: 364px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="negociacion" runat="server">
    <link href="../Content/bootstrap/bootstrap.css" rel="stylesheet" />
    <form role="form">
        <div class="container ">
            <h1>
                <asp:Label ID="labelTitulo" runat="server" Text="Label"></asp:Label>
            </h1>
            <div class="hr dotted clearfix">&nbsp;</div>
            <h4>Datos de Negociacion</h4>
            <div class="form-group">
                <label for="TextBox3">
                    Datos de Vendedor</label>
                <asp:TextBox ID="TextBox3" CssClass="form-control " Rows="3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="form-group">

                <label class="col-lg-4 col-md-4 col-sm-4">
                    cantidad a comprar:</label>
                <asp:TextBox ID="TextBox1" CssClass="control-label col-lg-2 col-md-2 col-sm-2" runat="server" ToolTip="por defecto 1 unidad"></asp:TextBox>
                <asp:CustomValidator CssClass="col-lg-1 col-md-1 col-sm-1" ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Error de stock" Font-Bold="True" Font-Size="Larger" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" ToolTip="No se puede vender todo los productos" SetFocusOnError="True">*</asp:CustomValidator>
                <asp:RequiredFieldValidator CssClass="col-lg-1 col-md-1 col-sm-1" ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Campo obligatorio" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
                <label class=" control-label col-lg-4 col-md-4 col-sm-4">productos en stock:</label><asp:TextBox ID="TextBox2" runat="server" CssClass="control-label col-lg-2 col-md-2 col-sm-2" ReadOnly="True"></asp:TextBox>

            </div>
            <div class="hr dotted clearfix">&nbsp;</div>
            <h4>Forma de Pago</h4>
            <div class="form-group">
                <label>Porfavor seleccione una de las formas de pago establecidas por el vendedor</label>
                <div class="row">
                    <div class="col-xs-5">
                        <asp:DropDownList ID="DropDownListPago" CssClass="col-xs-5 form-control " runat="server">
                        </asp:DropDownList>
                    </div>
                    <div class="col-xs-1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="col-xs-1" runat="server" ControlToValidate="DropDownListPago" ErrorMessage="Escoga una de las opciones" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Escoga una de las opciones">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="hr dotted clearfix">&nbsp;</div>
            <h4>Forma de envio</h4>
            <div class="form-group">
                <label>Porfavor seleccione la Forma de envio de el producto</label>
                <div class="row">
                    <div class="col-xs-5">
                        <asp:DropDownList ID="DropDownListEnvio" CssClass="col-xs-5 form-control " runat="server">
                        </asp:DropDownList>
                    </div>
                    <div class="col-xs-1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="col-xs-1" runat="server" ControlToValidate="DropDownListEnvio" ErrorMessage="Escoga una de las opciones" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Escoga una de las opciones">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="hr dotted clearfix">&nbsp;</div>
            <div class="form-group">
            <asp:Button ID="Button1" CssClass="btn btn-block" runat="server" Text="Realizar la compra" OnClick="Button1_Click" />
        </div>
            </div>
    </form>
</asp:Content>
