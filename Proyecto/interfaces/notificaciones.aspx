<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="notificaciones.aspx.cs" Inherits="Proyecto.interfaces.notificaciones" %>
<%@ Register TagPrefix="uc" TagName="Spinner" 
    Src="ControlComentarios.ascx" %>
<asp:Content ID="Content11" ContentPlaceHolderID="notificaciones" runat="server">
         <uc:Spinner id="Spinner1" 
        runat="server" 
        MinValue="1" 
        MaxValue="10" />


    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" 
        />

</asp:Content>
