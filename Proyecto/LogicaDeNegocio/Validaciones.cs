using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Windows.Forms;

namespace Proyecto.LogicaDeNegocio
{
    public class Validaciones
    {
        //clase  de Verification de Ingreso de valores numericos
        /**************************************************************/
        public void numerosReales(KeyPressEventArgs e)
        {
            if ((e.KeyChar < 48 || e.KeyChar > 58) && (e.KeyChar != 44))
                if (e.KeyChar != 13 && e.KeyChar != 8 && e.KeyChar != 46)
                {
                    e.Handled = true;
                    return;
                }

        }
        
        //clase  de Verification de Ingreso de valores numericos
        /**************************************************************/
        public void numeros(KeyPressEventArgs e)
        {
            if (e.KeyChar < 48 || e.KeyChar > 58)
                if (e.KeyChar != 13 && e.KeyChar != 8)
                {
                    e.Handled = true;
                    return;
                }

        }

        //clase  de Verification de Ingreso de letras
        /**************************************************************/
        public void Letras(KeyPressEventArgs e)
        {
            if (e.KeyChar < 65 || e.KeyChar > 90)
                if (e.KeyChar != 13 && e.KeyChar != 8 && e.KeyChar != 32)
                    if (!char.IsLetter(e.KeyChar))
                    {
                        e.Handled = true;
                        return;
                    }
        }


        public void Enter(KeyPressEventArgs e, TextBox txtcuadro)
        {
            if (e.KeyChar == 13)
                txtcuadro.Focus();
        }

        public bool esCedulaValida(String cedula)
        {
            
            //verifica que tenga 10 dígitos 
            if (!(cedula.Length == 10))
            {
                return false;
            }
            //verifica que los dos primeros dígitos correspondan a un valor entre 1 y NUMERO_DE_PROVINCIAS
            int prov = int.Parse(cedula.Substring(0, 2));
            if (!((prov > 0) && (prov <= 24)))
            {
                return false;
            }
            //verifica que el último dígito de la cédula sea válido
            int[] d = new int[10];
            //Asignamos el string a un array
            for (int i = 0; i < d.Length; i++)
            {
                d[i] = int.Parse(cedula.Substring(i, 1) + "");
            }
            int imp = 0;
            int par = 0;
            //sumamos los duplos de posición impar
            for (int i = 0; i < d.Length; i += 2)
            {
                d[i] = ((d[i] * 2) > 9) ? ((d[i] * 2) - 9) : (d[i] * 2);
                imp += d[i];
            }
            //sumamos los digitos de posición par
            for (int i = 1; i < (d.Length - 1); i += 2)
            {
                par += d[i];
            }
            //Sumamos los dos resultados
            int suma = imp + par;
            //Restamos de la decena superior
            int d10 = int.Parse(Convert.ToString(suma + 10).Substring(0, 1) + "0") - suma;
            //Si es diez el décimo dígito es cero        
            d10 = (d10 == 10) ? 0 : d10;
            //si el décimo dígito calculado es igual al digitado la cédula es correcta
            MessageBox.Show("cedula no valida registrada " + d10);
            return d10 == d[9];}
            
    }
}