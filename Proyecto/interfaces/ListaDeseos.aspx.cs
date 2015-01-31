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
        protected void Page_Load(object sender, EventArgs e)
        {
            ld.eliminardeseo(2);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}