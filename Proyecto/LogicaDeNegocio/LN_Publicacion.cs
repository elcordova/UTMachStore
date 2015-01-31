using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class LN_Publicacion
    {
        dataBase.DatosDataContext DB = new dataBase.DatosDataContext();

        public void insertarUsuario(Entidades.Ent_Publicaciones publicacion)
        {
            DB.insertarPublicacion(publicacion.Codigo_Categoria, publicacion.Codigo_usuario, publicacion.Nombre_Publicacion, publicacion.Datos_Publicacion,
                publicacion.Fecha_Publicacion, publicacion.Numero_ContactoPublicacion, publicacion.Precio_ProductoPublicacion, publicacion.Estado_Publicacion,
                publicacion.Stock_ProductoPublicacion);
         
            DB.SubmitChanges();
        }
        public List<dataBase.ListaPublicacionesResult> ListaPublicaciones()
        {
            return DB.ListaPublicaciones().ToList();
        }
    }
}