<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Proyecto.interfaces.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="registro" runat="server">
    
    <br />
    <br />
    <link href="../Content/bootstrap/bootstrap.css" rel="stylesheet" />
   <legend class="centrado_legend">Registra una nueva Cuenta</legend>
    <div class="areglob">
    </div>
     <div class="container" >
   
    <div class="row container-fluid" >
        <div class="col-md-6 col-md-6 col-md-6" style="padding:150px 1px 1px 150px">
            <img class="imgn" src="images/SolicitudU.png" />
        </div>
        <div class="col-md-6 col-md-6 col-md-6" style="padding:1px 150px 1px 1px" id="formn">
            <div role="form">
                <div class="form-group"style="padding:-10px 1px -10px 1px">
                    <label class="control-label">Nombre</label>
                    <div class="row">
                        <div class="col-xs-7">
                            <asp:TextBox ID="TextBoxNombre" CssClass="col-xs-7 form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="col-xs-1" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Large" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </div>
                        
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Size="Small" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-z A-Z ]*">sin numeros</asp:RegularExpressionValidator>
                        
                        <br />
                    </div>
                </div>

                <div class="form-group"style="padding:-10px 1px -10px 1px">
                    <label  for="h4">Direccion</label>
                    <div class="row">
                        <div class="col-xs-7">
                    <asp:TextBox ID="TextBoxDireccion" CssClass="form-control col-xs-7" runat="server" MaxLength="50"></asp:TextBox>
                    </div> <div class="col-xs-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="col-xs-1" runat="server" ControlToValidate="TextBoxDireccion" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </div>    
                    </div>
                </div>
                <div class="form-group"style="padding:-10px 1px -10px 1px">
                    <label for="TextBoxEmail">Email</label>
                    <div class="row">
                        <div class="col-xs-7">
                            <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email" CssClass="form-control col-xs-7" MaxLength="50"></asp:TextBox>
                        </div>
                        <div class="col-xs-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="col-xs-1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Size="Small" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Error email invalido</asp:RegularExpressionValidator>
                    </div>

                </div>
                <div class="form-group clearfix required "style="padding:-10px 1px -10px 1px">
                    <label for="TextBoxNickname">Nickname</label>
                    <div class="row">
                        <div class="col-xs-7">
                   <asp:TextBox ID="TextBoxNickname" CssClass="col-xs-7 form-control" runat="server" AutoPostBack="True" MaxLength="15"></asp:TextBox>
                       </div>
                        <div class="col-xs-1">
                            <asp:RequiredFieldValidator CssClass="col-xs-1" ID ="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxNickname" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                       </div>
                        </div>
                    </div>
                <div class="form-group" style="padding:-10px 1px -10px 1px">
                <label class="control-label" for="h7">
                    Cedula</label>
                    <div class="row">
                        <div class ="col-xs-7">
                            <asp:TextBox ID="TextBoxCedula" CssClass="form-control col-xs-7" runat="server" MaxLength="10"></asp:TextBox>
                        </div>
                        <div class="col-xs-1">
                            <asp:RequiredFieldValidator CssClass="col-xs-1" ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxCedula" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </div>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxCedula" ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Size="Small" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True" ValidationExpression="([0-9]|-)*">Solo numeros</asp:RegularExpressionValidator>
                        &nbsp;<asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBoxCedula" ErrorMessage="ErrorCedula" OnServerValidate="CustomValidator2_ServerValidate" SetFocusOnError="True" Font-Bold="True" Font-Size="Small" ForeColor="Red">Cedula no valida</asp:CustomValidator>


                        <br />
                    </div>
                </div>
                <div class="form-group clearfix required  "style="padding:-10px 1px -10px 1px"">
                            <label class="control-label" for="h6">Contraseña</label>
                    <div class="row">
                        <div class="col-xs-7">
                        <asp:TextBox ID="TextBoxPasswd" runat="server" CssClass="form-control col-xs-7" TextMode="Password" MaxLength="8"></asp:TextBox>
                        </div>
                            </div>
                            </div>
                <div class="form-group clearfix required "style="padding:-10px 1px -10px 1px">
                    <div>
                    <label class="control-label" for="TextBoxConfPasswd">
                        Verificar Contraseña</label>
                        <div class="row">
                            <div class="col-xs-7">
                        <asp:TextBox ID="TextBoxConfPasswd" CssClass="col-xs-7 form-control" runat="server" TextMode="Password" MaxLength="8"></asp:TextBox>
                                </div>
                            <div  class="col-xs-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="col-xs-1" runat="server" ControlToValidate="TextBoxConfPasswd" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </div>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPasswd" ControlToValidate="TextBoxConfPasswd" ErrorMessage="ErrorVerificacion" SetFocusOnError="True" Font-Bold="True" Font-Size="Small" Font-Strikeout="False" ForeColor="Red">No coinciden las contraseñas</asp:CompareValidator>
                        </div>
                    </div>
                        </div>
                
                        <br />
                    
               
                   <div style="padding:1px 190px 2px 1px">
                <asp:Button ID="Button1" CssClass="btn btn-primary btn-block" runat="server"  Text="Registrar" OnClick="Button1_Click1" />
                </div>
            </div>
        </div>

    </div>
        
   
    <br />
    </div>
</asp:Content>
