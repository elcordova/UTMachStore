﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class LN_Ventas
    {
        dataBase.DatosDataContext BD = new dataBase.DatosDataContext();
       
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
        public void guardarVenta(Entidades.Ent_Venta nuevaVenta)
        {
            BD.actualizar_Stock(nuevaVenta.cantidad_pub,nuevaVenta.codigo_publicacion);
            BD.insertarNegociacion(nuevaVenta.codigo_pago+"", nuevaVenta.codigo_envio+"",
                nuevaVenta.codigo_publicacion);
            BD.SubmitChanges();
            BD.insertarUsuarioNegociacion(nuevaVenta.fecha_negociacion, int.Parse(nuevaVenta.codigo_usuario.ToString()));
            BD.SubmitChanges();
           // BD.Refresh(0,0);

        }
    }
}