<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Proyecto.interfaces.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="compra" runat="server">
    <div class="hr grid_12 clearfix">&nbsp;</div>
		<div class="hr grid_12 clearfix">&nbsp;</div>	

		<!-- Column 1 / Content -->
		<div class="grid_8">
			<!-- Contact Form -->
			<form action='index.html' method='post' id='contact_form'>
					<h3>Negociación</h3>
				<div class="hr dotted clearfix">&nbsp;</div>
				<ul>						
					<li class="clearfix"> 
						<label for="total">Total a Cancelar</label>
						<input type='text' name='total' id='total' />
						<div class="clear"></div>
					</li> 
					<li class="clearfix"> 
						<label for="forma">Forma de Pago</label>
						<input type='text' name='forma' id='forma' />
						<div class="clear"></div>
						<p id='forma_error' class='error'>Ingrese una forma de pago valida</p>
					</li> 
					<li class="clearfix"> 
						<label for="envio">Forma de envio</label>
						<input type='text' name='envio' id='envio' />
						<div class="clear"></div>
						<p id='envio_error' class='error'>Ingrese una forma de envio valida</p>
					</li> 					
					<li class="clearfix"> 

					<div id="button">
					<input type='submit' id='aceptar_message' class="button" value='Submit' />
					</div>
					</li> 
				</ul> 
			</form>  
		</div>
		
		<!-- Column 2 / Sidebar -->
		<div class="grid_4 contact">
		
			<!-- Adress and Phone Details -->
			<h4>Address and Phone</h4> 
			<div class="hr dotted clearfix">&nbsp;</div>
			<ul> 
				<li> 
					<strong>Your Company Name</strong><br /> 
					1458 Sample Road, Redvalley<br /> 
					City (State) H4Q 1J7<br /> 
					Country<br /><br /> 
				</li> 
				<li>USA - (888) 888-8888</li> 
				<li>Worldwide - (888) 888-8888</li> 
			</ul> 
			
			<!-- Email Addresses -->
			<h4>Emails</h4> 
			<div class="hr dotted clearfix">&nbsp;</div>
			<ul> 
				<li>General - <a href="mailto:info@yourcompany.com">info@yourcompany.com</a></li> 
				<li>Sales - <a href="mailto:sales@yourcompany.com">sales@yourcompany.com</a></li> 
			</ul> 
			
			<!-- Social Profile Links -->
			<h4>Social Profiles</h4> 
			<div class="hr dotted clearfix">&nbsp;</div>
			<ul> 
				<li class="float"><a href="#"><img alt="" src="images/twitter.png" title="Twitter" /></a></li> 
				<li class="float"><a href="#"><img alt="" src="images/facebook.png" title="Facebook" /></a></li> 
				<li class="float"><a href="#"><img alt="" src="images/stumbleupon.png" title="StumbleUpon" /></a></li> 
				<li class="float"><a href="#"><img alt="" src="images/flickr.png" title="Flickr" /></a></li> 
				<li class="float"><a href="#"><img alt="" src="images/delicious.png" title="Delicious" /></a></li> 
			</ul> 
			
		</div>
		
		<div class="hr grid_12 clearfix">&nbsp;</div>
</asp:Content>
