using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Entidades
{
    public class Ent_Comentario
    {
        private int Codigo_Usu;
        private int Codigo_Pub;
        private string Contenido_Com;
        private string Fecha_com;


        public Ent_Comentario()
        {

            Codigo_Usu = 0;
            Codigo_Pub = 0;
            Contenido_Com = "";
            Fecha_com = "";

        }

        public Ent_Comentario(int codigoUsu, int codigoPub, string contenido, string fecha)
        {
            Codigo_Usu = codigoUsu;
            Codigo_Pub = codigoPub;
            Contenido_Com = contenido;
            Fecha_com = fecha;

        }

        public int Codigo_Usuario
        {
            get { return Codigo_Usu; }
            set { Codigo_Usu = value; }
        }
        public int Codigo_Publicacion
        {
            get { return Codigo_Pub; }
            set { Codigo_Pub = value; }
        }

        public string Comentario
        {
            get { return Contenido_Com; }
            set { Contenido_Com = value; }
        }


        public string Fecha
        {
            get { return Fecha_com; }
            set { Fecha_com = value; }
        }
    }
}