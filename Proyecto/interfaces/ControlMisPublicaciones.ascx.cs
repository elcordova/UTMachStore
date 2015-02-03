using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.interfaces
{
    public partial class ControlMisPublicaciones : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["CodigoPublicacionEdicion"] = Button1.ID.ToString();
            Session["controlDatosEdicionPublicacion"] = "true";
            Response.Redirect("/interfaces/EdicionPublicacion.aspx");
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            LogicaDeNegocio.LN_Publicacion ingresoPublicacion = new LogicaDeNegocio.LN_Publicacion();
            ingresoPublicacion.eliminarPublicacion(Convert.ToInt32(Button1.ID.ToString()));
            
            Response.Redirect("/interfaces/MisPublicaciones.aspx");
        }
    }
}