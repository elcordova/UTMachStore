using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


namespace Proyecto.interfaces
{
    public partial class notificaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {            
            string pathCurrent = Server.MapPath("~/");
            System.IO.File.Delete(pathCurrent + @"interfaces\images\notificacion.png");
            System.IO.File.Copy(pathCurrent + @"interfaces\images\verde.png", pathCurrent + @"interfaces\images\notificacion.png");
        }

       
    }
}