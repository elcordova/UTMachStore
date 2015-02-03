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
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
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
                        &nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxNombre" Display="Dynamic" ErrorMessage="Solo letras" ForeColor="Red" ValidationExpression="^[a-zA-Z]*$" ValidationGroup="Sololetras">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="Ingrese Nombres" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Email</label>
                <div class="controls input">
                    &nbsp;<asp:TextBox ID="TextBoxDireccion" runat="server" MaxLength="50"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxDireccion" ErrorMessage="Ingrese Dirección" ForeColor="Red">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email" MaxLength="50"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxEmail" Display="Dynamic" ErrorMessage="Escriba un correo valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Correovalido">*</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Correo Invalido" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cedula</label>&nbsp;
                    <div class="controls input">
                        &nbsp;<asp:TextBox ID="TextBoxNickname" runat="server" AutoPostBack="True" MaxLength="15"></asp:TextBox>
                        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxNickname" ErrorMessage="Debe llenar este campo" ForeColor="Red" ToolTip="Debe llenar este campo">*</asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxCedula" runat="server" MaxLength="10" ></asp:TextBox>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxCedula" Display="Dynamic" ErrorMessage="Solo numeros" ForeColor="Red" ValidationExpression="([0-9]|-)*" ValidationGroup="Solonumeros">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBoxCedula" ErrorMessage="Cedula Invalida" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Verificar Contraseña</label>&nbsp;
                    <div class="controls input">
                        &nbsp;<asp:TextBox ID="TextBoxPasswd" runat="server" TextMode="Password" MaxLength="8"></asp:TextBox>
                        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxPasswd" ErrorMessage="Ingrese Contraseña" ForeColor="Red" ToolTip="Debe llenar este campo">*</asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxConfPasswd" runat="server" TextMode="Password" MaxLength="8"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxConfPasswd" ErrorMessage="Ingrese la misma contraseña" ForeColor="Red" ToolTip="Debe llenar este campo">*</asp:RequiredFieldValidator>
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
