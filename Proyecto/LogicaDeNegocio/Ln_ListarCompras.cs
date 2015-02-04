using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class Ln_ListarCompras
    {
        dataBase.DatosDataContext DB = new dataBase.DatosDataContext();

        public List<dataBase.listar_ComprasResult> ListarComprasTable(int idusuario)
        {
            return DB.listar_Compras(idusuario).ToList();
        
        }

    }
}