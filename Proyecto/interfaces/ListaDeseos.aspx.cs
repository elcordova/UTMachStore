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

        protected void Page_Load(object sender, EventArgs e)
        {
            mostrardeseo();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //int codigo = tabladeseo.CurrentRow.Cells["codigo_Lis_Des"].Value;
            ld.eliminardeseo(2);
        }


        public void mostrardeseo()
        {
            tabladeseo.DataSource = ld.listardeseoFiltro(Convert.ToInt16(Session["usuario"]));
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

    }
}