using Proyecto.dataBase;
using Proyecto.Entidades;
using Proyecto.LogicaDeNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.interfaces
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Ent_Listadeseos ld = new Ent_Listadeseos();
        LN_Listadeseos lisdes = new LN_Listadeseos();
        LN_Usuario lnUsuario = new LN_Usuario();
        Entidades.Ent_Comentario ent_comentario = new Entidades.Ent_Comentario();
        Entidades.Ent_Notificacion ent_notificacion = new Entidades.Ent_Notificacion();
        LogicaDeNegocio.LNComentario lncomentario = new LogicaDeNegocio.LNComentario();
        LogicaDeNegocio.LN_Notificacion lnNotificacion = new LogicaDeNegocio.LN_Notificacion();


        public DateTime fechaHoy;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
           
      
            fechaHoy = DateTime.Today;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtComentario.Text != "")
            {
                ent_comentario.Codigo_Usuario = lnUsuario.idUsuario(Session["usuario"].ToString());
                ent_comentario.Codigo_Publicacion = int.Parse(Session["CodigoPublicacionVista"].ToString());
                ent_comentario.Comentario = txtComentario.Text;
                ent_comentario.Fecha = fechaHoy.ToString("D");
                lncomentario.insertarComentario(ent_comentario);
                // ingresar notificacion
                ent_notificacion.Codigo_Publicacion = int.Parse(Session["CodigoPublicacionVista"].ToString());
                ent_notificacion.Ruta_Publicacion = Session["CodigoPublicacionVista"].ToString();
                ent_notificacion.Codigo_Usuario = lnUsuario.idUsuario(Session["usuario"].ToString());
                ent_notificacion.Codigo_Comentario = lncomentario.numeroComentario();
                lnNotificacion.insertarNotificacion(ent_notificacion);
            }
            else
            {

                Response.Write("<script language=javascript>alert('No puede dejar el campo vacio');</script>");
            }
            txtComentario.Text = "";
            Response.Redirect("/interfaces/producto.aspx");
        }

        public void Button1_Click1(object sender, EventArgs e)
        {
            int codigo = lnUsuario.idUsuario(Session["usuario"].ToString());
            int codpub=  Convert.ToInt16(Session["CodigoPublicacionVista"]);
            int total=lisdes.contar(codigo, codpub);
            if (total == 0)
            {

                ld.codigo_Usu = codigo;
                ld.codigo_Pub = Convert.ToInt16(Session["CodigoPublicacionVista"]);
                lisdes.insertardeseo(ld);
                Response.Write("<script language=javascript>alert('EL PRODUCTO A SIDO AÑADIDO A SU LISTA DE DESEOS');</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('EL PRODUCTO YA ESTA EN SU LISTA DE DESEOS');</script>");
            }
        }
      

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["codigo_publicacion"] = 5;
            Response.Redirect("/interfaces/negociacion.aspx");

        }
    }
}