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
        Entidades.Ent_Comentario ent_comentario = new Entidades.Ent_Comentario();
        LogicaDeNegocio.LNComentario lncomentario = new LogicaDeNegocio.LNComentario();
        public DateTime fechaHoy;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
             fechaHoy = DateTime.Now;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ent_comentario.Codigo_Usuario = "10010";
            ent_comentario.Codigo_Publicacion=5;
            ent_comentario.Comentario = txtComentario.Text;
            ent_comentario.Fecha = fechaHoy.ToString();
            lncomentario.insertarUsuario(ent_comentario);

            txtComentario.Text = "";
        }

        protected void ButtonComprar_Click(object sender, EventArgs e)
        {
          Session["codigo_publicacion"] = "5";
          Response.Redirect("/interfaces/negociacion.aspx");
        }

       
    }
}