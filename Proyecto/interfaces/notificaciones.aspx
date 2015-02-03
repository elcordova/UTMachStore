<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="notificaciones.aspx.cs" Inherits="Proyecto.interfaces.notificaciones" %>

<%@ Register TagPrefix="uc" TagName="Spinner"
    Src="ControlComentarios.ascx" %>
<asp:Content ID="Content11" ContentPlaceHolderID="notificaciones" runat="server">
    &nbsp;&nbsp;&nbsp;
    
   <div>
       <asp:PlaceHolder runat="server" ID="PlaceHolder1" />
       <br />

   </div>
    <%@ Reference Control="ControlMisPublicaciones.ascx" %>
    <script runat="server" language="C#">
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
            int contadorNotificaciones = 0;
            int contadorPosicionNotificacion = 0;
            Proyecto.LogicaDeNegocio.LNComentario lnComentario = new Proyecto.LogicaDeNegocio.LNComentario();
            Proyecto.LogicaDeNegocio.LN_Notificacion lnNotificacion = new Proyecto.LogicaDeNegocio.LN_Notificacion();
            Proyecto.LogicaDeNegocio.LN_Usuario lnUsuario = new Proyecto.LogicaDeNegocio.LN_Usuario();

            ASP.interfaces_notificaciones_aspx[] Spinner1;
            try
            {
                var sql = from camp in lnNotificacion.listarNotificacion(lnUsuario.idUsuario(Session["usuario"].ToString()))
                          select new { idUsuario=camp.idusuario, nick=camp.nick,nombrePublicacio=camp.publicacion, comentario=camp.comentario, fecha=camp.fecha };
                foreach (var extraer in sql)
                {
                    extraer.nick.ToString();
                    contadorNotificaciones++;
                }
                Spinner1 = new ASP.interfaces_notificaciones_aspx[contadorNotificaciones];
                var sql1 = from camp in lnNotificacion.listarNotificacion(lnUsuario.idUsuario(Session["usuario"].ToString()))
                           select new { idUsuario = camp.idusuario, nick = camp.nick, nombrePublicacio = camp.publicacion, comentario = camp.comentario, fecha=camp.fecha };
                foreach (var extraer in sql1)
                {
                    Spinner1[contadorPosicionNotificacion] = (ASP.interfaces_notificaciones_aspx)LoadControl("ControlNotificacion.ascx");
                    Label mensaje = new Label();
                    mensaje = (Label)Spinner1[contadorPosicionNotificacion].Controls[5];
                    mensaje.Text = extraer.comentario.ToString();

                    Label fecha = new Label();
                    fecha = (Label)Spinner1[contadorPosicionNotificacion].Controls[3];
                    fecha.Text = extraer.fecha.ToString();

                    Label usuario = new Label();
                    usuario = (Label)Spinner1[contadorPosicionNotificacion].Controls[1];
                    usuario.Text = extraer.nick.ToString();

                    PlaceHolder1.Controls.Add(Spinner1[contadorPosicionNotificacion]);
                    contadorPosicionNotificacion++;
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





</asp:Content>
