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
        public void insertarFormaPago(int codigoPub, int codigoPago)
        {
            DB.ingresarFormaPago(codigoPub, codigoPago);   
            DB.SubmitChanges();
        }
        public void editarPublicaciones(Entidades.Ent_Publicaciones publicacion, int codigoPublicacion)
        {
            DB.editarPublicaciones(codigoPublicacion, publicacion.Codigo_Categoria, publicacion.Nombre_Publicacion, publicacion.Datos_Publicacion,
                publicacion.Numero_ContactoPublicacion, publicacion.Precio_ProductoPublicacion, publicacion.Stock_ProductoPublicacion);

            DB.SubmitChanges();
        }

        public void eliminarPublicacion(int codigoPublicacion)
        {
            DB.eliminarPublicacion(codigoPublicacion);

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
        public List<dataBase.datosPublicacionEditarResult> datosPublicacion(int codigoPublicacion)
        {
            return DB.datosPublicacionEditar(codigoPublicacion).ToList();
        }
        public List<dataBase.ListaFotosPublicacionResult>fotosPublicacion(int codigoPublicacion)
        {
            return DB.ListaFotosPublicacion(codigoPublicacion).ToList();
        }
    }
}