using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Entidades
{
    public class Ent_Listadeseos
    {
        private int codigo_Usu;
        private int codigo_Pub;
        private int codigo_Lisdes;

        public Ent_Listadeseos()
        {

            codigo_Usu = 0;
            codigo_Pub = 0;
            codigo_Lisdes = 0;

        }

        public Ent_Listadeseos(int codusu, int codpub, int listdes)
        {
            codigo_Usu = codusu;
            codigo_Pub = codpub;
            codigo_Lisdes = listdes;


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

        public int Codigo_Listadeseo
        {
            get { return codigo_Lisdes; }
            set { codigo_Lisdes = value; }
        }
    }
}