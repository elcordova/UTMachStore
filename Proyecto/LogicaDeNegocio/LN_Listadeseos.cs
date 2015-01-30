﻿using System;
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
            DB.cp_insertardeseo(listadeseos.Codigo_Listadeseo, listadeseos.Codigo_usuario, listadeseos.Codigo_publicacion);
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
    }
}