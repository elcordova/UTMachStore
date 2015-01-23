<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="productos.aspx.cs" Inherits="Proyecto.interfaces.productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Productos" runat="server">
    <!-- Catch Line and Link -->
			<h2 class="grid_12 caption clearfix"><span>Compra y venta: </span>En la siguiente sección nos encontraremos con los productos más destacados en ventas por los usuarios</h2>
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
				<a class="portfolio_item float alpha" href="producto.aspx">
					<span>Computación</span>
					<img class="" src="images/computadora.jpg"  alt=""/>
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
