using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.interfaces
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        LogicaDeNegocio.LN_Usuario lnUsuario = new LogicaDeNegocio.LN_Usuario();
        LogicaDeNegocio.EncriptacionDeDatos encrip = new LogicaDeNegocio.EncriptacionDeDatos();
        Entidades.Ent_Usuario usuario = new Entidades.Ent_Usuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            llenarDatos();
        }

        static string contrasenaTemp = "";

        public void llenarDatos()
        {
            List<dataBase.buscarNicknameResult> datosUsuario = lnUsuario.buscarNick(Session["usuario"].ToString());
            TextBoxNombre.Text = datosUsuario.ElementAt(0).nombreComp_Usu;
            TextBoxNick.Text = datosUsuario.ElementAt(0).nic_Usu;
            TextBoxCedula.Text = datosUsuario.ElementAt(0).cedula_Usu;
            TextBoxContrasena.Text = ""+encrip.DesEncriptar(datosUsuario.ElementAt(0).password_Usu);
            TextBoxDireccion.Text = datosUsuario.ElementAt(0).direccion_Usu;
            TextBoxEmail.Text = datosUsuario.ElementAt(0).email_Usu;

            contrasenaTemp = TextBoxContrasena.Text;
            Console.WriteLine(contrasenaTemp);
            Console.Read();
         
        }

        protected void CheckBoxSi_CheckedChanged(object sender, EventArgs e)
        {

            if (CheckBoxSi.Checked.Equals(true))
            {
                TextBoxContrasena.Text = "";
                TextBoxContrasena.Enabled = true;
                TextBoxNuevaContra.Enabled = true;
                TextBoxConfirContra.Enabled = true;
            }
            else
            {
                
                TextBoxContrasena.Text = contrasenaTemp;
                TextBoxNuevaContra.Text = "";
                TextBoxConfirContra.Text = "";
                TextBoxContrasena.Enabled = false;
                TextBoxNuevaContra.Enabled = false;
                TextBoxConfirContra.Enabled = false;
            }
        }

        
    }
}