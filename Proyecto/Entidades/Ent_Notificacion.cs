using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Entidades
{
    public class Ent_Notificacion
    {
        private int cod_Plubicacion;
        private string ruta;
        private string cod_usuario;
        private int cod_comentario;


        public Ent_Notificacion() 
        {
            cod_Plubicacion = 0;
            ruta = "";
            cod_usuario = "";
            cod_comentario = 0;
        }

        public Ent_Notificacion(int codigoPublicacion, string rutaPublic, string codigoUsuario, int codigoComentario)
        {
            cod_Plubicacion = codigoPublicacion;
            ruta = rutaPublic;
            cod_usuario = codigoUsuario;
            cod_comentario = codigoComentario;
        }

        public int Codigo_Publicacion
        {
            get { return cod_Plubicacion; }
            set { cod_Plubicacion = value; }
        }

        public string Ruta_Publicacion
        {
            get { return ruta; }
            set { ruta = value; }
        }
        public string Codigo_Usuario
        {
            get { return cod_usuario; }
            set { cod_usuario = value; }
        }
        public int Codigo_Comentario
        {
            get { return cod_comentario; }
            set { cod_comentario = value; }
        }
       
    }
}