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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ImageButton imgButton = new ImageButton();
                Image imange = new Image();
               imgButton.ImageUrl = "~/images/notif.png";
                          

            string ruta=Server.MapPath(((ImageButton)sender).ImageUrl);
            System.IO.File.Delete(@ruta);
             System.IO.File.Delete("images/notif.png");
             System.IO.File.Move("iamges/rojo.png", "images/noti.png");
        }
    }
}