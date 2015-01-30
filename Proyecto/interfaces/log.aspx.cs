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
                Response.Write("<script language=javascript>alert('Este NickName no existe');</script>");
            }
        }

         //public static void Show(string message) 
         //{ 
         //      // Cleans the message to allow single quotation marks 
         //      string cleanMessage = message.Replace("'", "\'"); 
         //      string script = "<script type='text/javascript'>alert('" + cleanMessage + "');</script>"; 

         //      // Gets the executing web page 
         //      Page page = HttpContext.Current.CurrentHandler as Page; 

         //      // Checks if the handler is a Page and that the script isn't allready on the Page 
         //      if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert")) 
         //      { 
         //        page.ClientScript.RegisterClientScriptBlock(typeof(Alert), "alert", script); 
         //      } 
         //} 
    }
}