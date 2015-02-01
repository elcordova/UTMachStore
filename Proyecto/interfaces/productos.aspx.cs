using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.interfaces
{
    
    public partial class productos : System.Web.UI.Page
    {
        List<productos> lista_productos = new List<productos>(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
            else
            {
              
            }
            
        }

    }
}