<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="Proyecto.interfaces.log" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="loguin" runat="server">

   
    <link href="../Content/bootstrap/bootstrap.css" rel="stylesheet" />

    <br /><br /><br /><br />

    
                <h1 class="cent_tit">
               
                BIENVENIDO A UTMACH STORE</h1>
    <div class="container" style="padding:40px 60px 20px 60px">
    <div class="row container-fluid">
        <div class="col-md-6 col-md-6 col-md-6" style="padding:1px 1px 1px 150px" >
            <img class="imgn" src="images/log.png" /></div>
        <div class="col-md-6 col-md-6 col-md-6" style="padding:1px 150px 1px 1px">
        <form role="form">
            <div class="form-group ">
                <label class="control-label" for="h2">
                    Nickname</label>
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ></asp:TextBox>
                        
            </div>
            <div class="form-group">
                <label class="control-label" for="h6">
                    Contraseña</label>
                      <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Ingrese direccion" ForeColor="Red" Font-Bold="True" Font-Size="Larger" ToolTip="Campo obligatorio">*</asp:RequiredFieldValidator>
        
                    </div>
   
            <div class="form-actions">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">
                ¿Olvidaste tu contraseña?</asp:LinkButton>
                <asp:Panel ID="Panel1" runat="server" Height="71px" Visible="False">
                    <br />
                    Ingrese su Correo:
                    <asp:TextBox ID="TextBoxCorreo" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    <asp:Button ID="ButtonEnviar" runat="server" CssClass="btn btn-primary" OnClick="ButtonEnviar_Click" Text="Enviar" />
                   
                    Si su correo es el correcto, se le enviarán sus datos
                </asp:Panel>
                <br />
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Iniciar sesion" OnClick="Button2_Click" />
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Registrarse" OnClick="Button1_Click" />
            </div>
        </form>
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
    </div>
</asp:Content>
