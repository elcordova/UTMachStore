using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.interfaces
{
    public partial class EdicionPublicacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
        }
        Entidades.Ent_Publicaciones entidadPublicacion = new Entidades.Ent_Publicaciones();
        LogicaDeNegocio.LN_Publicacion ingresoPublicacion = new LogicaDeNegocio.LN_Publicacion();
        Entidades.Ent_Fotos entfoto = new Entidades.Ent_Fotos();
        LogicaDeNegocio.LNFoto lnfoto = new LogicaDeNegocio.LNFoto();

        protected void Button2_Click(object sender, EventArgs e)
        {
            entidadPublicacion.Codigo_Categoria = 1;
            entidadPublicacion.Nombre_Publicacion = txtTituloPublicacion.Text;
            entidadPublicacion.Datos_Publicacion = txtDatosPublicacion.Text;
            entidadPublicacion.Numero_ContactoPublicacion = txtNumeroContacto.Text;
            entidadPublicacion.Precio_ProductoPublicacion = Convert.ToDecimal(txtPrecioProducto.Text);
            entidadPublicacion.Stock_ProductoPublicacion = Convert.ToInt32(txtStockProductos.Text);
            ingresoPublicacion.editarPublicacion(entidadPublicacion,Convert.ToInt32(Session["CodigoPublicacionEdicion"].ToString()));


            txtTituloPublicacion.Text = "";
            txtDatosPublicacion.Text = "";
            txtNumeroContacto.Text = "";
            txtPrecioProducto.Text = "";
            txtStockProductos.Text = "";


            Response.Redirect("/interfaces/MisPublicaciones.aspx");//
        }
    }
}