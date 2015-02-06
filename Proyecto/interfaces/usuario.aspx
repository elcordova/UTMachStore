<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="usuario.aspx.cs" Inherits="Proyecto.interfaces.WebForm3" enableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="usuario" runat="server">
    
    
    <link href="../Content/bootstrap/bootstrap.css" rel="stylesheet" />
   
    
    <div class=" container ">
    <asp:LinkButton ID="LinkButtonVerMisDatos" CssClass="col-lg-3 col-md-3 col-sm-3" runat="server" OnClick="LinkButtonVerMisDatos_Click" Font-Size="Larger">Ver mis Datos</asp:LinkButton>
    <asp:LinkButton ID="LinkButtonEliminar" CssClass="col-lg-3 col-md-3 col-sm-3" runat="server" OnClick="LinkButtonEliminar_Click" Font-Size="Larger">Darse de baja</asp:LinkButton>
    <asp:LinkButton ID="LinkButtonVenCom" CssClass="col-lg-3 col-md-3 col-sm-3" runat="server"  Font-Size="Larger" OnClick="LinkButtonVenCom_Click">Mis Compras y Ventas</asp:LinkButton>
   <asp:LinkButton ID="LinkButtonCambiarContra" CssClass="col-lg-3 col-md-3 col-sm-3" runat="server" OnClick="LinkButtonCambiarContra_Click" Font-Size="Larger">Cambiar Contraseña</asp:LinkButton>    
   </div>

    <div style="padding: 100px 1px 40px 300px">
        <asp:Panel ID="PanelDatos" runat="server" Visible="false">
            <form role="form" >
                <div class="form-group">
                    <label class="control-label">Nombre Completo</label>
                    <div class="row">
                        <div class="col-xs-8">
                            <asp:TextBox ID="TextBoxNombre" runat="server" CssClass="form-control col-xs-8"></asp:TextBox>
                        </div>
                        <asp:TextBox ID="TextBoxNombre1" runat="server" CssClass="hidden" Width="381px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="Ingrese solo letras" ForeColor="Red" ToolTip="Ingrese solo letras" ValidationExpression="^[a-zA-Z]*$" Font-Bold="True" Font-Size="Larger" SetFocusOnError="True">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="Escriba nombres" ForeColor="Red" Font-Bold="True" Font-Size="Larger" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">

                    <label class="control-label">Nick name</label>
                    <div class="row">
                        <div class="col-xs-8">
                            <asp:TextBox ID="TextBoxNick" runat="server" CssClass="form-control col-xs-8" Enabled="False"></asp:TextBox>
                        </div>
                        <asp:TextBox ID="TextBoxNick1" runat="server" Enabled="False" CssClass="hidden" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxNick" ErrorMessage="Ingrese un nick" ForeColor="Red" Font-Bold="True" Font-Size="Larger" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </div>
                </div>



                <div class="form-group">
                    <label>Cédula</label>
                    <div class="row">
                        <div class="col-xs-8">
                            <asp:TextBox ID="TextBoxCedula" runat="server" CssClass="form-control col-xs-8" MaxLength="10" TextMode="Number" Enabled="False"></asp:TextBox>
                        </div>
                        <asp:TextBox ID="TextBoxCedula1" runat="server" Enabled="False" MaxLength="10" TextMode="Number" CssClass="hidden" Width="149px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxCedula" ErrorMessage="Cedula Invalida" ForeColor="Red" ToolTip="Ingrese solo numeros" ValidationExpression="([0-9]|-)*" Font-Bold="True" Font-Size="Larger" SetFocusOnError="True">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxCedula" ErrorMessage="Ingrese cedula" ForeColor="Red" Font-Bold="True" Font-Size="Larger" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </div>
                </div>



                <div class="form-group">
                    <label class="control-label">Dirección</label>
                    <div class="row">
                        <div class="col-xs-8">
                            <asp:TextBox ID="TextBoxDireccion" CssClass="form-control col-xs-8" runat="server"></asp:TextBox>
                        </div>
                        <asp:TextBox ID="TextBoxDireccion1" runat="server" CssClass="hidden" Width="395px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxDireccion" ErrorMessage="Ingrese Direccion" ForeColor="Red" Font-Bold="True" Font-Size="Larger" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </div>
                </div>



                <div class="form-group">
                    <label class="control-label">Email</label>
                    <div class="row">
                        <div class="col-xs-8">
                            <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control col-xs-8" TextMode="Email"></asp:TextBox>
                        </div>
                        <asp:TextBox ID="TextBoxEmail1" runat="server" TextMode="Email" CssClass="hidden" Width="309px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Correo Invalido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" Font-Size="Larger" SetFocusOnError="True">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Ingrese correo" ForeColor="Red" Font-Bold="True" Font-Size="Larger" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-8">
                            <div>
                                <asp:Button ID="ButtonActualizar" CssClass="form-control btn btn-primary col-xs-8" runat="server" OnClick="ButtonActualizar_Click" Text="Actualizar mis datos" />
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </asp:Panel>
    </div>
    
    
    <div style="padding: 10px 1px 40px 300px">
        <asp:Panel ID="PanelContra" runat="server" Visible="false">
            <form>
                <asp:TextBox ID="TextBoxTemporal" runat="server" CssClass="hidden"></asp:TextBox>

                <div class="form-group">
                    <label>Contraseña Actual</label>
                    <div class="row">
                        <div class="col-xs-8">
                            <asp:TextBox ID="TextBoxContrasena" runat="server" MaxLength="8" TextMode="Password" CssClass="form-control col-xs-8"></asp:TextBox>
                        </div>
                    </div>
                </div>



                <div class="form-group">
                    <label class="control-label">Nueva Contraseña</label>
                    <div class="row">
                        <div class="col-xs-8">
                            <asp:TextBox ID="TextBoxNuevaContra" runat="server" MaxLength="8" TextMode="Password" CssClass="form-control col-xs-8"></asp:TextBox>
                        </div>
                    </div>
                </div>




                <div class="form-group">
                    <label class="control-label">Confirmar Contraseña</label>
                    <div class="row">
                        <div class="col-xs-8">
                            <asp:TextBox ID="TextBoxConfirContra" runat="server" MaxLength="8" TextMode="Password" CssClass="form-control col-xs-8"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-4">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Cambiar Contraseña" OnClick="ButtonCambiarContra_Click" />
                        </div>
                        <div class="col-xs-4">
                            <asp:Button ID="ButtonCambiarContra" CssClass="btn btn-primary" runat="server" Text="Cambiar Contraseña" OnClick="ButtonCambiarContra_Click" />
                        </div>
                    </div>
                </div>
            </form>
        </asp:Panel>
    </div>
</asp:Content>
