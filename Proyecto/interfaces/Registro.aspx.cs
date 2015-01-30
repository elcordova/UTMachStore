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
        LogicaDeNegocio.EncriptacionDeDatos seguridad = new LogicaDeNegocio.EncriptacionDeDatos();
        List<dataBase.buscarNicknameResult> datosUsuarioNick = new List<dataBase.buscarNicknameResult>();
        List<dataBase.buscarCedulaResult> datosUsuarioCedula = new List<dataBase.buscarCedulaResult>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            usuario.Nombre_usu = TextBoxNombre.Text;
            usuario.Nic_usu = TextBoxNickname.Text;
            usuario.Direccion_usu = TextBoxDireccion.Text;
            usuario.Email_usu = TextBoxEmail.Text;
            usuario.Cedula_usu = TextBoxCedula.Text;
            usuario.Estado_usu = false;

            if (usuario.Nombre_usu.Equals("") || usuario.Nic_usu.Equals("") || usuario.Direccion_usu.Equals("")
                || usuario.Email_usu.Equals("") || usuario.Cedula_usu.Equals("") || TextBoxPasswd.Text.Equals("")
                || TextBoxConfPasswd.Text.Equals(""))
            {
                //Validacion de campos vacios
            }
            else
            {
                datosUsuarioNick = lnUsuario.buscarNick(TextBoxNickname.Text);
                datosUsuarioCedula = lnUsuario.buscarCedula(TextBoxCedula.Text);
                if (!datosUsuarioNick.Count.Equals(0))
                {
                    if (datosUsuarioNick.ElementAt(0).nic_Usu.Equals(TextBoxNickname.Text))
                    {
                        ////validacion de que el nickname ya existe
                        Response.Write("<script language=javascript>alert('Este NickName ya existe');</script>");
                    }
                }
                else
                {

                    if (!datosUsuarioCedula.Count.Equals(0))
                    {
                        if (datosUsuarioCedula.ElementAt(0).cedula_Usu.Equals(TextBoxCedula.Text))
                        {
                            //validacion de cedula existente
                            Response.Write("<script language=javascript>alert('Esta Cédula ya esta registrada');</script>");
                        }
                        else
                        {
                            registroUsuario();

                        }
                    }
                }
                registroUsuario();
            }
        }

        private void registroUsuario()
        {
            if (TextBoxPasswd.Text.Equals(TextBoxConfPasswd.Text))
            {
                usuario.Passwd_usu = seguridad.Encriptar(TextBoxPasswd.Text);
                lnUsuario.insertarUsuario(usuario);
                enviarCorreo();     //envio de mensaje de verificacion a email
                limpiarCampos();
            }
            else
            {
                //validacion en caso de que las contraseñas no coincidan
                Response.Write("<script language=javascript>alert('Las contrseñas no coinciden');</script>");
            }
        }

        public void limpiarCampos()
        {
            TextBoxNombre.Text = "";
            TextBoxNickname.Text = "";
            TextBoxDireccion.Text = "";
            TextBoxEmail.Text = "";
            TextBoxCedula.Text = "";
            TextBoxPasswd.Text = "";
            TextBoxConfPasswd.Text = "";
        }

        public void enviarCorreo()
        {
            string from = seguridad.DesEncriptar("dQB0AG0AYQBjAGgAcwB0AG8AcgBlAEAAZwBtAGEAaQBsAC4AYwBvAG0A");
            string passwd = seguridad.DesEncriptar("dQB0AG0AYQBjAGgAcwB0AG8AcgBlADIAMAAxADUA");
            string to = usuario.Email_usu;
            string asunto = "¡Bienvenido!, " + usuario.Nic_usu + " Solo te falta confirmar tu cuenta‏";
            string message = "Hola!, " + usuario.Nic_usu + "\n \n"
                + "Muchas gracias por registrarte en UTMachStore. A continuación te damos los datos de acceso a la zona de usuarios: \n \n"
                + "Usuario: " + usuario.Nic_usu + "\n Clave: " + TextBoxPasswd.Text + "\n \n"
                + "En estos momentos tu usuario aun no está validado. Cuando lo valides tendrás las ventajas de usuarios registrados de UTMachStore, como promocionar tus productos y realizar compras. \n \n"
                + "Verás un formulario donde colocar esta clave: \n"
                + usuario.Passwd_usu + "\n \n"
                + "Un cordial saludo y bienvenido a la comunidad de UTMachStore!";
            if (new LogicaDeNegocio.Email().correoVerificacion(from, passwd, to, message, usuario.Nic_usu, asunto))
            {
                Response.Redirect("verificarCuenta.aspx");
            }
            else
            {
                //validacion de no poder haber enviado el correo
            }

        }





    }
}