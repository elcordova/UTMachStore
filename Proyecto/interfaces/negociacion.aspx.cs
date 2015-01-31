using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.interfaces
{
    public partial class negociacion : System.Web.UI.Page
    {
        LogicaDeNegocio.LN_Ventas venta = new LogicaDeNegocio.LN_Ventas();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
            else
            {
                List<dataBase.buscarDatosdeVendedorResult> datosVent = venta.buscarDatosVenta(int.Parse(Session["codigo_publicacion"].ToString()));

                labelTitulo.Text = datosVent.ElementAt(0).nombre_Pub;
                TextBox3.Text = (datosVent.ElementAt(0).datos_Pub.ToString() + " \n correo: " + datosVent.ElementAt(0).email_Usu);
                TextBox2.Text = datosVent.ElementAt(0).stock_Pub + "";
                List<dataBase.buscarFormasEnvioResult> formasEnvio = venta.cargarFormasEnvio(int.Parse(Session["codigo_publicacion"].ToString()));
                List<dataBase.buscarFormasPagoResult> formasPago = venta.cargarFormasPago(int.Parse(Session["codigo_publicacion"].ToString()));
                List<ListItem> itemsPago = new List<ListItem>();
                List<ListItem> itemsEnvio = new List<ListItem>();

                for (int i = 0; i < formasPago.Count; i++)
                {
                    itemsPago.Add(new ListItem(formasPago.ElementAt(i).nombre_FormPago.ToString(),formasPago.ElementAt(i).codigo_FormPago.ToString()));
                }
                for (int i = 0; i < formasEnvio.Count; i++)
                {
                    itemsEnvio.Add(new ListItem(formasEnvio.ElementAt(i).nombre_FormEnvio.ToString(), formasEnvio.ElementAt(i).codigo_FormEnvio.ToString()));
                }
                DropDownListPago.Items.AddRange(itemsPago.ToArray());
                DropDownListEnvio.Items.AddRange(itemsEnvio.ToArray());

            }
        }
    }
}