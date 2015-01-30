using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Entidades
{
    public class Ent_Fotos
    {
         
      
        private int Codigo_Pub;
        private string Nombre;
        private string Ruta;
        

        public Ent_Fotos() 
        {
            Codigo_Pub = 0;
            Nombre = "";
            Ruta = "";
           
        }
        public Ent_Fotos(int codigoPub, string nombre, string ruta)
        {
            Codigo_Pub = codigoPub;
            Nombre = nombre;
            Ruta = ruta;
        }
     
        public int Codigo_Publicacion
        {
            get { return Codigo_Pub; }
            set { Codigo_Pub = value; }
        }

        public string Nombre_Foto
        {
            get { return Nombre; }
            set { Nombre = value; }
        }


        public string Ruta_Foto
        {
            get { return Ruta; }
            set { Ruta = value; }
        }
       
    }
}