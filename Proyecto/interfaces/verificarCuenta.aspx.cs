using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.interfaces
{

    
    public partial class verificarCuenta : System.Web.UI.Page
    {

        LogicaDeNegocio.LN_Usuario lnusuario = new LogicaDeNegocio.LN_Usuario();
        LogicaDeNegocio.EncriptacionDeDatos seguridad = new LogicaDeNegocio.EncriptacionDeDatos();
        Entidades.Ent_Usuario usuario = new Entidades.Ent_Usuario();
        List<dataBase.buscarNicknameResult> datosUsuarioNick = new List<dataBase.buscarNicknameResult>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            datosUsuarioNick = lnusuario.buscarNick(TextBoxNombre.Text);

            if (!datosUsuarioNick.Count.Equals(0))
            {
                if (datosUsuarioNick.ElementAt(0).nic_Usu.Equals(TextBoxNombre.Text))
                {
                    if (datosUsuarioNick.ElementAt(0).password_Usu.Equals(seguridad.Encriptar(TextBoxPasswd.Text)))
                    {
                        if (datosUsuarioNick.ElementAt(0).password_Usu.Equals(TextBoxCod.Text))
                        {
                            lnusuario.validarCuenta(datosUsuarioNick.ElementAt(0).nic_Usu);
                            Session["usuario"] = TextBoxNombre.Text;
                            Response.Redirect("/interfaces/index.aspx");
                        }
                        else 
                        {
                            Response.Write("<script language=javascript>alert('Codigo de Verificación incorrecto');</script>");
                        }
                    }
                    else 
                    {
                        Response.Write("<script language=javascript>alert('Contraseña incorreta');</script>");
                    }
                }
                else 
                {
                    Response.Write("<script language=javascript>alert('Nickname incorreto');</script>");
                }
            }
            else 
            {
                Response.Write("<script language=javascript>alert('Este Usuario: " + usuario.Nic_usu + " no existe');</script>");
            }
            
        }
    }
}