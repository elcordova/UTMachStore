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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
                //sd
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            usuario.Nic_usu = TextBoxNombre.Text;
            List<dataBase.buscarNicknameResult> datosUsuario = lnusuario.buscarNick(usuario.Nic_usu);
            if (!datosUsuario.Count.Equals(0))
            {
                //EXISTE

                if (datosUsuario.ElementAt(0).password_Usu.Equals(seguridad.Encriptar(TextBoxPasswd.Text)))
                {
                    //ACCESO

                    if (datosUsuario.ElementAt(0).password_Usu.Equals(TextBoxCod.Text))
                    {
                        lnusuario.validarCuenta(usuario.Nic_usu);
                        Session["usuario"] = usuario.Nic_usu;
                        Response.Redirect("/interfaces/index.aspx");
                    }
                    else
                    {
                        //USUARIO INACTIVO
                        Response.Write("<script language=javascript>alert('Aún no has activado tu cuenta');</script>");
                    }

                }
                else
                {
                    Response.Write("<script language=javascript>alert('La ');</script>");
                }
            }
            else
            {
                //NO EXISTE
            }
            
        }
    }
}