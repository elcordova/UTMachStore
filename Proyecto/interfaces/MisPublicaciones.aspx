<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="MisPublicaciones.aspx.cs" Inherits="Proyecto.interfaces.MisPublicaciones" %>
<%@ Register TagPrefix="uc" TagName="Spinner" 
    Src="ControlMisPublicaciones.ascx" %>
<asp:Content ID="Content11" ContentPlaceHolderID="misPublicaciones" runat="server">
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
                if (Session["usuario"] == null)
                {
                    Response.Redirect("/interfaces/restriccion.aspx");
                }
                int contadorPublicaciones = 0;
                int contadorPosicionPublicaciones = 0;
                Proyecto.LogicaDeNegocio.LN_Publicacion lnPublicacion=new Proyecto.LogicaDeNegocio.LN_Publicacion();
              
                  ASP.interfaces_controlmispublicaciones_ascx[] Spinner1;
                    try
                    {
                        string nickname = Session["usuario"].ToString();
                        int codigoUsuraio = 0;
                        var sql2 = from camp in lnPublicacion.codigoUsuario(nickname)
                                   select new { codigoUS = camp.codigo_Usu };
                        foreach (var extraer in sql2)
                        {
                            codigoUsuraio = Convert.ToInt32(extraer.codigoUS.ToString());
                        }
                        var sql1 = from camp in lnPublicacion.ListaPublicaciones(codigoUsuraio)
                                  select new { nom_publicacion = camp.nombre_Pub, dat_piblicacion = camp.datos_Pub, pre_publicacion = camp.precio_Pub };
                        foreach (var extraer in sql1)
                        {
                            extraer.nom_publicacion.ToString();
                            contadorPublicaciones++; }

                        Spinner1 = new ASP.interfaces_controlmispublicaciones_ascx[contadorPublicaciones];
                        var sql = from camp in lnPublicacion.ListaPublicaciones(codigoUsuraio)
                            select new { codigPubli=camp.codigo_Pub, nom_publicacion = camp.nombre_Pub, dat_piblicacion = camp.datos_Pub, pre_publicacion = camp.precio_Pub };
                    foreach (var extraer in sql)
                    {
                        
                        Spinner1[contadorPosicionPublicaciones] = (ASP.interfaces_controlmispublicaciones_ascx)LoadControl("ControlMisPublicaciones.ascx");
                        Label nombrePublicacion = new Label();
                        nombrePublicacion = (Label)Spinner1[contadorPosicionPublicaciones].Controls[1];
                        nombrePublicacion.Text = extraer.nom_publicacion.ToString();

                        Label precioPublicacion = new Label();
                        precioPublicacion = (Label)Spinner1[contadorPosicionPublicaciones].Controls[9];
                        precioPublicacion.Text = extraer.pre_publicacion.ToString();

                        Label datosPubliacion = new Label();
                        datosPubliacion = (Label)Spinner1[contadorPosicionPublicaciones].Controls[11];
                        datosPubliacion.Text = extraer.dat_piblicacion.ToString();

                        Button editarPubli = new Button();
                        editarPubli = (Button)Spinner1[contadorPosicionPublicaciones].Controls[5];
                        editarPubli.ID = extraer.codigPubli.ToString();
                        
                        PlaceHolder1.Controls.Add(Spinner1[contadorPosicionPublicaciones]);
                        contadorPosicionPublicaciones++;
                    
                    
                    }
                 }
                    catch (Exception ex)
                    {
                        
                        Label p = new Label();
                        p.Text = ex.Message.ToString();
                        PlaceHolder1.Controls.Add(p);
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