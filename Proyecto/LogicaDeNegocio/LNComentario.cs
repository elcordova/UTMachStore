using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class LNComentario
    {
        dataBase.DatosDataContext DB = new dataBase.DatosDataContext();

        public void insertarUsuario(Entidades.Ent_Comentario comentario)
        {
            DB.cp_insertarComentario(comentario.Codigo_Usuario, comentario.Codigo_Publicacion, comentario.Comentario, comentario.Fecha);

            DB.SubmitChanges();
        }
    }
}