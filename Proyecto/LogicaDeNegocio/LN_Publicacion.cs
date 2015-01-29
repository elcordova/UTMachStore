using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class LN_Publicacion
    {
        dataBase.DatosDataContext DB = new dataBase.DatosDataContext();

        public void insertarUsuario(Entidades.Ent_Usuario usuario)
        {
            DB.insertarPublicacion(
            DB.SubmitChanges();
        }
    }
}