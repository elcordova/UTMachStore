﻿<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="negociacion.aspx.cs" Inherits="Proyecto.interfaces.negociacion" %>
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
    <br /><br /><br /><br /><br /><br />

        &nbsp;<br /><br />
    
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="labelTitulo" runat="server" Text="Label"></asp:Label>
    </h1>
        <div class="hr dotted clearfix">&nbsp;</div>
    <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Forma de pago</h4>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; datos de Vendedor</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="95px"  TextMode="MultiLine" Width="363px"></asp:TextBox>
    <br />
&nbsp;<p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cantidad a comprar:
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="45px" ToolTip="por defecto 1 unidad"></asp:TextBox>
&nbsp;&nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Error de stock" Font-Bold="True" Font-Size="Larger" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" ToolTip="No se puede vender todo los productos" SetFocusOnError="True">*</asp:CustomValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Campo obligatorio" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; productos en stock:<asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="45px" ReadOnly="True"></asp:TextBox>
        &nbsp;</p>
    <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Porfavor seleccione una de las formas de pago establecidas por el vendedor<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownListPago" runat="server" Height="35px" Width="200px">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownListPago" ErrorMessage="Escoga una de las opciones" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Escoga una de las opciones">*</asp:RequiredFieldValidator>
        </p>
        <div class="hr dotted clearfix">&nbsp;</div>
    <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Forma de envio</h4>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Por favor seleccione una de las formas de Envio establecidas por el vendedor<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownListEnvio" runat="server" Height="35px" Width="200px">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownListEnvio" ErrorMessage="Escoga una de las opciones" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Escoga una de las opciones">*</asp:RequiredFieldValidator>
        </p>
        <div class="hr dotted clearfix">&nbsp;</div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Realizar la compra" OnClick="Button1_Click" />
</asp:Content>
