using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Windows.Forms;
using Proyecto.LogicaDeNegocio;

namespace Proyecto.interfaces
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        Validaciones validar = new Validaciones();
        public DateTime fechaHoy;
        protected void Page_Load2(object sender, EventArgs e)
        {
            fechaHoy = DateTime.Now;
            if (Session["usuario"] == null)
            {//
                Response.Redirect("/interfaces/restriccion.aspx");
            }
            try
            {
                mostrarImagen();
            }
            catch { }


        }
        Entidades.Ent_Publicaciones entidadPublicacion = new Entidades.Ent_Publicaciones();
        LogicaDeNegocio.LN_Publicacion ingresoPublicacion = new LogicaDeNegocio.LN_Publicacion();
        Entidades.Ent_Fotos entfoto = new Entidades.Ent_Fotos();
        LogicaDeNegocio.LNFoto lnfoto = new LogicaDeNegocio.LNFoto();

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUploadSubir.HasFile)
            {
                string nombrearchivo = FileUploadSubir.FileName;
                string ruta = Server.MapPath("~/imagenesPublicaciones/");
                DirectoryInfo directory = new DirectoryInfo(ruta);
                DirectoryInfo[] directories = directory.GetDirectories();
                string[] directorio = new string[directories.Length];
                for (int i = 0; i < directories.Length; i++)
                {
                    directorio[i] = ((DirectoryInfo)directories[i]).Name;
                }
                guardarImagenenCarpeta(nombrearchivo, directorio);
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            entidadPublicacion.Codigo_Categoria = 1;
            string nickname = Session["usuario"].ToString();
            int codigoUsuraio = 0;
            var sql1 = from camp in ingresoPublicacion.codigoUsuario(nickname)
                       select new { codigoUS = camp.codigo_Usu };
            foreach (var extraer in sql1)
            {
                codigoUsuraio = Convert.ToInt32(extraer.codigoUS.ToString());
            }
            entidadPublicacion.Codigo_usuario = codigoUsuraio;
            entidadPublicacion.Nombre_Publicacion = txtTituloPublicacion.Text;
            entidadPublicacion.Datos_Publicacion = txtDatosPublicacion.Text;
            DateTime thisDay = DateTime.Today;
            entidadPublicacion.Fecha_Publicacion = thisDay.ToString("D");
            entidadPublicacion.Numero_ContactoPublicacion = txtNumeroContacto.Text;
            entidadPublicacion.Precio_ProductoPublicacion = Convert.ToDecimal(txtPrecioProducto.Text);
            entidadPublicacion.Estado_Publicacion = true;
            entidadPublicacion.Stock_ProductoPublicacion = Convert.ToInt32(txtStockProductos.Text);
            ingresoPublicacion.insertarUsuario(entidadPublicacion);
            guardarIdPublicacion();

            txtTituloPublicacion.Text = "";
            txtDatosPublicacion.Text = "";
            txtNumeroContacto.Text = "";
            txtPrecioProducto.Text = "";
            txtStockProductos.Text = "";


            Response.Redirect("/interfaces/MisPublicaciones.aspx");//

        }
        //noooooooooooooooooooooooo borraras kerly q esto si vale
        //
        private void guardarIdPublicacion()
        {
            var sql = from camp in lnfoto.listarFotos()
                      select new {codigo=camp.Codigo, nombre = camp.nombre, ruta = camp.ruta };
            foreach (var extraer in sql)
            {
                entfoto.Codigo_Publicacion=numeropublicacion();
                entfoto.Nombre_Foto = extraer.nombre;
                entfoto.Ruta_Foto = extraer.ruta;
                lnfoto.ActualizarFoto(entfoto,(int)extraer.codigo );

            }
        }

        public int numeropublicacion()
        {
            int id = 0;
            var sqlid = from camp in lnfoto.numeroPublicacionFinal()

                        select new { id = camp.codigo_Pub };

            foreach (var extraerid in sqlid)
            {
                id = (int)extraerid.id;
            }
            return id;
        }
        private void guardarImagenenCarpeta(string nombrearchivo, string[] directorio)
        {
            if (existeCarpeta(txtTituloPublicacion.Text, directorio) == 1)
            {
                FileUploadSubir.PostedFile.SaveAs(Server.MapPath("~/imagenesPublicaciones/" + cmbCategoria.SelectedItem.ToString() + "/" + txtTituloPublicacion.Text + "/" + nombrearchivo));

            }
            else if (existeCarpeta(txtTituloPublicacion.Text, directorio) == 0)
            {
                string path = Path.Combine(Server.MapPath("~/imagenesPublicaciones/"), cmbCategoria.SelectedItem.ToString() + "/" + txtTituloPublicacion.Text);
                Directory.CreateDirectory(path);
                FileUploadSubir.PostedFile.SaveAs(Server.MapPath("~/imagenesPublicaciones/" + cmbCategoria.SelectedItem.ToString() + "/" + txtTituloPublicacion.Text + "/" + nombrearchivo));

            }
            string ruta = "~/imagenesPublicaciones/" + cmbCategoria.SelectedItem.ToString() + "/" + txtTituloPublicacion.Text + "/" + nombrearchivo;

            lnfoto.insertarFoto(nombrearchivo, ruta);

            //  eliminar();
            mostrarImagen();
        }

        private void eliminar()
        {
            for (int n = 0; n < PnlMostrarImagen.Controls.Count; n++)
            {
                PnlMostrarImagen.Controls.Clear();
            }
        }

        public int existeCarpeta(string nombre, string[] array)
        {
            for (int i = 0; i < array.Length; i++)
            {
                if (array[i].Equals(nombre))
                {
                    return 1;
                }
            }
            return 0;
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

        protected void txtNumeroContacto_KeyPress(object sender, KeyPressEventArgs e)
        {
            validar.numeros(e);
        }

    }
}