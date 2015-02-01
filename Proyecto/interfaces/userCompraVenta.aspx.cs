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
        protected void Page_Load(object sender, EventArgs e)
        {
            
            gridventas.DataBind();
            
            
            

        }

        protected void gridventas_SelectedIndexChanged(object sender, EventArgs e)
        {

            gridventas.DataBind();

        }

    }
}