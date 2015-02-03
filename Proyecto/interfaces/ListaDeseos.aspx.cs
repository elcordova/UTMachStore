using Proyecto.Entidades;
using Proyecto.LogicaDeNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Proyecto.interfaces
{
    public partial class ListaDeseos : System.Web.UI.Page
    {
        LN_Listadeseos ld = new LN_Listadeseos();
        Ent_Listadeseos eld = new Ent_Listadeseos();
        LN_Usuario lnUsuario = new LN_Usuario();
        static int valor = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
            mostrardeseo();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ld.eliminardeseo(valor);
        }

        protected void GridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
           
           
        }

      

        public void mostrardeseo()
        {
            int codigo = lnUsuario.idUsuario(Session["usuario"].ToString());
           
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
         
        }

        protected void tabladeseo_SelectedIndexChanged(object sender, EventArgs e)
        {
            
             
                
            
        }

        protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
        {

        }

    }
}