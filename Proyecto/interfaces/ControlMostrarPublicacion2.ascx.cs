using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.interfaces
{
    public partial class ControlMostrarPublicacion2 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["CodigoPublicacionVista"] = ImageButton1.ID.ToString();
       
            Response.Redirect("/interfaces/producto.aspx");
        }
    }
}