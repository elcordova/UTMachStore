using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class LNFoto
    {

        dataBase.DatosDataContext DB = new dataBase.DatosDataContext();

        public void insertarFoto(Entidades.Ent_Fotos fotos)
        {
            try
            {
               DB.cp_insertarFoto(fotos.Codigo_Publicacion,fotos.Nombre_Foto,fotos.Ruta_Foto);

                DB.SubmitChanges();
            }
            catch(Exception)
            {



                            }

                
        }

    }
}