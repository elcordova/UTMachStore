using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class LNFoto
    {

        dataBase.DatosDataContext DB = new dataBase.DatosDataContext();

        public void insertarFoto(string nombre, string ruta)
        {
            try
            {
                DB.cp_insertarFoto(nombre, ruta);

                DB.SubmitChanges();
            }
            catch (Exception)
            {
            }

        }
    }
}