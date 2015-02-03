<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="notificaciones.aspx.cs" Inherits="Proyecto.interfaces.notificaciones" %>

<%@ Register TagPrefix="uc" TagName="Spinner"
    Src="ControlComentarios.ascx" %>
<asp:Content ID="Content11" ContentPlaceHolderID="notificaciones" runat="server">
    &nbsp;&nbsp;&nbsp;
    
   <div>
       <asp:PlaceHolder runat="server" ID="PlaceHolder1" />
       <br />

   </div>
    <%@ Reference Control="ControlNotificacion.ascx" %>
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

            ASP.interfaces_controlnotificacion_ascx[] Spinner1;
            try
            {
                var sql = from camp in lnNotificacion.allNotificacion()
                          where camp.codigo_Usu_Puc == lnUsuario.idUsuario(Session["usuario"].ToString())
                          select new { idUsuario = camp.codigo_Usu };
                foreach (var extraer in sql)
                {
                    extraer.idUsuario.ToString();
                    contadorNotificaciones++;
                }
                Spinner1 = new ASP.interfaces_controlnotificacion_ascx[contadorNotificaciones];

                var sql1 = from camp in lnNotificacion.allNotificacion()
                           where camp.codigo_Usu_Puc == lnUsuario.idUsuario(Session["usuario"].ToString())
                           select new { idUsuario = camp.codigo_Usu, idPublicacion = camp.codigo_Pub, MensajeComentario = camp.codigo_Com };
                foreach (var extraer in sql1)
                {
                    Spinner1[contadorPosicionNotificacion] = (ASP.interfaces_controlnotificacion_ascx)LoadControl("ControlNotificacion.ascx");
                    //obtener nick
                    var nick = from camp in lnUsuario.allUsuario()
                               where camp.codigo_Usu == extraer.idUsuario
                               select new { NickUsuario = camp.nic_Usu };
                    foreach (var extraerNik in nick)
                    {
                        Label usuario = new Label();
                        usuario = (Label)Spinner1[contadorPosicionNotificacion].Controls[3];
                        usuario.Text = extraerNik.NickUsuario.ToString();
                    }
                    //obtener publicacion
                    var Titulopublicacion = from camp in lnComentario.allPublicaciones()
                                            where camp.codigo_Pub == extraer.idPublicacion
                                            select new { titulo = camp.nombre_Pub };
                    foreach (var extraerTitulo in Titulopublicacion)
                    {
                        Label titulo = new Label();
                        titulo = (Label)Spinner1[contadorPosicionNotificacion].Controls[3];
                        titulo.Text = extraerTitulo.titulo.ToString();
                    }
                    //obtener fecha
                    var Fechapublicacion = from camp in lnComentario.allPublicaciones()
                                           where camp.codigo_Pub == extraer.idPublicacion
                                           select new { fecha = camp.fecha_Pub };
                    foreach (var extraerfecha in Fechapublicacion)
                    {
                        Label fecha = new Label();
                        fecha = (Label)Spinner1[contadorPosicionNotificacion].Controls[5];
                        fecha.Text = extraerfecha.fecha.ToString();
                    }
                    //obtener comentario
                    var comentario = from camp in lnComentario.imagencomentatio()
                                           where camp.codigo_Com == extraer.MensajeComentario
                                           select new { mensaje = camp.contenido_Com };
                    foreach (var extraermensaje in comentario)
                    {
                        Label mensaje = new Label();
                        mensaje = (Label)Spinner1[contadorPosicionNotificacion].Controls[7];
                        mensaje.Text = extraermensaje.mensaje.ToString();
                    }
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
