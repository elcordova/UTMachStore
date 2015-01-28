using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Entidades
{
    public class Ent_Publicaciones
    {
            private int cod_catgoria;
            private string cod_usuario;
            private string nom_publicacion;
            private string dat_publicacion;
            private string fec_publicacion;
            private string num_contacto_publicacion;
            private decimal pre_prod_publicacion;
            private bool est_publicacion;
            private int stoc_prod_publicaciones;

            public Ent_Publicaciones()
            {
                cod_catgoria = 0;
                cod_usuario = "";
                nom_publicacion = "";
                dat_publicacion = "";
                fec_publicacion = "";
                num_contacto_publicacion = "";
                pre_prod_publicacion = 0;
                est_publicacion = true;
                stoc_prod_publicaciones = 0;
            }

            public Ent_Publicaciones(int codigoCategoria, string codigoUsuario, string nombrePublicacion, string datosPublicacion, 
                string fechaPublicidad, string numeroContactoPublicacion, decimal precioProductoublicacion, bool estadoPublicacion, int stocProductoPublicacion)
            {
                cod_catgoria = codigoCategoria;
                cod_usuario = codigoUsuario;
                nom_publicacion = nombrePublicacion;
                dat_publicacion = datosPublicacion;
                fec_publicacion = fechaPublicidad;
                num_contacto_publicacion = numeroContactoPublicacion;
                pre_prod_publicacion = precioProductoublicacion;
                est_publicacion = estadoPublicacion;
                stoc_prod_publicaciones =stocProductoPublicacion;
            }

            public int Codigo_Categoria
            {
                get { return cod_catgoria; }
                set { cod_catgoria = value; }
            }

            public string Codigo_usuario
            {
                get { return cod_usuario; }
                set { cod_usuario = value; }
            }
            public string Nombre_Publicacion
            {
                get { return nom_publicacion; }
                set { nom_publicacion = value; }
            }
            public string Datos_Publicacion
            {
                get { return dat_publicacion; }
                set { dat_publicacion = value; }
            }
            public string Numero_ContactoPublicacion
            {
                get { return num_contacto_publicacion; }
                set { num_contacto_publicacion = value; }
            }
            public string Fecha_Publicacion
            {
                get { return fec_publicacion; }
                set { fec_publicacion = value; }
            }
            public decimal Precio_ProductoPublicacion
            {
                get { return pre_prod_publicacion; }
                set { pre_prod_publicacion = value; }
            }
            public bool Estado_Publicacion
            {
                get { return est_publicacion; }
                set { est_publicacion = value; }
            }
            public int Stock_ProductoPublicacion
            {
                get { return stoc_prod_publicaciones; }
                set { stoc_prod_publicaciones = value; }
        }
    }
}