using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class LN_Ventas
    {
        dataBase.DatosDataContext BD = new dataBase.DatosDataContext();
        public void insertarVenta(Entidades.Ent_Venta venta)
        {

        }
        public List<dataBase.buscarDatosdeVendedorResult> buscarDatosVenta(int cod_pub)
        {
            return BD.buscarDatosdeVendedor(cod_pub).ToList();
        }
        public List<dataBase.buscarFormasPagoResult> cargarFormasPago(int cod_pub)
        {
            return BD.buscarFormasPago(cod_pub).ToList();
        }
        public List<dataBase.buscarFormasEnvioResult> cargarFormasEnvio(int cod_pub)
        {
            return BD.buscarFormasEnvio(cod_pub).ToList();
        }
    }
}