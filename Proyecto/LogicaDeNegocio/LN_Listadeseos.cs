using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class LN_Listadeseos
    {
        dataBase.DatosDataContext DB = new dataBase.DatosDataContext();

        public void insertardeseo(Entidades.Ent_Listadeseos listadeseos)
        {

            DB.cp_insertardeseooriginal(listadeseos.Codigo_usuario, listadeseos.Codigo_publicacion);
            DB.SubmitChanges();
        }


        public void eliminardeseo(int codigo)
        {
            DB.cp_eliminardeseo(codigo);
            DB.SubmitChanges();
        }


        //METODO PARA LISTAR CON FILTRO 
        public List<dataBase.cp_listardeseosFiltroResult> listardeseoFiltro(int val)
        {
            return DB.cp_listardeseosFiltro(val).ToList();

        }

        public List<dataBase.cp_ListarusuariofiltroResult> listarusuario(string val)
        {
            return DB.cp_Listarusuariofiltro(val).ToList();

        }
        public List<dataBase.extraerCodigoUsuarioResult> codigoUsuario(string nick)
        {
            return DB.extraerCodigoUsuario(nick).ToList();
        }
        public int contar(int val1, int val2)
        {
           
            List<dataBase.cp_listarproductonotificacionResult> li = DB.cp_listarproductonotificacion(val1,val2).ToList();
            int num = li.Count();
            return num;
        }
    }
}