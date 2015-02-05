<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="verificarCuenta.aspx.cs" Inherits="Proyecto.interfaces.verificarCuenta" EnableEventValidation="false" %>
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
        <div class="container" style="padding: 40px 60px 20px 60px">
            <div class="row">
                <div class="col-md-6 col-md-6 col-md-6" style="padding: 1px 1px 1px 150px">
                    <img class="imgn" src="images/log.png" />
                </div>
                <div class="col-md-6 col-md-6 col-md-6" style="padding: 1px 150px 1px 1px">

                    <form role="form" id="formn">
                        <div class="form-group ">
                            <label class="control-label">
                                Nickname</label>
                            <div class="row">
                                <div class="col-xs-7">
                                    <asp:TextBox ID="TextBoxNombre" CssClass="form-control col-xs-7" runat="server"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="Ingrese codigo" Font-Bold="True" Font-Size="Larger" ForeColor="Red" ToolTip="Ingrese nombre de usuario" SetFocusOnError="True">Campo Obligatorio</asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="form-group ">
                            <label class="control-label">
                                Contraseña</label>
                            <div class="row">
                                <div class="col-xs-7">
                                    <asp:TextBox ID="TextBoxPasswd" CssClass="col-xs-7 form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPasswd" ErrorMessage="Ingrese codigo" Font-Bold="True" Font-Size="Larger" ForeColor="Red" ToolTip="Ingrese contraseña" SetFocusOnError="True">Campo Obligatorio</asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="form-group ">
                            <label class="control-label">
                                Codigo de Verificación</label>
                            <div class="row">
                                <div class="col-xs-7">
                                    <asp:TextBox ID="TextBoxCod" CssClass="col-xs-7 form-control" runat="server"></asp:TextBox>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxCod" ErrorMessage="Ingrese codigo" Font-Bold="True" Font-Size="Larger" ForeColor="Red" SetFocusOnError="True">Ingrese codigo de verificacion</asp:RequiredFieldValidator>


                            </div>
                        </div>


                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-7">
                                    <asp:Button ID="ButtonValidar" CssClass="col-xs-7 btn btn-primary btn-block" runat="server" OnClick="Button2_Click" Text="Validar" />
                                </div>
                            </div>
                        </div>

                    </form>

                </div>

            </div>

            <p class="text-warning" align="justify"> <strong>Por cuestiones de seguridad hemos enviado un mensaje de confirmacion a tu correo electronico en el cual se encuentra el codigo de activacion, revisa tu bandeja de entrada para validar tu cuenta. Si el mensaje no aparece revisa tu carpeta de Spam o correo no deseado.</strong></p> 


        </div>
    </div>

    



    
                     
    <br />
    <br />
    <br />
</asp:Content>
