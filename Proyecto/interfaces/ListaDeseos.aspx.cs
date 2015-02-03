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
    public partial class ListaDeseos : System.Web.UI.Page
    {
        LN_Listadeseos ld = new LN_Listadeseos();
        Ent_Listadeseos eld = new Ent_Listadeseos();
        LN_Usuario lnUsuario = new LN_Usuario();

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
            
            ld.eliminardeseo(2);
        }


        public void mostrardeseo()
        {
            int codigo = lnUsuario.idUsuario(Session["usuario"].ToString());
            tabladeseo.DataSource = ld.listardeseoFiltro(codigo);
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

    }
}