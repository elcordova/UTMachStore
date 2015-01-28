using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Proyecto.interfaces
{
    public partial class Registro : System.Web.UI.Page
    {
        Entidades.Ent_Usuario usuario = new Entidades.Ent_Usuario();
        LogicaDeNegocio.LN_Usuario lnUsuario = new LogicaDeNegocio.LN_Usuario();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            usuario.Nombre_usu = TextBoxNombre.Text;
            usuario.Nic_usu = TextBoxNickname.Text;
            usuario.Direccion_usu = TextBoxDireccion.Text;
            usuario.Email_usu = TextBoxEmail.Text;
            usuario.Cedula_usu = TextBoxCedula.Text;
            usuario.Estado_usu = false;

            if (TextBoxPasswd.Text.Equals(TextBoxConfPasswd.Text))
            {
                usuario.Passwd_usu = TextBoxPasswd.Text;
                lnUsuario.insertarUsuario(usuario);
            }
            else 
            {
                //mostrar mensaje de error
                
            }
            
            
        }
    }
}