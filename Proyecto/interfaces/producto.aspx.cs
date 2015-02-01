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

        public void Button1_Click1(object sender, EventArgs e)
        {
            ld.codigo_Usu = 10010;
            ld.codigo_Pub = 5;
            lisdes.insertardeseo(ld);
            
        }

       //public int contar()
       // {
       //    dataBase.DatosDataContext DB = new dataBase.DatosDataContext();
       //     List<dataBase.cp_contarlistadeseosResult> li = DB.cp_contarlistadeseos().ToList();
       //     int num = li.Count();
       //     return num;
       // }
       public void obtenercodpubli()
       {

       }
    }
}