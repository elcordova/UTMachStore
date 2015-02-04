<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="Proyecto.interfaces.log" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="loguin" runat="server">

    <h1 class="cent_tit">BIENVENIDO A UTMACH STORE</h1>
            
    <img class="img_log" src="images/log.png" />

    <div class="form_log" id="formn">
        <label class="control-label" for="h2">Nickname</label><br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <label class="control-label" for="h6">Contraseña</label><br />
        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">¿Olvidaste tu contraseña?</asp:LinkButton><br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="71px" Visible="False">
            <br />
            Ingrese su Correo:
                    <asp:TextBox ID="TextBoxCorreo" runat="server" TextMode="Email"></asp:TextBox>
            <asp:Button ID="ButtonEnviar" runat="server" OnClick="ButtonEnviar_Click" Text="Enviar" />
            <br />
            <br />
            Si su correo es el correcto, se le enviarán sus datos
        </asp:Panel>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Iniciar sesion" OnClick="Button2_Click" />
        <asp:Button ID="Button1" runat="server" Text="Registrarse" OnClick="Button1_Click" />
    </div>
    <div class="hr grid_12">&nbsp;</div>
	<div class="clear"></div>
</asp:Content>
