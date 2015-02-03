using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.interfaces
{
    public partial class userCompraVenta : System.Web.UI.Page
    {

        LogicaDeNegocio.LN_Usuario lnUsuario = new LogicaDeNegocio.LN_Usuario();
        LogicaDeNegocio.EncriptacionDeDatos encrip = new LogicaDeNegocio.EncriptacionDeDatos();
        Entidades.Ent_Usuario usuario = new Entidades.Ent_Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
            
        }
        
        
        protected void gridventas_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            

        }

    }
}