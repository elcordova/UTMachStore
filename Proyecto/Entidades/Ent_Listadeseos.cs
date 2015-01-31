using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Entidades
{
    public class Ent_Listadeseos
    {
        public int codigo_Usu;
        public int codigo_Pub;

        public Ent_Listadeseos()
        {

            codigo_Usu = 0;
            codigo_Pub = 0;
        
        }

        public Ent_Listadeseos(int codusu, int codpub)
        {
          
            codigo_Usu = codusu;
            codigo_Pub = codpub;
           
          


        }
        public int Codigo_publicacion
        {
            get { return codigo_Pub; }
            set { codigo_Pub = value; }
        }

        public int Codigo_usuario
        {
            get { return codigo_Usu; }
            set { codigo_Usu = value; }
        }


    }
}