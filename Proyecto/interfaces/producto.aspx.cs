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
        LogicaDeNegocio.LNComentario lncomentario = new LogicaDeNegocio.LNComentario();
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
                ent_comentario.Codigo_Publicacion = 5;
                ent_comentario.Comentario = txtComentario.Text;
                ent_comentario.Fecha = fechaHoy.ToString("D");
                lncomentario.insertarComentario(ent_comentario);


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
            ld.codigo_Usu = codigo;
            ld.codigo_Pub = Convert.ToInt16(Session["CodigoPublicacionVista"]);
            lisdes.insertardeseo(ld);

        }

        //public int contar()
        // {
        //    dataBase.DatosDataContext DB = new dataBase.DatosDataContext();
        //     List<dataBase.cp_contarlistadeseosResult> li = DB.cp_contarlistadeseos().ToList();
        //     int num = li.Count();
        //     return num;
        // }
 


        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["codigo_publicacion"] = 5;
            Response.Redirect("/interfaces/negociacion.aspx");

        }
    }
}