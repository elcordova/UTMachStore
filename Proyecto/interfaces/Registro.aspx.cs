﻿using System;
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

        protected void Page_Load(object sender, EventArgs e)
        {

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
                }
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
            string message = "Hola " + usuario.Nic_usu + ",Confirmando tu cuenta, accedes a todas las funcionalidades de UTMachStore \n \n"
            + "Vuelve a nuestra Página y en el Logeo ingresa el siguiente codigo: \n" + usuario.Passwd_usu;
            if (new LogicaDeNegocio.Email().correoVerificacion(from, passwd, to, message, usuario.Nic_usu))
            {
                Console.WriteLine("Correo enviado con exito");
            }
            else
            {
                Console.WriteLine("Correo no enviado");
            }

        }

    }
}