using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.interfaces
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
            {
                Label1.Text = Session["usuario"].ToString();
                Label2.Text = " | ";
                Label3.Text = " | ";
                HyperLink1.Text = "Mis Datos";
                HyperLink2.Text = "Cerrar Sesión";


            }
            else
            {
                Label1.Text = "";
                Label2.Text = "";
                Label3.Text = "";
                HyperLink1.Text = "";
                HyperLink2.Text = "";
            }
        }
    }
}