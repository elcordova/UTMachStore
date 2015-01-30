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
        bool cambio = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
            else
            {

                //cambio = false;
                contrasenaTemp = "";
                TextBoxContrasena.Enabled = false;
                TextBoxNuevaContra.Enabled = false;
                TextBoxConfirContra.Enabled = false;

                llenarDatos();
            }

        }

        string contrasenaTemp = "";

        public void llenarDatos()
        {
            List<dataBase.buscarNicknameResult> datosUsuario = lnUsuario.buscarNick(Session["usuario"].ToString());
            TextBoxNombre.Text = datosUsuario.ElementAt(0).nombreComp_Usu;
            TextBoxNick.Text = datosUsuario.ElementAt(0).nic_Usu;
            TextBoxCedula.Text = datosUsuario.ElementAt(0).cedula_Usu;
            contrasenaTemp = "" + encrip.DesEncriptar(datosUsuario.ElementAt(0).password_Usu);
            TextBoxDireccion.Text = datosUsuario.ElementAt(0).direccion_Usu;
            TextBoxEmail.Text = datosUsuario.ElementAt(0).email_Usu;

        }



        protected void ButtonSi_Click(object sender, EventArgs e)
        {
            cambio = true;
            TextBoxContrasena.Enabled = true;
            TextBoxNuevaContra.Enabled = true;
            TextBoxConfirContra.Enabled = true;
        }

        protected void ButtonNo_Click(object sender, EventArgs e)
        {
            cambio = false;
            TextBoxContrasena.Enabled = false;
            TextBoxNuevaContra.Enabled = false;
            TextBoxConfirContra.Enabled = false;
        }

        protected void ButtonActualizar_Click(object sender, EventArgs e)
        {
            if (cambio)
            {
                if (!camposVacios() || !TextBoxContrasena.Text.Equals("") || !TextBoxNuevaContra.Text.Equals("")
                    || !TextBoxConfirContra.Text.Equals(""))
                {
                    if (contraActual())
                    {
                        if (contraConciden())
                        {
                            //ACTUALIZO
                            usuario.Nombre_usu = TextBoxNombre.Text;
                            usuario.Nic_usu = TextBoxNick.Text;
                            usuario.Cedula_usu = TextBoxCedula.Text;
                            usuario.Direccion_usu = TextBoxDireccion.Text;
                            usuario.Email_usu = TextBoxEmail.Text;
                            usuario.Passwd_usu = encrip.Encriptar(TextBoxNuevaContra.Text);
                            usuario.Estado_usu = true;

                            lnUsuario.actualizarUsuario(usuario, TextBoxCedula.Text);

                            Response.Redirect("/interfaces/usuario.aspx");
                        }
                        else
                        {
                            Response.Write("<script language=javascript>alert('Las contraseñas no coinciden');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script language=javascript>alert('La contraseña actual no es correcta');</script>");
                    }

                }
                else
                {
                    Response.Write("<script language=javascript>alert('Porfavor, los campos son obligatorio');</script>");
                }
            }
            else
            {
                capturarDatos();
                if (!camposVacios())
                {


                    //ACTUALIZO

                    usuario.Estado_usu = true;
                    usuario.Passwd_usu = encrip.Encriptar(contrasenaTemp);

                    lnUsuario.actualizarUsuario(usuario, TextBoxCedula.Text);

                    Response.Redirect("/interfaces/usuario.aspx");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Porfavor, los campos son obligatorio');</script>");

                }
            }
        }

        private void capturarDatos()
        {
            usuario.Nombre_usu = TextBoxNombre.Text;
            usuario.Nic_usu = TextBoxNick.Text;
            usuario.Cedula_usu = TextBoxCedula.Text;
            usuario.Direccion_usu = TextBoxDireccion.Text;
            usuario.Email_usu = TextBoxEmail.Text;
        }

        public bool camposVacios()
        {
            if (usuario.Nombre_usu.Equals("") || usuario.Nic_usu.Equals("") || usuario.Cedula_usu.Equals("")
                || usuario.Direccion_usu.Equals("") || usuario.Email_usu.Equals(""))
            {
                return true;
            }
            else { return false; }
            //if (TextBoxNombre.Text.Equals("") || TextBoxNick.Text.Equals("") || TextBoxCedula.Text.Equals("")
            //    || TextBoxDireccion.Text.Equals("") || TextBoxEmail.Text.Equals(""))
            //    return true;
            //else return false;
        }

        public bool contraActual()
        {
            if (TextBoxContrasena.Text.Equals(contrasenaTemp)) return true;
            else return false;
        }

        public bool contraConciden()
        {
            if (TextBoxNuevaContra.Text.Equals(TextBoxConfirContra.Text)) return true;
            else return false;
        }


    }
}