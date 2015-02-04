<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="productos.aspx.cs" Inherits="Proyecto.interfaces.productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Productos" runat="server">
    <!-- Catch Line and Link -->
			<h2 class="grid_12 caption clearfix"><span>Compra y venta: </span>En la siguiente sección nos encontraremos con los productos más destacados en ventas por los usuarios</h2>
		   <div>
               <br />
         <h2 class="grid_12 caption clearfix">      <asp:Label ID="Label1" runat="server" Text="   Buscar:  "></asp:Label></h2> <asp:TextBox ID="TextBox1" runat="server" Width="400" Height="25">&nbsp;&nbsp;&nbsp;</asp:TextBox><a><asp:Button ID="Button8" runat="server" Text="Buscar" Height="25" /></a>
		   </div>


             <a href="MisPublicaciones.aspx" class="button float right">Mis publicaciones</a>
            <a href="publicar.aspx" class="button float right">Crear publicacion</a>
		<div class="pr grid_12 clearfix">&nbsp;</div>
		
		<!-- Portfolioo Items -->
		
		<!-- Section 1 -->
		
		<!-- Section 3 -->
		<div class="catagory_1 clearfix">
			<!-- Row 1 -->
			<div class="grid_3 textright" >
				<span class="meta">Productos</span>
				<h4 class="title ">Categorias</h4>
				<div class="hr clearfix dotted">&nbsp;</div>
                <a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">
                        <asp:Button ID="Button1" class="button float right" runat="server" Text="Teléfonos - Tablets"   Width="210px" />
                    </h6>
                </a>
                <br />
               <a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">
                        <asp:Button ID="Button2" class="button float right" runat="server" Text="Computación - Electrónica"   Width="210px" />
                    </h6>
                </a>
                <br />
                <a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">
                        <asp:Button ID="Button3" class="button float right" runat="server" Text="Casa - Muebles" Width="210px" />
                    </h6>
                </a>
                <br />
                <a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">
                        <asp:Button ID="Button4" class="button float right" runat="server" Text="Moda - Belleza" Width="210px" />
                    </h6>
                </a>
                <br />
                <a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">
                        <asp:Button ID="Button5" class="button float right" runat="server" Text="Vehículos" Width="210px" />
                    </h6>
                </a>
                <br />
               <a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">
                        <asp:Button ID="Button6" class="button float right" runat="server" Text="Animales" Width="210px" />
                    </h6>
                </a>
                <br />
               <a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">
                        <asp:Button ID="Button7" class="button float right" runat="server" Text="Arte - Deportes" Width="210px" />
                    </h6>
                </a>
                <asp:PlaceHolder runat="server" ID="PlaceHolder2" />
                    <br /> 
			</div>
                    <div>
                    <asp:PlaceHolder runat="server" ID="PlaceHolder1" />
                    <br />     
                    </div>
            
            <%@ Reference Control="~/interfaces/ControlMostrarPublicacion.ascx" %>
            <%@ Reference Control="~/interfaces/ControlMostrarPublicacion1.ascx" %>
            <%@ Reference Control="~/interfaces/ControlMostrarPublicacion2.ascx" %>

            <script runat="server" Language="C#">
                int controlCategorias = 0;
                
                public Boolean myJSfunction()
                {
                    return false;
                }
                

                public void Button8_Click(object sender, EventArgs e)
                {
                    int contadorPublicaciones = 0;
                    int contadorPosicionPublicaciones = 0;
                    int contadorPosicionPublicaciones1 = 0;
                    int contadorPosicionPublicaciones2 = 0;
                    try
                    {

                        double aux = 0;
                        int controlTipo = 0;
                        Proyecto.LogicaDeNegocio.LN_Publicacion lnPublicacion = new Proyecto.LogicaDeNegocio.LN_Publicacion();

                        ASP.interfaces_controlmostrarpublicacion_ascx[] Spinner1;
                        ASP.interfaces_controlmostrarpublicacion1_ascx[] Spinner2;
                        ASP.interfaces_controlmostrarpublicacion2_ascx[] Spinner3;
                        var sql1 = from camp in lnPublicacion.buquedaPublicaciones(TextBox1.Text)
                                   select new { nom_publicacion = camp.nombre_Pub, dat_piblicacion = camp.datos_Pub, pre_publicacion = camp.precio_Pub };
                        foreach (var extraer in sql1)
                        {
                            for (int cc = 0; cc < 8; cc++)
                            {
                                Label espacio3 = new Label();
                                espacio3.Text = "<html> <br/> </html>";
                                PlaceHolder2.Controls.Add(espacio3);

                            }
                            Label espacio = new Label();
                            espacio.Text = "<html> <br/> </html>";
                            PlaceHolder2.Controls.Add(espacio);
                            extraer.nom_publicacion.ToString();
                            contadorPublicaciones++;
                        }
                        aux = contadorPublicaciones / 3;
                        contadorPublicaciones = Convert.ToInt32(aux) + 1;

                        Spinner1 = new ASP.interfaces_controlmostrarpublicacion_ascx[contadorPublicaciones];
                        Spinner2 = new ASP.interfaces_controlmostrarpublicacion1_ascx[contadorPublicaciones];
                        Spinner3 = new ASP.interfaces_controlmostrarpublicacion2_ascx[contadorPublicaciones];

                        var sql = from camp in lnPublicacion.buquedaPublicaciones(TextBox1.Text)
                                  select new { codigPubli = camp.codigo_Pub, nom_publicacion = camp.nombre_Pub };
                        foreach (var extraer in sql)
                        {
                            Label espacio1 = new Label();
                            espacio1.Text = "<html> <br/> </html>";
                            PlaceHolder2.Controls.Add(espacio1);

                            if (controlTipo == 3)
                            {
                                controlTipo = 0;
                            }

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
                    catch (Exception ex)
                    {

                        //Label p = new Label();
                        //p.Text = ex.Message.ToString()+ "     "+ contadorPublicaciones;
                        //PlaceHolder1.Controls.Add(p);
                    }
                    
                }
                public void buscarporCategoria(int codigoCategoria)
                {
                    int contadorPublicaciones = 0;
                    int contadorPosicionPublicaciones = 0;
                    int contadorPosicionPublicaciones1 = 0;
                    int contadorPosicionPublicaciones2 = 0;
                    try
                    {

                        double aux = 0;
                        int controlTipo = 0;
                        Proyecto.LogicaDeNegocio.LN_Publicacion lnPublicacion = new Proyecto.LogicaDeNegocio.LN_Publicacion();

                        ASP.interfaces_controlmostrarpublicacion_ascx[] Spinner1;
                        ASP.interfaces_controlmostrarpublicacion1_ascx[] Spinner2;
                        ASP.interfaces_controlmostrarpublicacion2_ascx[] Spinner3;
                        var sql1 = from camp in lnPublicacion.buquedaPublicacionesCategoria(codigoCategoria)
                                   select new { nom_publicacion = camp.nombre_Pub, dat_piblicacion = camp.datos_Pub, pre_publicacion = camp.precio_Pub };
                        foreach (var extraer in sql1)
                        {
                            for (int cc = 0; cc < 8; cc++)
                            {
                                Label espacio3 = new Label();
                                espacio3.Text = "<html> <br/> </html>";
                                PlaceHolder2.Controls.Add(espacio3);

                            }
                            Label espacio = new Label();
                            espacio.Text = "<html> <br/> </html>";
                            PlaceHolder2.Controls.Add(espacio);
                            extraer.nom_publicacion.ToString();
                            contadorPublicaciones++;
                        }
                        aux = contadorPublicaciones / 3;
                        contadorPublicaciones = Convert.ToInt32(aux) + 1;

                        Spinner1 = new ASP.interfaces_controlmostrarpublicacion_ascx[contadorPublicaciones];
                        Spinner2 = new ASP.interfaces_controlmostrarpublicacion1_ascx[contadorPublicaciones];
                        Spinner3 = new ASP.interfaces_controlmostrarpublicacion2_ascx[contadorPublicaciones];

                        var sql = from camp in lnPublicacion.buquedaPublicacionesCategoria(codigoCategoria)
                                  select new { codigPubli = camp.codigo_Pub, nom_publicacion = camp.nombre_Pub };
                        foreach (var extraer in sql)
                        {
                            Label espacio1 = new Label();
                            espacio1.Text = "<html> <br/> </html>";
                            PlaceHolder2.Controls.Add(espacio1);

                            if (controlTipo == 3)
                            {
                                controlTipo = 0;
                            }

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
                    catch (Exception ex)
                    {

                        //Label p = new Label();
                        //p.Text = ex.Message.ToString()+ "     "+ contadorPublicaciones;
                        //PlaceHolder1.Controls.Add(p);
                    }
                }

                public void Button1_Click(object sender, EventArgs e)
                { buscarporCategoria(1);  }
                public void Button2_Click(object sender, EventArgs e)
                { buscarporCategoria(2); }
                public void Button3_Click(object sender, EventArgs e)
                { buscarporCategoria(3); }
                public void Button4_Click(object sender, EventArgs e)
                { buscarporCategoria(4); }
                public void Button5_Click(object sender, EventArgs e)
                { buscarporCategoria(5); }
                public void Button6_Click(object sender, EventArgs e)
                { buscarporCategoria(6); }
                public void Button7_Click(object sender, EventArgs e)
                { buscarporCategoria(7); }
            protected void Page_Load(object sender, EventArgs e)
            {
                Session["controlBusqueda"] = "true";  
                if (Session["usuario"] == null)
                {
                    Response.Redirect("/interfaces/restriccion.aspx");
                }

                if (IsPostBack == true)
                {
                    Session["controlBusqueda"] = "false";
                }
                Button8.Click += new EventHandler(Button8_Click);
                Button1.Click += new EventHandler(Button1_Click);
                Button2.Click += new EventHandler(Button2_Click);
                Button3.Click += new EventHandler(Button3_Click);
                Button4.Click += new EventHandler(Button4_Click);
                Button5.Click += new EventHandler(Button5_Click);
                Button6.Click += new EventHandler(Button6_Click);
                Button7.Click += new EventHandler(Button7_Click);
              //  if (!this.IsPostBack)
                if(Session["controlBusqueda"].ToString().Equals("true"))
                {
                    Session["busquedaPublicaciones"] = "false";
                    int contadorPublicaciones = 0;
                    int contadorPosicionPublicaciones = 0;
                    int contadorPosicionPublicaciones1 = 0;
                    int contadorPosicionPublicaciones2 = 0;
                try
                {
                    
                    double aux = 0;
                    int controlTipo = 0;
                    Proyecto.LogicaDeNegocio.LN_Publicacion lnPublicacion = new Proyecto.LogicaDeNegocio.LN_Publicacion();

                    ASP.interfaces_controlmostrarpublicacion_ascx[] Spinner1;
                    ASP.interfaces_controlmostrarpublicacion1_ascx[] Spinner2;
                    ASP.interfaces_controlmostrarpublicacion2_ascx[] Spinner3;
                    var sql1 = from camp in lnPublicacion.TodasPublicaciones()
                               select new { nom_publicacion = camp.nombre_Pub, dat_piblicacion = camp.datos_Pub, pre_publicacion = camp.precio_Pub };
                    foreach (var extraer in sql1)
                    {
                        for (int cc = 0; cc < 8;cc++ )
                        {
                            Label espacio3 = new Label();
                            espacio3.Text = "<html> <br/> </html>";
                            PlaceHolder2.Controls.Add(espacio3);
                            
                        }
                        Label espacio = new Label();
                        espacio.Text = "<html> <br/> </html>";
                        PlaceHolder2.Controls.Add(espacio);
                        extraer.nom_publicacion.ToString();
                        contadorPublicaciones++;
                    }
                    aux = contadorPublicaciones / 3;
                    contadorPublicaciones = Convert.ToInt32(aux) + 1;

                    Spinner1 = new ASP.interfaces_controlmostrarpublicacion_ascx[contadorPublicaciones];
                    Spinner2 = new ASP.interfaces_controlmostrarpublicacion1_ascx[contadorPublicaciones];
                    Spinner3 = new ASP.interfaces_controlmostrarpublicacion2_ascx[contadorPublicaciones];

                    var sql = from camp in lnPublicacion.TodasPublicaciones()
                              select new { codigPubli = camp.codigo_Pub, nom_publicacion = camp.nombre_Pub };
                    foreach (var extraer in sql)
                    {
                        Label espacio1 = new Label();
                        espacio1.Text = "<html> <br/> </html>";
                        PlaceHolder2.Controls.Add(espacio1);
                        
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
                catch (Exception ex)
                {

                    //Label p = new Label();
                    //p.Text = ex.Message.ToString()+ "     "+ contadorPublicaciones;
                    //PlaceHolder1.Controls.Add(p);
                }
            }
            }
            </script>

           
		</div>
			
		<div class="pr clearfix grid_12">&nbsp;</div>
		
		<div class="catagory_1 clearfix">
			<!-- Row 1 -->
		    
		</div>
		<div class="pr clearfix grid_12">&nbsp;</div>
		
		<div class="catagory_1 clearfix">
			<!-- Row 1 -->
		</div>
			
		<div class="hr grid_12 clearfix">&nbsp;</div>
		
</asp:Content>
