<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="VerificacionUsuario.aspx.cs" Inherits="Proyecto.interfaces.VerificacionUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="verificacion_usuario" runat="server">
    <br />
    <br />
    <br />
    <br />
    <h1 class="centrado_titulo2">Confirmacion de correo</h1>
    <div class="contenido_confirmacion">
        <div class="barra_ver"></div>
        <br />
        <p>
            Por cuestiones de seguridad hemos enviado un mensaje de confirmacion a tu correo electronico 
            , revisa tu bandeja de entrada para confirmar tu cuenta.<br/><br />
            Si el mensaje no aparece revisa tu carpeta de Spam o correo no deseado.<br/><br />
            Una vez leido el mensaje de confirmacion haz click sobre el enlace y tu cuenta sera activada.
        </p>
        <a class="link_confirmacion" href="index.aspx"><h5>Continuar</h5></a>
        <br />
        <br />
        <br />
        <br />
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>