using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Entidades
{
    public class Ent_Comentario
    {  private string Codigo_Usu;
        private int Codigo_Pub;
        private string Contenido_Com;
        private string Fecha_com;
        

        public Ent_Comentario() 
        {
            Codigo_Usu = "";
            Codigo_Pub = 0;
            Contenido_Com = "";
            Fecha_com = "";
           
        }

        public Ent_Comentario(string codigoUsu, int codigoPub, string contenido,string fecha)
        {
            Codigo_Usu = codigoUsu;
            Codigo_Pub = codigoPub;
            Contenido_Com = contenido;
            Fecha_com = fecha;
          
        }

       
    }
}