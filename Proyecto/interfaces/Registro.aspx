<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Proyecto.interfaces.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="registro" runat="server">
    <br />
    <br />
    <br />
    <br />


    <legend class="centrado_legend">Registra una nueva Cuenta</legend>
    <div class="areglob">
    </div>

    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    
                    <img class="imgn" src="images/SolicitudU.png" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="text1" id="formn">
            <div class="control-group clearfix required ">
                <label class="control-label" for="h2">Nombre</label>
                <label class="control-label" for="h3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp; 
                </label>
                &nbsp;
                    <div class="controls input">
                        &nbsp;<asp:TextBox ID="TextBoxNombre" runat="server" Width="322px" MaxLength="30"></asp:TextBox>
                        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-z A-Z ]*">Solo letras(sin numeros)</asp:RegularExpressionValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                    </div>
            </div>
            <div class="control-group clearfix required ">
                <div class="controls input">
                    &nbsp;<br />
                </div>
            </div>
            <div class="control-group clearfix required ">
                <label class="control-label" for="h4">Direccion</label>
                <label class="control-label" for="h5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Email</label>
                <div class="controls input">
                    &nbsp;<asp:TextBox ID="TextBoxDireccion" runat="server" MaxLength="50"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxDireccion" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email" MaxLength="50"></asp:TextBox>
                &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Error email invalido</asp:RegularExpressionValidator>
                </div>
                &nbsp;<div class="controls input">
                    &nbsp;<br />
                </div>
            </div>
            <div class="control-group clearfix required ">
                Nickname&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="control-label" for="h7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cedula</label>&nbsp;
                    <div class="controls input">
                        &nbsp;<asp:TextBox ID="TextBoxNickname" runat="server" AutoPostBack="True" MaxLength="15"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxNickname" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxCedula" runat="server" MaxLength="10"  ></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxCedula" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxCedula" ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True" ValidationExpression="([0-9]|-)*">Solo numeros(sin letras)</asp:RegularExpressionValidator>
                        &nbsp;<asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBoxCedula" ErrorMessage="ErrorCedula" OnServerValidate="CustomValidator2_ServerValidate" SetFocusOnError="True" Font-Bold="True" Font-Size="Larger" ForeColor="Red">Cedula no valida</asp:CustomValidator>
                        
                        
                        <br />
                    </div>
            </div>
            <div class="control-group clearfix required ">
                <div class="controls input">
                    <br />
            <div class="control-group clearfix required ">
                <label class="control-label" for="h6">Contraseña</label>
                <label class="control-label" for="h7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Verificar Contraseña</label>&nbsp;
                    <div class="controls input">
                        &nbsp;<asp:TextBox ID="TextBoxPasswd" runat="server" TextMode="Password" MaxLength="8"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxConfPasswd" runat="server" TextMode="Password" MaxLength="8"></asp:TextBox>
                        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxConfPasswd" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPasswd" ControlToValidate="TextBoxConfPasswd" ErrorMessage="ErrorVerificacion" SetFocusOnError="True" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" ForeColor="Red">No coinciden las contraseñas</asp:CompareValidator>
                        <br />
                    </div>
            </div>
                    <br />
                </div>
            </div>
            <div class="form-actions">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click1" />
            </div>
        </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
