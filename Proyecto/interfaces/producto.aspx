<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="producto.aspx.cs" Inherits="Proyecto.interfaces.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.roundabout-1.0.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.roundabout-shapes-1.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () { //Start up our Project Preview Carosuel
            $('ul#folio_scroller').roundabout({
                easing: 'easeOutInCirc',
                shape: 'waterWheel',
                duration: 600
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="producto1" runat="server">
    <!-- Catch Line and Link -->
    <h2 class="grid_12 caption clearfix">INFORMACION</h2>

    <div class="hr grid_12 clearfix">&nbsp;</div>

    <!-- Column 1 / Project Information -->
    <div class="grid_4">
        <a class="meta" href="#">Características</a>
        <%--<h4 class="title">Computadora Intel Core i3</h4>--%>
        <h4 class="title"><asp:Label ID="Label1" runat="server" Text="ola"></asp:Label></h4>
        
        <h4 class="title">&nbsp;<strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; box-sizing: border-box; line-height: 1em; position: relative; top: -5px; color: rgb(153, 0, 0); font-family: Arial, Helvetica, 'Nimbus Sans L', sans-serif; font-size: 36px; font-style: normal; font-variant: normal; letter-spacing: -1px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(244, 244, 244);"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><sup style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: text-top; box-sizing: border-box; font-size: 0.5em; line-height: 1.5em;"></sup></strong></h4>
        <div class="hr dotted clearfix">&nbsp;</div>

                    
        <p class="MsoNormal">
            <asp:Label ID="Label3" runat="server" Width="400" Text="Label" TextMode="MultiLine"></asp:Label><o:p></o:p>
        </p>
        <p class="MsoNormal">
             <asp:Label ID="Label5" runat="server" Text="Stock:  "></asp:Label> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <o:p></o:p>
        </p>
      
       <%-- <p class="MsoNormal">
            Computador de escritorio ideal para cyber casa oficina<o:p></o:p>
        </p>
        <p class="MsoNormal">
            Procesador intel core i3 3220 3.4 ghz cuarta generacion 1155<o:p></o:p>
        </p>
        <p class="MsoNormal">
            Maimboard h61 chip intel soporta i3,i5,i7<span>&nbsp; </span>video integrado 256 mb ideal para juegos
            <o:p></o:p>
        </p>
        <p class="MsoNormal">
            Disco duro de 750 gb sata expandible<o:p></o:p>
        </p>
        <p class="MsoNormal">
            Puertos pci xpress3.0 para tarjetas de video ddr 5<o:p></o:p>
        </p>
        <p class="MsoNormal">
            Memoria ddr3 4 gb kinstom expandible con<o:p></o:p>
        </p>
        <p class="MsoNormal">
            Dvd writer 22 xl lg o samsung<span>&nbsp; </span>a su eleccion<o:p></o:p>
        </p>
        <p class="MsoNormal">
            Lector de tarjetas sd 7-1 kinstom o niutek<o:p></o:p>
        </p>
        <p class="MsoNormal">
            7 puertos usb<o:p></o:p>
        </p>
        <p class="MsoNormal">
            Monitor led de 20 lg<o:p></o:p>
        </p>
        <p class="MsoNormal">
            Teclado mouse y parlantes<o:p></o:p>
        </p>--%>
        <div class="areglob">

            <asp:Button CssClass="boton_color_s" ID="Button1" runat="server" Text="Agregar a la lista" OnClick="Button1_Click1" />
            <asp:Button CssClass="boton_color_s" ID="Button2" runat="server" Text="Comprar" />
        </div>
    </div>

    <!-- Column 2 / Image Carosuel -->
    <div id="folio_scroller_container" class="grid_8 cleafix">
        <ul id="folio_scroller">

            <li><span>Imagen 1</span>  <asp:Image ID="Image1" runat="server" /></li>
            <li><span>Imagen 2</span> <asp:Image ID="Image2" runat="server" /></li>
            <li><span>Imagen 3</span> <asp:Image ID="Image3" runat="server" /></li>
            <li><span>Imagen 4</span> <asp:Image ID="Image4" runat="server" /></li>
            <li><span>Imagen 5</span> <asp:Image ID="Image5" runat="server" /></li>

           <%-- <li><span>view 1</span>  <asp:Image ID="Image1" runat="server" /> <a href="#"><img alt="" src="images/computadora.jpg" /></a>  </li>
            <li><span>view 2</span><a href="#"><img alt="" src="images/computadora1.jpg" /></a></li>
            <li><span>view 3</span><a href="#"><img alt="" src="images/computadora2.jpg" /></a></li>
            <li><span>view 4</span><a href="#"><img alt="" src="images/computadora3.jpg" /></a></li>
            <li><span>view 5</span><a href="#"><img alt="" src="images/computadora4.jpg" /></a></li>--%>
        </ul>
    </div>

    <div class="hr grid_12 clearfix">&nbsp;</div>

    <!-- Client pickup line -->
    <br />
    <br />
    <br />
    <br />


    <div class="hr dotted clearfix">&nbsp;</div>

    <ol class="commentlist">
        <h3>Comentarios</h3>
        <div>
            <asp:PlaceHolder runat="server" ID="PlaceHolder1" />
            <br />

        </div>

        <%@ Reference Control="ControlComentarios.ascx" %>
        <script runat="server" language="C#">
            protected void Page_Load(object sender, EventArgs e)
            {
                if (Session["usuario"] == null)
                {
                    Response.Redirect("/interfaces/restriccion.aspx");
                }


                try
                {
                    Proyecto.LogicaDeNegocio.LN_Publicacion ingresoPublicacion = new Proyecto.LogicaDeNegocio.LN_Publicacion();
                    var sql = from camp in ingresoPublicacion.datosPublicacion(Convert.ToInt32(Session["CodigoPublicacionVista"].ToString()))
                              select new { nombrePub = camp.nombre_Pub, datoPub = camp.datos_Pub, contactoPub = camp.numero_con_Pub, precioProPub = camp.precio_Pub, stockProdPub = camp.stock_Pub };
                    foreach (var extraer in sql)
                    {
                        Label1.Text = extraer.nombrePub.ToString();
                        Label3.Text = "";
                        string dato = extraer.datoPub.ToString();
                        char letra; // letra vale 'u' 
                        for (int i = 0; i < dato.Length; i++){
                            letra=dato[i];
                            if (letra.ToString().Equals("-"))
                            {
                                Label3.Text = Label3.Text +  "\n"+ letra.ToString();
                        //        Label3.Text = Label3.Text + letra.ToString();
                            }
                            else
                            {
                                Label3.Text = Label3.Text + letra.ToString();
                            }
                        
                        }
                        Label2.Text = extraer.precioProPub.ToString();
                        Label4.Text = extraer.stockProdPub.ToString();
                    }
                    int control = 0;
                    var sql2 = from camp in ingresoPublicacion.fotosPublicacion(Convert.ToInt32(Session["CodigoPublicacionVista"].ToString()))
                               select new { ruta = camp.ruta_Fot };
                    foreach (var extraer in sql2)
                    {
                        if (control == 0) { Image1.ImageUrl = extraer.ruta.ToString(); }
                        if (control == 1) { Image2.ImageUrl = extraer.ruta.ToString(); }
                        if (control == 2) { Image3.ImageUrl = extraer.ruta.ToString(); }
                        if (control == 3) { Image4.ImageUrl = extraer.ruta.ToString(); }
                        if (control == 4) { Image5.ImageUrl = extraer.ruta.ToString(); }
                        control++;
                    }

                   
                    fechaHoy = DateTime.Today;
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message.ToString();
                }
                
                
                
                int contadorComentario = 0;
                int contadorPosicionComentario = 0;
                Proyecto.LogicaDeNegocio.LNComentario lnComentario = new Proyecto.LogicaDeNegocio.LNComentario();
                ASP.interfaces_controlcomentarios_ascx[] Spinner1;
                try
                {
                    var sql = from camp in lnComentario.listarComentario(int.Parse(Session["CodigoPublicacionVista"].ToString()))
                              select new { nick = camp.nick, comentario = camp.comentario, fecha = camp.fecha };
                    foreach (var extraer in sql)
                    {
                        extraer.fecha.ToString();
                        contadorComentario++;
                    }
                    Spinner1 = new ASP.interfaces_controlcomentarios_ascx[contadorComentario];
                    var sql1 = from camp in lnComentario.listarComentario(int.Parse(Session["CodigoPublicacionVista"].ToString()))
                               select new { nick = camp.nick, comentario = camp.comentario, fecha = camp.fecha };
                    foreach (var extraer in sql1)
                    {
                        Spinner1[contadorPosicionComentario] = (ASP.interfaces_controlcomentarios_ascx)LoadControl("ControlComentarios.ascx");
                        Label mensaje = new Label();
                        mensaje = (Label)Spinner1[contadorPosicionComentario].Controls[5];
                        mensaje.Text = extraer.comentario.ToString();

                        Label fecha = new Label();
                        fecha = (Label)Spinner1[contadorPosicionComentario].Controls[3];
                        fecha.Text = extraer.fecha.ToString();

                        Label usuario = new Label();
                        usuario = (Label)Spinner1[contadorPosicionComentario].Controls[1];
                        usuario.Text = extraer.nick.ToString();

                        PlaceHolder1.Controls.Add(Spinner1[contadorPosicionComentario]);
                        contadorPosicionComentario++;
                    }
                }
                catch (Exception ex)
                {
                    Label error = new Label();
                    error.Text = ex.Message.ToString();
                    PlaceHolder1.Controls.Add(error);
                }
            }
        </script>

    </ol>

    <div class="hr clearfix">&nbsp;</div>

    <!-- Comment Form -->
    <form id="comment_form" action="" method="post">
        <h3>Agregar comentario</h3>
        <div class="hr dotted clearfix">&nbsp;</div>




        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <label for="message">Comentario</label>
        <asp:TextBox ID="txtComentario" runat="server" TextMode="MultiLine" Height="58px" Width="535px"></asp:TextBox>
        <br />
        <br />

        <!-- Add Comment Button -->
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnComentar" runat="server" Text="Comentar" OnClick="Button1_Click" />

    </form>


    <br />
    <br />

    <br />
    <br />
    <br />

    <div class="hr grid_12 clearfix">&nbsp;</div>
</asp:Content>
