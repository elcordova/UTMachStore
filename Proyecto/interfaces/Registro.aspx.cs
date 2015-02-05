using Proyecto.LogicaDeNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Proyecto.interfaces
{
    public partial class Registro : System.Web.UI.Page
    {

        Entidades.Ent_Usuario usuario = new Entidades.Ent_Usuario();
        LogicaDeNegocio.LN_Usuario lnUsuario = new LogicaDeNegocio.LN_Usuario();
        LogicaDeNegocio.Validaciones validar = new LogicaDeNegocio.Validaciones();
        LogicaDeNegocio.EncriptacionDeDatos seguridad = new LogicaDeNegocio.EncriptacionDeDatos();
        List<dataBase.buscarNicknameResult> datosUsuarioNick = new List<dataBase.buscarNicknameResult>();
        List<dataBase.buscarCedulaResult> datosUsuarioCedula = new List<dataBase.buscarCedulaResult>();
        List<dataBase.buscarCorreoResult> datosUsuarioCorreo = new List<dataBase.buscarCorreoResult>();
        bool banderaNick = true;
        bool banderaCedula = true;
        bool banderaCorreo = true;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
            {
               Response.Redirect("/interfaces/restriccion.aspx");
            }
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            capturaDeCampos();

            if (camposVacios())
            {
                Response.Write("<script language=javascript>alert('Porfavor digite corretamente  la cedula');</script>");
            }
            else
            {
                datosUsuarioNick = lnUsuario.buscarNick(TextBoxNickname.Text);
                datosUsuarioCedula = lnUsuario.buscarCedula(TextBoxCedula.Text);
                datosUsuarioCorreo = lnUsuario.buscarCorreo(TextBoxEmail.Text);
                validarCorreo();
                validarNickname();
                validarCedula();

                if (banderaNick.Equals(true) && banderaCedula.Equals(true) && banderaCorreo.Equals(true))
                {
                    registroUsuario();
                }
            }
        }

        private void capturaDeCampos()
        {
            usuario.Nombre_usu = TextBoxNombre.Text;
            usuario.Nic_usu = TextBoxNickname.Text;
            usuario.Direccion_usu = TextBoxDireccion.Text;
            usuario.Email_usu = TextBoxEmail.Text;
            usuario.Cedula_usu = TextBoxCedula.Text;
            usuario.Estado_usu = false;
        }

        private bool camposVacios()
        {
            if (usuario.Cedula_usu.Length<=9)        {
                return true;
            }
            else
            {
                return false;
            }
        }

        private void validarCorreo()
        {
            if (!datosUsuarioCorreo.Count.Equals(0))
            {
                if (datosUsuarioCorreo.ElementAt(0).email_Usu.Equals(TextBoxEmail.Text))
                {
                    Response.Write("<script language=javascript>alert('Este Correo: " + usuario.Email_usu + " ya está registrado');</script>");
                    banderaCorreo = false;
                }
                else
                {
                    banderaCorreo = true;
                }

            }
        }

        private void validarCedula()
        {
            Validaciones uti = new Validaciones();

            if (TextBoxCedula.Text.Length == 10)
            {
                if (!validaCedulaRUC(TextBoxCedula.Text))
                {

                    if (!datosUsuarioCedula.Count.Equals(0))
                    {
                        if (datosUsuarioCedula.ElementAt(0).cedula_Usu.Equals(TextBoxCedula.Text))
                        {
                            Response.Write("<script language=javascript>alert('Esta Cédula: " + usuario.Cedula_usu + " ya está registrada');</script>");
                            banderaCedula = false;
                        }
                        else
                        {
                            banderaCedula = true;
                        }

                    }
                }
                else { Response.Write("<script language=javascript>alert('Esta Cédula no es valida');</script>"); }
            }

            else Response.Write("<script language=javascript>alert('Digite correctamente la cédula');</script>");
        }

        private void validarNickname()
        {
            if (!datosUsuarioNick.Count.Equals(0))
            {
                if (datosUsuarioNick.ElementAt(0).nic_Usu.Equals(TextBoxNickname.Text))
                {
                    Response.Write("<script language=javascript>alert('Este NickName: " + usuario.Nic_usu + " ya está ocupado');</script>");
                    banderaNick = false;
                }
                else
                {
                    banderaNick = true;
                }

            }
        }

        private void registroUsuario()
        {
            if (TextBoxPasswd.Text.Equals(TextBoxConfPasswd.Text))
            {
                usuario.Passwd_usu = seguridad.Encriptar(TextBoxPasswd.Text);
                lnUsuario.insertarUsuario(usuario);
                enviarCorreo();
                limpiarCampos();
            }
            else
            {
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
                + "Verás un campo donde colocar esta clave: \n"
                + usuario.Passwd_usu + "\n \n"
                + "Un cordial saludo y bienvenido a la comunidad de UTMachStore!";
            if (new LogicaDeNegocio.Email().correoVerificacion(from, passwd, to, message, usuario.Nic_usu, asunto))
            {
                Response.Redirect("verificarCuenta.aspx");
            }
            else
            {
                Response.Write("<script language=javascript>alert('No se pudo enviar el correo de verificación, por favor vuelva a intentarlo');</script>");
            }

        }

        protected void TextBoxNombre_KeyPress(object sender, KeyPressEventArgs e)
        {
            validar.Letras(e);

        }

        protected void TextBoxCedula_KeyPress(object sender, KeyPressEventArgs e)
        {
            validar.numeros(e);
            validar.esCedulaValida(TextBoxCedula.Text);
        }

        public bool validaCedulaRUC(String cad)
        {   
        bool resp = true;
        int [] cedula = new int[cad.Length];
        int res = 0;
        if (cedula.Length == 10) {
            for (int c = 0; c < cedula.Length; c++) {
                cedula[c] = Convert.ToInt32(Convert.ToString(cad.ElementAt(c)));
                int r = c % 2;
                if (r == 0) {
                    cedula[c] = cedula[c] * 2;
                    if (cedula[c] > 9) {
                        cedula[c] = cedula[c] - 9;
                    }
                }
            }
            for (int c = 0; c < cedula.Length - 1; c++) {
                res = res + cedula[c];
            }
            res = res % 10;
            if (res != 0) {
                res = 10 - res;
            }
            if (res == cedula[9]) {
                //MessageBox.Show("correcto");
            } else {
                resp = false;
               //MessageBox.Show("incorrecto");

            }
        } else {
            resp = false;
             //MessageBox.Show("incorrecto");

        }
        return resp;
    }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                args.IsValid = args.Value.Length >= 10 && args.Value.ToString().CompareTo("1111111111") != 0 && args.Value.ToString().CompareTo("2222222222") != 0 &&
                args.Value.ToString().CompareTo("3333333333") != 0 && args.Value.ToString().CompareTo("4444444444") != 0 && args.Value.ToString().CompareTo("5555555555") != 0 &&
                args.Value.ToString().CompareTo("6666666666") != 0 && args.Value.ToString().CompareTo("7777777777") != 0 && args.Value.ToString().CompareTo("8888888888") != 0 && args.Value.ToString().CompareTo("9999999999") != 0
                && Convert.ToString(validaCedulaRUC(args.Value.ToString())).CompareTo("true") != 0;
            }
            catch (Exception er)
            {
                Response.Write("<script language=javascript>alert('Error en campo de cedula');</script>");

            }
        }
    }
}

