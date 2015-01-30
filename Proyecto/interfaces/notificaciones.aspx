<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="notificaciones.aspx.cs" Inherits="Proyecto.interfaces.notificaciones" %>
<%@ Register TagPrefix="uc" TagName="Spinner" 
    Src="ControlComentarios.ascx" %>
<asp:Content ID="Content11" ContentPlaceHolderID="notificaciones" runat="server">
         &nbsp;&nbsp;&nbsp;
    <%--<div> miguel este codigo va en la hoja producto.aspx y ya lo use alli
      <asp:PlaceHolder runat=server ID="PlaceHolder1" />
      <br />
      
      <br />
      <br />

    </div>
             
            <%@ Reference Control="ControlComentarios.ascx" %>
            <script runat="server" Language="C#">
            protected void Page_Load(object sender, EventArgs e)
            {
                  ASP.interfaces_controlcomentarios_ascx[] Spinner1;
                  Spinner1 = new ASP.interfaces_controlcomentarios_ascx[10];
                for (int p = 0; p < 10;p++ )
                {
                   
                    Spinner1[p] = (ASP.interfaces_controlcomentarios_ascx)LoadControl("ControlComentarios.ascx");
                    Label lb = new Label();
                    lb = (Label)Spinner1[0].Controls[1];
                    lb.Text = "funciona";
                    PlaceHolder1.Controls.Add(Spinner1[p]);
                }
            }
            </script>--%>

    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" 
        />

</asp:Content>
