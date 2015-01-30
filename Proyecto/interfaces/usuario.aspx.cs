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
        string contrasenaTemp = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
           

        }


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


        protected void ButtonActualizar_Click(object sender, EventArgs e)
        {
            //if (cambio)
            //{
            //    if (!camposVacios() || !TextBoxContrasena.Text.Equals("") || !TextBoxNuevaContra.Text.Equals("")
            //        || !TextBoxConfirContra.Text.Equals(""))
            //    {
            //        if (contraActual())
            //        {
            //            if (contraConciden())
            //            {
            //                //ACTUALIZO
            //                usuario.Nombre_usu = TextBoxNombre.Text;
            //                usuario.Nic_usu = TextBoxNick.Text;
            //                usuario.Cedula_usu = TextBoxCedula.Text;
            //                usuario.Direccion_usu = TextBoxDireccion.Text;
            //                usuario.Email_usu = TextBoxEmail.Text;
            //                usuario.Passwd_usu = encrip.Encriptar(TextBoxNuevaContra.Text);
            //                usuario.Estado_usu = true;

            //                lnUsuario.actualizarUsuario(usuario, TextBoxCedula.Text);

            //                Response.Redirect("/interfaces/usuario.aspx");
            //            }
            //            else
            //            {
            //                Response.Write("<script language=javascript>alert('Las contraseñas no coinciden');</script>");
            //            }
            //        }
            //        else
            //        {
            //            Response.Write("<script language=javascript>alert('La contraseña actual no es correcta');</script>");
            //        }

            //    }
            //    else
            //    {
            //        Response.Write("<script language=javascript>alert('Porfavor, los campos son obligatorio');</script>");
            //    }
            //}
            //else
            //{
                
            //    if (!camposVacios())
            //    {


            //        //ACTUALIZO
            //        usuario.Nombre_usu = TextBoxNombre.Text;
            //        usuario.Nic_usu = TextBoxNick.Text;
            //        usuario.Cedula_usu = TextBoxCedula.Text;
            //        usuario.Direccion_usu = TextBoxDireccion.Text;
            //        usuario.Email_usu = TextBoxEmail.Text;
            //        usuario.Estado_usu = true;
            //        usuario.Passwd_usu = encrip.Encriptar(contrasenaTemp);

            //        lnUsuario.actualizarUsuario(usuario, TextBoxCedula.Text);

            //        Response.Redirect("/interfaces/usuario.aspx");
            //    }
            //    else
            //    {
            //        Response.Write("<script language=javascript>alert('Porfavor, los campos son obligatorio');</script>");

            //    }
            //}

             if (!camposVacios())
             {
                 //ACTUALIZO
                 usuario.Nombre_usu = TextBoxNombre.Text;
                 usuario.Nic_usu = TextBoxNick.Text;
                 usuario.Cedula_usu = TextBoxCedula.Text;
                 usuario.Direccion_usu = TextBoxDireccion.Text;
                 usuario.Email_usu = TextBoxEmail.Text;
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


        public bool camposVacios()
        {
            if (TextBoxNombre.Text.Equals("") || TextBoxNick.Text.Equals("") || TextBoxCedula.Text.Equals("")
                || TextBoxDireccion.Text.Equals("") || TextBoxEmail.Text.Equals(""))
                return true;
            else return false;
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

        protected void LinkButtonVerMisDatos_Click(object sender, EventArgs e)
        {
            contrasenaTemp = "";
            llenarDatos();

            PanelDatos.Visible = true;
        }

        protected void LinkButtonCambiarContra_Click(object sender, EventArgs e)
        {
            PanelContra.Visible = true;
        }

        protected void ButtonCambiarContra_Click(object sender, EventArgs e)
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

        


    }
}