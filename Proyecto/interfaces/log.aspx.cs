using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.interfaces
{

    
    public partial class log : System.Web.UI.Page
    {

        LogicaDeNegocio.LN_Usuario lnusuario = new LogicaDeNegocio.LN_Usuario();
        LogicaDeNegocio.EncriptacionDeDatos seguridad = new LogicaDeNegocio.EncriptacionDeDatos();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            //Verifico si existe
            //Luego veo si esta activo
            string nick=TextBox1.Text;
            List<dataBase.buscarNicknameResult> datosUsuario = lnusuario.buscarNick(nick);
            if (!datosUsuario.Count.Equals(0))
            {
                //EXISTE

                if (datosUsuario.ElementAt(0).password_Usu.Equals(seguridad.Encriptar(TextBox5.Text)))
                {
                    //ACCESO

                    if (datosUsuario.ElementAt(0).estado_Usu.Equals(true))
                    {
                        //USUARIO ACTIVO

                        Session["usuario"] = TextBox1.Text;
                        Response.Redirect("/interfaces/index.aspx");

                    
                    }
                    else
                    {
                        //USUARIO INACTIVO
                        Response.Write("<script language=javascript>alert('Aún no has activado tu cuenta');</script>");
                        Response.Redirect("/interfaces/verificarCuenta.aspx");
                    }

                }
                else
                {
                    //CONTRASEÑA INCORRECTA
                    Response.Write("<script language=javascript>alert('NickName o contraseña incorrectos');</script>");
                }
            }
            else 
            {
                //NO EXISTE
                Response.Write("<script language=javascript>alert('NickName o contraseña incorrectos');</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/interfaces/Registro.aspx");
        }

        protected void ButtonEnviar_Click(object sender, EventArgs e)
        {
            //Enviar datos al correo

            if (TextBoxCorreo.Text.Trim().Equals(""))
            {
                Response.Write("<script language=javascript>alert('Correo necesario');</script>");
            }
            else
            {
                List<dataBase.buscarCorreoResult> user = lnusuario.buscarCorreo(TextBoxCorreo.Text);

                if (!user.Count.Equals(0))
                {


                    if (enviarCorreo(user.ElementAt(0).nic_Usu, user.ElementAt(0).password_Usu, TextBoxCorreo.Text))
                    {
                        Response.Write("<script language=javascript>alert('Mensaje enviado. Revise su correo para ver sus datos');</script>");
                    }
                    else
                    {
                        Response.Write("<script language=javascript>alert('Ha surgido problemas al enviar el mensaje');</script>");
                    }
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Este correo no está registrado');</script>");
                }
            }
            

        }

        public bool enviarCorreo(string user, string pass, string correo)
        {
            string from = seguridad.DesEncriptar("dQB0AG0AYQBjAGgAcwB0AG8AcgBlAEAAZwBtAGEAaQBsAC4AYwBvAG0A");
            string passwd = seguridad.DesEncriptar("dQB0AG0AYQBjAGgAcwB0AG8AcgBlADIAMAAxADUA");
            string to = correo;
            string asunto = "Recuperación de tus Datos -  UTMachStore";
            string message = "Hola!, " + user + "\n \n"
                + "Esperamos que te gusten nuestros servicios. Aquí tienes tus datos: \n \n"
                + "Usuario: " + user + "\n Clave: " + pass + "\n \n"
                + "Un saludo de la comunidad de UTMachStore!";
            if (new LogicaDeNegocio.Email().correoVerificacion(from, passwd, to, message, user, asunto))
                return true;
            else
                return false;
            

        }
    }
}