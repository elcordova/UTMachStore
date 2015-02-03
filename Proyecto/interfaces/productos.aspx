<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="productos.aspx.cs" Inherits="Proyecto.interfaces.productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Productos" runat="server">
    <!-- Catch Line and Link -->
			<h2 class="grid_12 caption clearfix"><span>Compra y venta: </span>En la siguiente sección nos encontraremos con los productos más destacados en ventas por los usuarios</h2>
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
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Teléfonos - Tables</h6>
                </a></li>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Computación - Electrónica</h6>
                </a></li>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Casa - Muebles</h6>
                </a></li>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Moda - Belleza</h6>
                </a></li>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Vehículos</h6>
                </a></li>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Animales</h6>
                </a></li>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Arte - Deportes</h6>
                </a></li>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Propiedades</h6>
                </a></li>    
                <span class="meta">Ubicación- El Oro </span>&nbsp;<h4 class="title ">Ciudades</h4>
				<div class="hr clearfix dotted">&nbsp;</div>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Machala</h6>
                </a></li>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Santa Rosa </h6>
                </a></li>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Pasaje</h6>
                </a></li>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">El Guabo</h6>
                </a></li>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Huaquillas</h6>
                </a></li>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Arenillas</h6>
                </a></li>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Atahualpa</h6>
                </a></li>
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Chilla</h6>
                </a></li>    
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Balsas</h6>
                </a></li>    
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Las Lajas</h6>
                </a></li>    
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Marcabelí</h6>
                </a></li>  
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Portovelo</h6>
                </a></li>  
                <li><a href="#" class="current">
                    <h6 style="text-align: justify; font-family: 'Comic Sans MS'; color: #6666FF; font-weight: normal; font-style: italic;">Zaruma</h6>
                </a></li>  
			</div>
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
                //if (Session["usuario"] == null)
                //{
                //    Response.Redirect("/interfaces/restriccion.aspx");
                //}
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

                    Label p = new Label();
                    p.Text = ex.Message.ToString()+ "     "+ contadorPublicaciones;
                    PlaceHolder1.Controls.Add(p);
                }
            }
            </script>

           


				<a class="portfolio_item float alpha">
					<span>Computación</span>
					<img class="" src="images/computadora.jpg"  alt="" onclick="Button1_Click"/>
				</a>
				<a class="portfolio_item float " href="producto.aspx">
					<span>Moda-Belleza</span>
					<img class="" src="images/converse.jpg"  alt=""/>
				</a>
				<a class="portfolio_item float omega" href="producto.aspx">
					<span>Teléfonos-tables</span>
					<img class="" src="images/celular.jpg"  alt=""/>
				</a>
				<a class="portfolio_item float alpha" href="producto.aspx">
					<span>Computación-electrónica</span>
					<img class="" src="images/play3.jpg"  alt=""/>
				</a>
				<a class="portfolio_item float " href="producto.aspx">
					<span>Moda-Belleza</span>
					<img class="" src="images/tomyPerf.jpg"  alt=""/>
				</a>
				<a class="portfolio_item float omega" href="producto.aspx">
					<span>Vehículos</span>
					<img class="" src="images/auto.jpg"  alt=""/>
				</a>
				<a class="portfolio_item float alpha" href="producto.aspx">
					<span>Arte-Deportes</span>
					<img class="" src="images/guitar.jpg"  alt=""/>
				</a>
				<a class="portfolio_item float " href="producto.aspx">
					<span>Arte-Deportes</span>
					<img class="" src="images/agenda.jpg"  alt=""/>
				</a>
				<a class="portfolio_item float omega" href="producto.aspx">
					<span>Animales</span>
					<img class="" src="images/perro.jpg"  alt=""/>
				</a>
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
