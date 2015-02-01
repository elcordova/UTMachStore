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
        public void ActualizarFoto(Entidades.Ent_Fotos foto, int codigo)
        {
            try
            {
                DB.cp_actualizarFoto(codigo, foto.Codigo_Publicacion, foto.Nombre_Foto, foto.Ruta_Foto);

                DB.SubmitChanges();
            }
            catch (Exception)
            {
            }
        }
        public List<dataBase.cp_listarFotoResult> listarFotos()
        {
            return DB.cp_listarFoto().ToList();
        }

        public List<dataBase.cp_numeroFinalPublicacionResult> numeroPublicacionFinal()
        {
            return DB.cp_numeroFinalPublicacion().ToList();
        }
    }
}