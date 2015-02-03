using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Windows.Forms;

namespace Proyecto.interfaces
{
    public partial class EdicionPublicacion : System.Web.UI.Page
    {
        Entidades.Ent_Publicaciones entidadPublicacion = new Entidades.Ent_Publicaciones();
        LogicaDeNegocio.LN_Publicacion ingresoPublicacion = new LogicaDeNegocio.LN_Publicacion();
        Entidades.Ent_Fotos entfoto = new Entidades.Ent_Fotos();
        LogicaDeNegocio.LNFoto lnfoto = new LogicaDeNegocio.LNFoto();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("/interfaces/restriccion.aspx");
            }
           if(Session["controlDatosEdicionPublicacion"].Equals("true")) 
           {
            var sql = from camp in ingresoPublicacion.datosPublicacion(Convert.ToInt32(Session["CodigoPublicacionEdicion"].ToString()))
                       select new { codiCategoria=camp.codigo_Cat, nombrePub=camp.nombre_Pub, datoPub=camp.datos_Pub, contactoPub=camp.numero_con_Pub, precioProPub=camp.precio_Pub, stockProdPub=camp.stock_Pub};
            foreach (var extraer in sql)
            {
                cmbCategoria.SelectedIndex = Convert.ToInt32(extraer.codiCategoria.ToString())-1;
                txtTituloPublicacion.Text = extraer.nombrePub.ToString();
                txtDatosPublicacion.Text = extraer.datoPub.ToString();
                txtNumeroContacto.Text = extraer.contactoPub.ToString();
                txtPrecioProducto.Text = extraer.precioProPub.ToString();
                txtStockProductos.Text = extraer.stockProdPub.ToString();
               
            }
            Session["controlDatosEdicionPublicacion"] = "false";

        }

           try
           {
               mostrarImagen();
           }
           catch (Exception ex) { }
        }
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            entidadPublicacion.Codigo_Categoria = cmbCategoria.SelectedIndex + 1;
            entidadPublicacion.Nombre_Publicacion = txtTituloPublicacion.Text;
            entidadPublicacion.Datos_Publicacion = txtDatosPublicacion.Text;
            entidadPublicacion.Numero_ContactoPublicacion = txtNumeroContacto.Text;
            entidadPublicacion.Precio_ProductoPublicacion = Convert.ToDecimal(txtPrecioProducto.Text);
            entidadPublicacion.Stock_ProductoPublicacion = Convert.ToInt32(txtStockProductos.Text);
            ingresoPublicacion.editarPublicaciones(entidadPublicacion, Convert.ToInt32(Session["CodigoPublicacionEdicion"].ToString()));

            txtTituloPublicacion.Text = "";
            txtDatosPublicacion.Text = "";
            txtNumeroContacto.Text = "";
            txtPrecioProducto.Text = "";
            txtStockProductos.Text = "";


            Response.Redirect("/interfaces/MisPublicaciones.aspx");//
        }

        private void mostrarImagen()
        {
            foreach (string sacarimagen in Directory.GetFiles(Server.MapPath("~/imagenesPublicaciones/" + cmbCategoria.SelectedItem.ToString() + "/" + txtTituloPublicacion.Text + "/")))
            {
                ImageButton imgButton = new ImageButton();
                Image imange = new Image();
                FileInfo nombre_archivo = new FileInfo(sacarimagen);
                imgButton.ImageUrl = "~/imagenesPublicaciones/" + cmbCategoria.SelectedItem.ToString() + "/" + txtTituloPublicacion.Text + "/" + nombre_archivo.Name;
                imgButton.Width = Unit.Pixel(100);
                imgButton.Height = Unit.Pixel(100);
                imgButton.Style.Add("padding", "5px");
                imgButton.Click += new ImageClickEventHandler(imgButton_Click);
                PnlMostrarImagen.Controls.Add(imgButton);
            }
        }
        private void imgButton_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                System.IO.File.Delete(Server.MapPath(((ImageButton)sender).ImageUrl));
                //eliminar();
                mostrarImagen();
            }
            catch (Exception)
            {
            }
        }
    }
}