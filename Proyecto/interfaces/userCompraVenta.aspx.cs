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
        LogicaDeNegocio.Ln_ListarVentas lv = new LogicaDeNegocio.Ln_ListarVentas();
        LogicaDeNegocio.Ln_ListarCompras lc = new LogicaDeNegocio.Ln_ListarCompras();
        Entidades.Ent_Usuario usuario = new Entidades.Ent_Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
            listarventas();
            listarcompras();
            
        }

        public void listarventas() {
            int idusuario = lnUsuario.idUsuario(Session["usuario"].ToString());
            gridventas.DataSource = lv.ListarVentasTable(idusuario);
            gridventas.DataBind();
        }

        public void listarcompras() {
            int idusuario = lnUsuario.idUsuario(Session["usuario"].ToString());
            gridcompras.DataSource = lc.ListarComprasTable(idusuario);
            gridcompras.DataBind();
        }

        
        
        
        protected void gridventas_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            

        }

    }
}