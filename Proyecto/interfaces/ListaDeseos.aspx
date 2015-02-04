<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="ListaDeseos.aspx.cs" Inherits="Proyecto.interfaces.ListaDeseos" %>

<asp:Content ID="Content12" ContentPlaceHolderID="listadeseos" runat="server">
        <br />
    <br />
    <br />
    <br /> 

    <h1 class="centrado_titulo">Lista de deseos</h1>
    <div class="pr grid_12 clearfix">&nbsp;</div>
    <div class="boton2_centrar">
         <asp:Button CssClass="boton_color_s" ID="Button1" runat="server" Text="Quitar de la lista" OnClick="Button1_Click" />
         <asp:Button CssClass="boton_color_s" ID="Button2" runat="server" Text="Ir a la publicación" OnClick="Button2_Click" />

         <div>
                    <asp:PlaceHolder runat="server" ID="PlaceHolder1" />
                    <br />     
                    </div>
            
            <%@ Reference Control="~/interfaces/ControlMostrarPublicacion.ascx" %>
            <%@ Reference Control="~/interfaces/ControlMostrarPublicacion1.ascx" %>
            <%@ Reference Control="~/interfaces/ControlMostrarPublicacion2.ascx" %>

            <script runat="server" Language="C#">
               
            protected void Page_Load(object sender, EventArgs e)
            {
                if (Session["usuario"] == null)
                {
                    Response.Redirect("/interfaces/restriccion.aspx");
                }
                    int contadorPublicaciones = 0;
                    int contadorPosicionPublicaciones = 0;
                    int contadorPosicionPublicaciones1 = 0;
                    int contadorPosicionPublicaciones2 = 0;
                try
                {
                    
                    double aux = 0;
                    int controlTipo = 0;
                    Proyecto.LogicaDeNegocio.LN_Listadeseos lndeseos = new Proyecto.LogicaDeNegocio.LN_Listadeseos();
                    Proyecto.LogicaDeNegocio.LN_Publicacion lnPublicacion = new Proyecto.LogicaDeNegocio.LN_Publicacion();

                    ASP.interfaces_controlmostrarpublicacion_ascx[] Spinner1;
                    ASP.interfaces_controlmostrarpublicacion1_ascx[] Spinner2;
                    ASP.interfaces_controlmostrarpublicacion2_ascx[] Spinner3;
                    string nickname = Session["usuario"].ToString();
                    int codigoUsuraio = 0;
                    var sql6 = from camp in lnPublicacion.codigoUsuario(nickname)
                               select new { codigoUS = camp.codigo_Usu };
                    foreach (var extraer in sql6)
                    {
                        codigoUsuraio = Convert.ToInt32(extraer.codigoUS.ToString());
                    }
                    
                    var sql1 = from camp in lndeseos.publicacionesdeseo(codigoUsuraio)
                               select new { codigoPublicacio=camp.codigo_Pub };
                    foreach (var extraer in sql1)
                    {
                        
                    }
                    aux = contadorPublicaciones / 3;
                    contadorPublicaciones = Convert.ToInt32(aux) + 1;

                    Spinner1 = new ASP.interfaces_controlmostrarpublicacion_ascx[contadorPublicaciones];
                    Spinner2 = new ASP.interfaces_controlmostrarpublicacion1_ascx[contadorPublicaciones];
                    Spinner3 = new ASP.interfaces_controlmostrarpublicacion2_ascx[contadorPublicaciones];

                    var sql = from camp in lndeseos.publicacionesdeseo(codigoUsuraio)
                              select new { codigoPublicacio = camp.codigo_Pub };
                    foreach (var extraer1 in sql)
                    {
                        
                        var sql4 = from camp in lndeseos.datoslistadeseo(Convert.ToInt32(extraer1.codigoPublicacio.ToString()))
                                   select new { codigPubli = camp.codigo_Pub, nom_publicacion = camp.nombre_Pub };
                        foreach (var extraer in sql4)
                        {
                           
                        if (controlTipo == 3)
                        {
                            controlTipo = 0; }

                        if (controlTipo == 2)
                        {
                            controlTipo++; ;
                            Spinner3[contadorPosicionPublicaciones2] = (ASP.interfaces_controlmostrarpublicacion2_ascx)LoadControl("ControlMostrarPublicacion2.ascx");
                            Label nombrePublicacion = new Label();
                            nombrePublicacion = (Label)Spinner3[contadorPosicionPublicaciones2].Controls[1];
                            nombrePublicacion.Text = extraer.nom_publicacion.ToString();
                            
                            String ruta = "";
                            var sql5 = from camp in lnPublicacion.rutaImagen(extraer.codigPubli.ToString())
                                       select new { rutaImagen = camp.ruta_Fot };
                            foreach (var extraerRuta in sql5)
                            {
                                ruta = extraerRuta.rutaImagen.ToString();

                            }

                            ImageButton imagenBoton = new ImageButton();
                            imagenBoton = (ImageButton)Spinner3[contadorPosicionPublicaciones2].Controls[3];
                            imagenBoton.ImageUrl = ruta;
                            imagenBoton.ID = extraer.codigPubli.ToString();
                            
                            PlaceHolder1.Controls.Add(Spinner3[contadorPosicionPublicaciones2]);
                            contadorPosicionPublicaciones2++;
                        }

                        if (controlTipo == 1)
                        {
                            controlTipo++;

                            Spinner2[contadorPosicionPublicaciones1] = (ASP.interfaces_controlmostrarpublicacion1_ascx)LoadControl("ControlMostrarPublicacion1.ascx");
                            Label nombrePublicacion = new Label();
                            nombrePublicacion = (Label)Spinner2[contadorPosicionPublicaciones1].Controls[1];
                            nombrePublicacion.Text = extraer.nom_publicacion.ToString();

                            String ruta = "";
                            var sql5 = from camp in lnPublicacion.rutaImagen(extraer.codigPubli.ToString())
                                       select new { rutaImagen = camp.ruta_Fot };
                            foreach (var extraerRuta in sql5)
                            {
                                ruta = extraerRuta.rutaImagen.ToString();

                            }

                            ImageButton imagenBoton = new ImageButton();
                            imagenBoton = (ImageButton)Spinner2[contadorPosicionPublicaciones1].Controls[3];
                            imagenBoton.ImageUrl = ruta;
                            imagenBoton.ID = extraer.codigPubli.ToString();

                            PlaceHolder1.Controls.Add(Spinner2[contadorPosicionPublicaciones1]);
                            contadorPosicionPublicaciones1++;
                        }
                        
                        if (controlTipo == 0)
                        {
                            controlTipo++;

                            Spinner1[contadorPosicionPublicaciones] = (ASP.interfaces_controlmostrarpublicacion_ascx)LoadControl("ControlMostrarPublicacion.ascx");
                            Label nombrePublicacion = new Label();
                            nombrePublicacion = (Label)Spinner1[contadorPosicionPublicaciones].Controls[1];
                            nombrePublicacion.Text = extraer.nom_publicacion.ToString();

                            String ruta = "";
                            var sql5 = from camp in lnPublicacion.rutaImagen(extraer.codigPubli.ToString())
                                       select new { rutaImagen = camp.ruta_Fot };
                            foreach (var extraerRuta in sql5)
                            {
                                ruta = extraerRuta.rutaImagen.ToString();

                            }

                            ImageButton imagenBoton = new ImageButton();
                            imagenBoton = (ImageButton)Spinner1[contadorPosicionPublicaciones].Controls[3];
                            imagenBoton.ImageUrl = ruta;
                            imagenBoton.ID = extraer.codigPubli.ToString();

                            PlaceHolder1.Controls.Add(Spinner1[contadorPosicionPublicaciones]);
                            contadorPosicionPublicaciones++;
                        }
                    }
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

    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
