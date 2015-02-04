<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Proyecto.interfaces.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="registro" runat="server">
    
    <h1 class="cent_tit">Registra una nueva Cuenta</h1>
    <img class="img_reg" src="images/SolicitudU.png" />

    <div class="form_reg" id="formn">
        <label class="control-label" for="h2">Nombre</label><br />
        <asp:TextBox ID="TextBoxNombre" runat="server" Width="322px" MaxLength="30"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="Ingrese nombres sin numeros" ForeColor="Red" ToolTip="Ingrese nombres sin numeros" ValidationExpression="^[a-z A-Z ]*$" Font-Bold="True" Font-Size="Larger">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="Campo obligatorio" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
        <br /><br />
        <label class="control-label" for="h4">Direccion</label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label class="control-label" for="h5">Email</label><br />
        <asp:TextBox ID="TextBoxDireccion" runat="server" MaxLength="50"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxDireccion" ErrorMessage="Ingrese direccion" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email" MaxLength="50"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Correo Invalido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" Font-Size="Larger" ToolTip="Correo Invalido">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Ingrese correo" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
        <br /><br />
        <label class="control-label" for="h6">Nickname</label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label class="control-label" for="h7">Cedula</label><br />
        <asp:TextBox ID="TextBoxNickname" runat="server" AutoPostBack="True" MaxLength="15"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxNickname" ErrorMessage="Ingrese nickname" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBoxCedula" runat="server" texmode="cedula" MaxLength="10"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxCedula" ErrorMessage="Cedula Invalida" ForeColor="Red" ToolTip="Ingrese solo numeros sin letras" ValidationExpression="([0-9]|-)*" Font-Bold="True" Font-Size="Larger">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxCedula" ErrorMessage="Campo obligatorio" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
        <br /><br />
        <label class="control-label" for="h6">Contraseña</label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label class="control-label" for="h7">Verificar Contraseña</label><br />
        <asp:TextBox ID="TextBoxPasswd" runat="server" TextMode="Password" MaxLength="8"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPasswd" ErrorMessage="Campo obligatorio" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBoxConfPasswd" runat="server" TextMode="Password" MaxLength="8"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxConfPasswd" ErrorMessage="Campo obligatorio" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button CssClass="btn_cent" ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click1" />
    </div>
<<<<<<< HEAD
    <div class="hr grid_12">&nbsp;</div>
	<div class="clear"></div>
=======

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
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="Ingrese nombres sin numeros" ForeColor="Red" ToolTip="Ingrese nombres sin numeros" ValidationExpression="^[a-z A-Z ]*$" Font-Bold="True" Font-Size="Larger">*</asp:RegularExpressionValidator>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxNombre" ErrorMessage="Campo obligatorio" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
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
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxDireccion" ErrorMessage="Ingrese direccion" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email" MaxLength="50"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Correo Invalido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" Font-Size="Larger" ToolTip="Correo Invalido">*</asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Ingrese correo" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
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
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxNickname" ErrorMessage="Ingrese nickname" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxCedula" runat="server" texmode="cedula" MaxLength="10"  ></asp:TextBox>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxCedula" ErrorMessage="Cedula Invalida" ForeColor="Red" ToolTip="Ingrese solo numeros sin letras" ValidationExpression="([0-9]|-)*" Font-Bold="True" Font-Size="Larger">*</asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxCedula" ErrorMessage="Campo obligatorio" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
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
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPasswd" ErrorMessage="Campo obligatorio" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxConfPasswd" runat="server" TextMode="Password" MaxLength="8"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxConfPasswd" ErrorMessage="Campo obligatorio" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
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
>>>>>>> origin/master
</asp:Content>
