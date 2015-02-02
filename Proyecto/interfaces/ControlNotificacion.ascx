<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ControlNotificacion.ascx.cs" Inherits="Proyecto.interfaces.ControlNotificacion" %>
  <div class="hr dotted clearfix">&nbsp;</div>
			
			<ol class="commentlist">
				<li class="comment"> 
				<div class="gravatar"> 
					<img alt="" src='images/gravatar.png' height='48' width='48' />
					<a class="comment-reply-link" href="#">Reply</a>     
				</div> 
				<div class="comment_content"> 
					<div class="clearfix">
						<cite class="author_name"> <asp:Label ID="lblTituloPublicacion" runat="server" Text="Titulo"></asp:Label>
                        <br />
                        <asp:Label ID="lblusuario" runat="server" Text="usuario"></asp:Label></cite>       
						<div class="comment-meta commentmetadata">
                            <asp:Label ID="LBFecha" runat="server" Text="January 6, 2010 at 6:26 am"></asp:Label></div> 
					</div>
					<div class="comment_text"> 
						<p>
                            <asp:Label ID="Label1" runat="server" Text="Buen producto gracias por publicarlo estaba buscando esto precisamente, ahora podre tener lo que quiero."></asp:Label>
						</p> 
					</div> 
				</div> 
				</li> 
			</ol> 
<div class="hr clearfix">&nbsp;</div>