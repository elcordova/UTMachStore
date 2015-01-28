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

                if (datosUsuario.ElementAt(0).password_Usu.Equals(TextBox5.Text))
                {
                    //ACCESO

                    if (datosUsuario.ElementAt(0).estado_Usu.Equals(true))
                    {
                        //USUARIO ACTIVO

                        Response.Write("<asp:Content ID='idUs' ContentPlaceHolderID='nombreUsuario' runat='server'> PERRA </asp:Content>");
                       // Response.Redirect("/interfaces/index.aspx");

                        //Response.Write("<script><asp:Content ID='idUsuario' ContentPlaceHolderID='nombreUsuario' runat='server'>HOLA</asp:Content></script>");
                    }
                    else
                    {
                        //USUARIO INACTIVO
                    }

                }
                else
                {
                    //CONTRASEÑA INCORRECTA
                }

                

            }
            else 
            {
                //NO EXISTE
            }
        }
    }
}