using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class EncriptacionDeDatos
    {

        public string Encriptar(string cadena) 
        {
            string result = string.Empty;
            byte[] encritar = System.Text.Encoding.Unicode.GetBytes(cadena);
            result = Convert.ToBase64String(encritar);
            return result;
        }

        public string DesEncriptar(string cadena) 
        {
            string result = string.Empty;
            byte[] desencriptar = Convert.FromBase64String(cadena);
            result = System.Text.Encoding.Unicode.GetString(desencriptar);
            return result;
        }

    }
}