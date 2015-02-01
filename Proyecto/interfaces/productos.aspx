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
		
		<!-- Portfolio Items -->
		
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

                     <%@ Reference Control="ControlMostrarPublicacion.ascx" %>
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
              
                  ASP.interfaces_controlmostrarpublicacion_ascx Spinner1;
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

                        Spinner1[contadorPosicionPublicaciones] = (ASP.interfaces_controlmispublicaciones_ascx)LoadControl("ControlMostrarPublicacion.ascx");
                        Label nombrePublicacion = new Label();
                        nombrePublicacion = (Label)Spinner1[contadorPosicionPublicaciones].Controls[1];
                        nombrePublicacion.Text = extraer.nom_publicacion.ToString();

                        Label precioPublicacion = new Label();
                        precioPublicacion = (Label)Spinner1[contadorPosicionPublicaciones].Controls[9];
                        precioPublicacion.Text = extraer.pre_publicacion.ToString();

                        Label datosPubliacion = new Label();
                        datosPubliacion = (Label)Spinner1[contadorPosicionPublicaciones].Controls[11];
                        datosPubliacion.Text = extraer.dat_piblicacion.ToString();
                        String ruta = "";
                        var sql5 = from camp in lnPublicacion.rutaImagen(extraer.codigPubli.ToString())
                                   select new { rutaImagen= camp.ruta_Fot };
                        foreach (var extraerRuta in sql5)
                        {
                            ruta= extraerRuta.rutaImagen.ToString();
                         
                        }
                        
                        Image imagen = new Image();
                        imagen = (Image)Spinner1[contadorPosicionPublicaciones].Controls[7];
                        imagen.ImageUrl = ruta;
                        
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

				<%--<a class="portfolio_item float alpha">
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
				</a>--%>
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
