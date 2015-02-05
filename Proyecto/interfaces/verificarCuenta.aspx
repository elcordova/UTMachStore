<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="verificarCuenta.aspx.cs" Inherits="Proyecto.interfaces.verificarCuenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 259px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="loguin" runat="server">
    <link href="../Content/bootstrap/bootstrap.css" rel="stylesheet" />
     

    
                <h1>
                
                UTMach Store | Validación de Cuenta</h1>

                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-md-6 col-md-6">
    <img class="imgn" src="images/log.png"/>
                    </div>
                        <div class="col-md-6 col-md-6 col-md-6">
                           
                            <form role="form" id="formn">
            <div class="form-group clearfix required ">
                    <label class="control-label" for="h2">
                   Nickname</label>&nbsp;
                    <div class="row">
                        <div class="col-xs-7">
                        <asp:TextBox ID="TextBoxNombre" CssClass="form-control col-xs-7" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="col-xs-1" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="Ingrese codigo" Font-Bold="True" Font-Size="Larger" ForeColor="Red" ToolTip="Ingrese nombre de usuario" SetFocusOnError="True">Campo Obligatorio</asp:RequiredFieldValidator>
                        </div>
                    </div>
            </div>
            <div class="control-group clearfix required ">
                <div class="controls input">
                    &nbsp;<br />
                </div>
            </div>
            <div class="control-group clearfix required ">
                <div class="controls input">
                    &nbsp;<br />
                </div>
            </div>
            <div class="control-group clearfix required ">
                <label class="control-label" for="h6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp; 
                Contraseña</label>&nbsp;
                    <div class="controls input">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxPasswd" runat="server" TextMode="Password"></asp:TextBox>
                        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPasswd" ErrorMessage="Ingrese codigo" Font-Bold="True" Font-Size="Larger" ForeColor="Red" ToolTip="Ingrese contraseña" SetFocusOnError="True">Campo Obligatorio</asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                    </div>
            </div>
            <div class="control-group clearfix required ">
                <div class="controls input">
                    <br />
                    <br />
            <div class="control-group clearfix required ">
                <label class="control-label" for="h6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp; 
                Codigo de Verificación</label>&nbsp;
                    <div class="controls input">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxCod" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxCod" ErrorMessage="Ingrese codigo" Font-Bold="True" Font-Size="Larger" ForeColor="Red" SetFocusOnError="True">Ingrese codigo de verificacion</asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                    </div>
            </div>
                    <br />
                </div>
            </div>
            <div class="form-actions">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonValidar" runat="server" OnClick="Button2_Click" Text="Validar" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
        </form>

                        </div>
                   </div>

                    </div>
    <table style="width: 80%;">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td><b><p align="justify"> Por cuestiones de seguridad hemos enviado un mensaje de confirmacion a tu correo electronico en el cual se encuentra el codigo de activacion, revisa tu bandeja de entrada para validar tu cuenta. Si el mensaje no aparece revisa tu carpeta de Spam o correo no deseado.</p> </b></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
                     
    <br />
    <br />
    <br />
</asp:Content>
