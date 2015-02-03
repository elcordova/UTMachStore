using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class LN_Notificacion
    {
        dataBase.DatosDataContext DB = new dataBase.DatosDataContext();


        public void insertarNotificacion(Entidades.Ent_Notificacion notificacion)
        {
        //    DB.cp_insertarnotificacion(notificacion.Codigo_Publicacion, notificacion.Ruta_Publicacion, notificacion.Codigo_Usuario, notificacion.Codigo_Comentario);
         //   DB.SubmitChanges();
        }
         

        public List<dataBase.cp_listarNotificacionResult> listarNotificacion(int id)
        {
            return DB.cp_listarNotificacion(id).ToList();
        }
        public List<dataBase.Notificaciones> allNotificacion()
        {
            return DB.Notificaciones.ToList();
        }

    }
}