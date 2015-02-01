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
        public List<dataBase.ListaPublicacionesResult> ListaPublicaciones(int codigo)
        {

            return DB.ListaPublicaciones(codigo).ToList();
        }
        public List<dataBase.extraerCodigoUsuarioResult> codigoUsuario(string nick)
        {
            return DB.extraerCodigoUsuario(nick).ToList();
        }
        public List<dataBase.extraerRutaFotoMisPublicacionesResult> rutaImagen(string codigoPubliacion)
        {
            return DB.extraerRutaFotoMisPublicaciones(codigoPubliacion).ToList();
        }
        public List<dataBase.TodasPublicacionesResult> TodasPublicaciones()
        {
            return DB.TodasPublicaciones().ToList();
        }
    }
}