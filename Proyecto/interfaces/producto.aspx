
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
			<h2 class="grid_12 caption clearfix">Computadora Intel Core i3, disco duro 750 GB </h2>
		
		<div class="hr grid_12 clearfix">&nbsp;</div>
		
		<!-- Column 1 / Project Information -->
		<div class="grid_4">
		<a class="meta" href="#">Características</a>
		<h4 class="title">Computadora Intel Core i3</h4>
            <h4 class="title">&nbsp;<strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; box-sizing: border-box; line-height: 1em; position: relative; top: -5px; color: rgb(153, 0, 0); font-family: Arial, Helvetica, 'Nimbus Sans L', sans-serif; font-size: 36px; font-style: normal; font-variant: normal; letter-spacing: -1px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(244, 244, 244);">$510<sup style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: text-top; box-sizing: border-box; font-size: 0.5em; line-height: 1.5em;">00</sup></strong></h4>
		<div class="hr dotted clearfix">&nbsp;</div>
			<p class="MsoNormal">
                Computador de escritorio ideal para cyber casa oficina<o:p></o:p></p>
            <p class="MsoNormal">
                Procesador intel core i3 3220 3.4 ghz cuarta generacion 1155<o:p></o:p></p>
            <p class="MsoNormal">
                Maimboard h61 chip intel soporta i3,i5,i7<span>&nbsp; </span>video integrado 256 mb ideal para juegos <o:p></o:p>
            </p>
            <p class="MsoNormal">
                Disco duro de 750 gb sata expandible<o:p></o:p></p>
            <p class="MsoNormal">
                Puertos pci xpress3.0 para tarjetas de video ddr 5<o:p></o:p></p>
            <p class="MsoNormal">
                Memoria ddr3 4 gb kinstom expandible con<o:p></o:p></p>
            <p class="MsoNormal">
                Dvd writer 22 xl lg o samsung<span>&nbsp; </span>a su eleccion<o:p></o:p></p>
            <p class="MsoNormal">
                Lector de tarjetas sd 7-1 kinstom o niutek<o:p></o:p></p>
            <p class="MsoNormal">
                7 puertos usb<o:p></o:p></p>
            <p class="MsoNormal">
                Monitor led de 20 lg<o:p></o:p></p>
            <p class="MsoNormal">
                Teclado mouse y parlantes<o:p></o:p></p>
            <div class="areglob">

                <asp:Button CssClass="boton_color_s" ID="Button1" runat="server" Text="Agregar a la lista" />
                <asp:Button CssClass="boton_color_s" ID="Button2" runat="server" Text="Comprar" />
            </div>
		</div>
		
		<!-- Column 2 / Image Carosuel -->
		<div id="folio_scroller_container" class="grid_8 cleafix">
			<ul id="folio_scroller"> 
					<li><span>view 1</span><a href="#"><img alt="" src="images/computadora.jpg" /></a></li> 
					<li><span>view 2</span><a href="#"><img alt="" src="images/computadora1.jpg" /></a></li> 
					<li><span>view 3</span><a href="#"><img alt="" src="images/computadora2.jpg" /></a></li> 
					<li><span>view 4</span><a href="#"><img alt="" src="images/computadora3.jpg" /></a></li> 
					<li><span>view 5</span><a href="#"><img alt="" src="images/computadora4.jpg" /></a></li>
			</ul> 
		</div>
		
		<div class="hr grid_12 clearfix">&nbsp;</div>
		
		<!-- Client pickup line -->
		<br /><br /><br /><br />

        <h3>Comentarios</h3>
			<div class="hr dotted clearfix">&nbsp;</div>
			
			<ol class="commentlist">
				<li class="comment"> 
				<div class="gravatar"> 
					<img alt="" src='images/gravatar.png' height='48' width='48' />
					<a class="comment-reply-link" href=''>Reply</a>     
				</div> 
				<div class="comment_content"> 
					<div class="clearfix">
						<cite class="author_name"><a href="">Usuario anonimo</a></cite>       
						<div class="comment-meta commentmetadata">January 6, 2010 at 6:26 am</div> 
					</div>
					<div class="comment_text"> 
						<p>Buen producto gracias por publicarlo estaba buscando esto precisamente, ahora podre tener lo que quiero.</p> 
					</div> 
				</div> 
				</li> 
			</ol> 
			
			<div class="hr clearfix">&nbsp;</div>
			
			<!-- Comment Form -->
			<form id="comment_form" action="" method="post"> 
				<h3>Agregar comentario</h3>
				<div class="hr dotted clearfix">&nbsp;</div>
				
					
						
					
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <label for="message">Comentario</label> 
                        <asp:TextBox ID="txtComentario" runat="server" TextMode="MultiLine" Height="58px" Width="535px"></asp:TextBox>
                        <br /><br />
					
						<!-- Add Comment Button -->
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnComentar" runat="server" Text="Comentar" OnClick="Button1_Click" />
					
			</form> 


        <br /><br /><br /><br />
		
		<div class="hr grid_12 clearfix">&nbsp;</div>
</asp:Content>
