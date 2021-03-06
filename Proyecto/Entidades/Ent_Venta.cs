﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Entidades
{
    public class Ent_Venta
    {
        private string codigo_usu;
        private int codigo_pub;
        private DateTime fecha_nego;
        private int cod_tipo_envio;
        private int cod_tipo_pago;
        private int cantidad;

        public Ent_Venta()
        {
            codigo_pub = 0;
            codigo_usu = "";
            fecha_nego=Convert.ToDateTime("01/01/0001");
            cod_tipo_envio = 0;
            cod_tipo_pago = 0;
            cantidad = 0;
        }
        public Ent_Venta(int cod_publica, string cod_usuario, string fecha,
            int tipo_envio, int tipo_pago, int cant)
        {
            codigo_pub = cod_publica;
            codigo_usu = cod_usuario;
            fecha_nego = Convert.ToDateTime(fecha);
            cod_tipo_pago = tipo_pago;
            cod_tipo_envio = tipo_envio;
            cantidad = cant;
        }

        public int codigo_publicacion
        {
             get { return codigo_pub; }
            set { codigo_pub= value; }
        }
        public string codigo_usuario
        {
            get { return codigo_usu;}
            set { codigo_usu = value;}
        }
        public DateTime fecha_negociacion
        {
            get { return fecha_nego;}
            set { fecha_nego = value; }
        }
        public int codigo_pago
        {
            get { return cod_tipo_pago;}
            set { cod_tipo_pago = value; }
        }
        public int codigo_envio
        {
            get { return cod_tipo_envio;}
            set { cod_tipo_envio = value; }
        }
        public int cantidad_pub
        {
            get { return cantidad; }
            set { cantidad = value; }
        }


    }
}