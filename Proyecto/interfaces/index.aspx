<%@ Page Title="" Language="C#" MasterPageFile="/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Proyecto.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido_principal" runat="server">
    <div class="hr grid_12">&nbsp;</div>
	<div class="clear"></div>
    <!-- Featured Image Slider -->
		<div id="featured" class="clearfix grid_12">  
        <h2 class="parrafos_c caption clearfix"> 
        Bienvenido! Esto es <span>UTMACH STORE</span>, un sitio, donde podras 
        <u>Negociar</u> &amp; <u>Promocionar</u> los productos que de estes.
        Aqui te ofrecemos la oportunidad de dar a conocer tus productos o servicios mediante publicaciones las cuales seran accedidas por muchos ususarios que podran 
        negociar con tigo acorde a tus exigencias.
        </h2> 
        <div  class="liena_divisora"></div>  
			<ul>  
				<li>

					<a href="productos.aspx">
						<span>UTMACH STORE</span>
						<img src="images/card1.jpg" alt="" />
					</a>
				</li>  
				<li>
					<a href="productos.aspx">
						<span>UTMACH STORE</span>
						<img src="images/card2.jpg" alt="" /> 
					</a>	
				</li>  
				<li>
					<a href="productos.aspx">
						<span>UTMACH STORE</span>
						<img src="images/card3.jpg" alt="" />
					</a>
				</li>  
				<li>
					<a href="productos.aspx">
						<span>UTMACH STORE</span>
						<img src="images/card4.jpg" alt="" />
					</a>
				</li>  
				<li>
					<a href="productos.aspx">
						<span>UTMACH STORE</span>
						<img src="images/600x300.gif" alt="" />
					</a>
				</li>  
			</ul> 
		</div>
		<div class="hr grid_12 clearfix">&nbsp;</div>
           <h2 class="parrafos_c caption clearfix">
                Para conocer mas acerca de UTMACH STORE, sus politicas y condiciones puedes verlas en el siguiente enlace.
                <a href="CondicionesDeUso.aspx"><u>Politicas y condiciones de uso</u></a>
           </h2> 
            
        <div class="hr grid_12 clearfix">&nbsp;</div>
</asp:Content>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="ContentNick" runat="server">
     <?php
         session_start();
         if (isset($_SESSION['nickuser'])){
             echo '<p>GOLOSA</p>';
         }else{
             echo '<p>VERGA</p>';
          }
      ?>
</asp:Content>--%>