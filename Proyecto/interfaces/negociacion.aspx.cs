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
        LogicaDeNegocio.LN_Usuario compra = new LogicaDeNegocio.LN_Usuario();
        List<dataBase.buscarDatosdeVendedorResult> datosVent;
        List<dataBase.buscarNicknameResult> datosCom;
        Entidades.Ent_Venta nueva_vent;
        LogicaDeNegocio.EncriptacionDeDatos seguridad = new LogicaDeNegocio.EncriptacionDeDatos();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
            else
            {
                nueva_vent = new Entidades.Ent_Venta();

                nueva_vent.codigo_usuario = Session["id_activo"].ToString();
                nueva_vent.codigo_publicacion = int.Parse(Session["codigo_publicacion"].ToString());

                datosVent = venta.buscarDatosVenta(int.Parse(Session["codigo_publicacion"].ToString()));
                datosCom = compra.buscarNick(Session["usuario"].ToString());
                labelTitulo.Text = datosVent.ElementAt(0).nombre_Pub;
                TextBox3.Text = (datosVent.ElementAt(0).datos_Pub.ToString() + " \n correo: " 
                    + datosVent.ElementAt(0).email_Usu +" \n la informacion completa de la negociacion sera enviada a su correo una vez realizada la negociacion");
                TextBox2.Text = datosVent.ElementAt(0).stock_Pub + "";
                if (TextBox2.Text.Trim() == "0" || 
                    datosCom.ElementAt(0).codigo_Usu.Equals(datosCom.ElementAt(0).codigo_Usu))
                {
                    Button1.Enabled = false;
                }
                TextBox2.Enabled = false;
                List<dataBase.buscarFormasEnvioResult> formasEnvio = venta.cargarFormasEnvio(int.Parse(Session["codigo_publicacion"].ToString()));
                List<dataBase.buscarFormasPagoResult> formasPago = venta.cargarFormasPago(int.Parse(Session["codigo_publicacion"].ToString()));
                List<ListItem> itemsPago = new List<ListItem>();
                List<ListItem> itemsEnvio = new List<ListItem>();

                for (int i = 0; i < formasPago.Count; i++)
                {
                    itemsPago.Add(new ListItem(formasPago.ElementAt(i).nombre_FormPago.ToString(), formasPago.ElementAt(i).codigo_FormPago.ToString()));
                }
                for (int i = 0; i < formasEnvio.Count; i++)
                {
                    itemsEnvio.Add(new ListItem(formasEnvio.ElementAt(i).nombre_FormEnvio.ToString(), formasEnvio.ElementAt(i).codigo_FormEnvio.ToString()));
                }
                DropDownListPago.Items.AddRange(itemsPago.ToArray());
                DropDownListEnvio.Items.AddRange(itemsEnvio.ToArray());

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (int.Parse(TextBox1.Text + "".Trim()) <= int.Parse(TextBox2.Text + "".Trim()))
            {
                nueva_vent.codigo_envio = int.Parse(DropDownListEnvio.SelectedValue);
                nueva_vent.codigo_pago = int.Parse(DropDownListPago.SelectedValue);
                nueva_vent.fecha_negociacion = System.DateTime.Now;
                nueva_vent.cantidad_pub = int.Parse((TextBox1.Text + "").Trim());
                venta.guardarVenta(nueva_vent);
                // Response.Write("<script language=javascript>alert('Compra Exitosa....los datos relevantes fueron enviados a su correo');</script>");
                //    Response.Redirect("/interfaces/productos.aspx");
                enviarCorreos();
            }
            else
            {
                Response.Write("<script language=javascript>alert('analice los campos de stock');</script>");
            }


        }

        private void enviarCorreos()
        {

            //enviando correo a usuario Comprador
            string from = seguridad.DesEncriptar("dQB0AG0AYQBjAGgAcwB0AG8AcgBlAEAAZwBtAGEAaQBsAC4AYwBvAG0A");
            string passwd = seguridad.DesEncriptar("dQB0AG0AYQBjAGgAcwB0AG8AcgBlADIAMAAxADUA");
            string to = datosCom.ElementAt(0).email_Usu;
            string asunto = "¡Felicidades!, " + datosCom.ElementAt(0).nic_Usu + " haz hecho una negociacion‏";
            string message = "Hecho!, " + datosCom.ElementAt(0).nic_Usu + "\n \n"
                + "Los datos que te mostramos a continuacion facilitaran tu negociacion \n \n"
                + "Usuario: " + datosVent.ElementAt(0).nombreComp_Usu + "\n Direccion: " + datosVent.ElementAt(0).direccion_Usu + "\n" +
                "Correo Electronico: " + datosVent.ElementAt(0).email_Usu+
                "\n Publicacion: " + datosVent.ElementAt(0).nombre_Pub +
                    "\n Precio Propuesto: " + datosVent.ElementAt(0).precio_Pub +
                    "\n Cantidad: " + nueva_vent.cantidad_pub +
                    "\n Precio Final : " + (Double.Parse(datosVent.ElementAt(0).precio_Pub + "")) * (Double.Parse(nueva_vent.cantidad_pub + "")) +
                "\n \n Datos de la Negociacion \n El usuario requiere:\n" +
                "Tipo de Envio: " + DropDownListEnvio.SelectedItem.ToString() +
                "Tipo de Pago: " + DropDownListPago.SelectedItem.ToString()
                + "Los datos de tu negociacion tambien fueron enviados al dueño del anuncion\n \n"
                + "recuerda,  que en utmachStore podras realizar tus publicaciones totalmente gratis y nosotros gestionaremos tus anuncios"
                
                + "UTMachStore";
            if (new LogicaDeNegocio.Email().correoVerificacion(from, passwd, to, message, datosCom.ElementAt(0).nic_Usu, asunto))
            {
                to = datosVent.ElementAt(0).email_Usu;
                asunto = "¡Felicidades!, " + datosVent.ElementAt(0).nic_Usu + " ya tienes un comprador‏";
                message = "Hecho!, " + datosVent.ElementAt(0).nic_Usu + "\n \n"
                + "Los datos que te mostramos a continuacion facilitaran tu negociacion \n \n"
                + "Usuario: " + datosCom.ElementAt(0).nombreComp_Usu + "\n Direccion: " + datosCom.ElementAt(0).direccion_Usu + "\n" +
                "Correo Electronico: " + datosCom.ElementAt(0).email_Usu +
                    "\n Publicacion: " + datosVent.ElementAt(0).nombre_Pub +
                    "\n Precio Propuesto: " + datosVent.ElementAt(0).precio_Pub +
                    "\n Cantidad: " + nueva_vent.cantidad_pub +
                    "\n Precio Final : " + (Double.Parse(datosVent.ElementAt(0).precio_Pub + "")) * (Double.Parse(nueva_vent.cantidad_pub + ""))+
                "\n \n Datos de la Negociacion \n El usuario requiere:\n" +
                "Tipo de Envio: " + DropDownListEnvio.SelectedItem.ToString() +
                "Tipo de Pago: " + DropDownListPago.SelectedItem.ToString()

            + "\n Los datos de tu negociacion tambien fueron enviados al comprador del anuncion\n \n"
            + "recuerda,  que en utmachStore podras realizar tus publicaciones totalmente gratis y nosotros gestionaremos tus anuncios";
                
               
            if (new LogicaDeNegocio.Email().correoVerificacion(from, passwd, to, message, datosCom.ElementAt(0).nic_Usu, asunto))
            {
                Response.Write("<script language=javascript>alert('Compra Exitosa....los datos relevantes fueron enviados a su correo');</script>");             
                Response.Redirect("/interfaces/productos.aspx");
            }
            else
            {
                Response.Write("<script language=javascript>alert('No se pudo enviar el correo de verificación, por favor vuelva a intentarlo');</script>");
            }
        }
    }
    }
}