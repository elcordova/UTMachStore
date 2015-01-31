<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="MisPublicaciones.aspx.cs" Inherits="Proyecto.interfaces.MisPublicaciones" %>
<%@ Register TagPrefix="uc" TagName="Spinner" 
    Src="ControlMisPublicaciones.ascx" %>
<asp:Content ID="Content10" ContentPlaceHolderID="misPublicaciones" runat="server">
    <br />
    <br />
    <br />
    <br />
<%--    <ol class="commentlist">--%>
    <h1 class="centrado_titulo">Mis publicaciones</h1>
     <div>
            <asp:PlaceHolder runat=server ID="PlaceHolder1" />
            <br />
      
            </div>
    <%@ Reference Control="ControlMisPublicaciones.ascx" %>
            <script runat="server" Language="C#">
            protected void Page_Load(object sender, EventArgs e)
            {
                
                
                
                  ASP.interfaces_controlmispublicaciones_ascx[] Spinner1;
                  Spinner1 = new ASP.interfaces_controlmispublicaciones_ascx[10];
                for (int p = 0; p < 10;p++ )
                {

                    Spinner1[p] = (ASP.interfaces_controlmispublicaciones_ascx)LoadControl("ControlComentarios.ascx");
                    Label lb = new Label();
                    lb = (Label)Spinner1[0].Controls[1];
                    lb.Text = "funciona";
                    PlaceHolder1.Controls.Add(Spinner1[p]);
                }
            }
            </script>

  <%-- </ol>--%>
    

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