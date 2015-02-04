using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class Ln_ListarVentas
    {
        dataBase.DatosDataContext DB = new dataBase.DatosDataContext();

        public List<dataBase.listar_VentasResult> ListarVentasTable(int idusuario)
        {
            return DB.listar_Ventas(idusuario).ToList();
        }
    }
}