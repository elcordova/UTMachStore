﻿<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="usuario.aspx.cs" Inherits="Proyecto.interfaces.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="usuario" runat="server">
    <br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButtonVerMisDatos" runat="server" OnClick="LinkButtonVerMisDatos_Click" Font-Size="Larger">Ver mis Datos</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <asp:Panel ID="PanelDatos" runat="server" Visible="False">
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nombre Completo</h3>
        <div class="hr dotted clearfix">
            &nbsp;</div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:TextBox ID="TextBoxNombre" runat="server" Width="381px"></asp:TextBox>
        <asp:TextBox ID="TextBoxNombre1" runat="server" Visible="False" Width="381px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nick name</h3>
        <div class="hr dotted clearfix">
            &nbsp;</div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxNick" runat="server" Width="200px" Enabled="False"></asp:TextBox>
        <asp:TextBox ID="TextBoxNick1" runat="server" Enabled="False" Visible="False" Width="200px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cédula</h3>
        <div class="hr dotted clearfix">
            &nbsp;</div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:TextBox ID="TextBoxCedula" runat="server" Width="149px" MaxLength="10" TextMode="Number" Enabled="False"></asp:TextBox>
        <asp:TextBox ID="TextBoxCedula1" runat="server" Enabled="False" MaxLength="10" TextMode="Number" Visible="False" Width="149px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dirección</h3>
        <div class="hr dotted clearfix">
            &nbsp;</div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxDireccion" runat="server" Width="395px"></asp:TextBox>
        <asp:TextBox ID="TextBoxDireccion1" runat="server" Visible="False" Width="395px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email</h3>
        <div class="hr dotted clearfix">
            &nbsp;</div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email" Width="309px"></asp:TextBox>
        <asp:TextBox ID="TextBoxEmail1" runat="server" TextMode="Email" Visible="False" Width="309px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonActualizar" runat="server" OnClick="ButtonActualizar_Click" Text="Actualizar mis datos" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    </asp:Panel>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButtonCambiarContra" runat="server" OnClick="LinkButtonCambiarContra_Click" Font-Size="Larger">Cambiar Contraseña</asp:LinkButton>
    <br /><br /><br />
    &nbsp;<asp:Panel ID="PanelContra" runat="server" Visible="False">
        <h3>Contraseña</h3>
        <div class="hr dotted clearfix">
        </div>
        <asp:TextBox ID="TextBoxTemporal" runat="server" Visible="False"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table>
            <tr>
                <td width="200px">Contraseña Actual</td>
                <td width="200px">Nueva Contraseña</td>
                <td width="200px">Confirmar Contraseña</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBoxContrasena" runat="server" MaxLength="8" TextMode="Password" Width="145px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxNuevaContra" runat="server" MaxLength="8" TextMode="Password" Width="145px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxConfirContra" runat="server" MaxLength="8" TextMode="Password" Width="145px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonCambiarContra" runat="server" Text="Cambiar Contraseña" OnClick="ButtonCambiarContra_Click" />
        <br />
    </asp:Panel>
    <br /><br />
    
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
        <br /><br />
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
    <table align="center">

            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

        </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br /><br />
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br /><br />
</asp:Content>
