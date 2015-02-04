using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Entidades
{
    public class Ent_Notificacion
    {
        private int cod_Plubicacion;
        private int codigo_Usu_Pub;
        private int cod_usuario;
        private int cod_comentario;


        public Ent_Notificacion()
        {
            cod_Plubicacion = 0;
            codigo_Usu_Pub = 0;
            cod_usuario = 0;
            cod_comentario = 0;
        }

        public Ent_Notificacion(int codigoPublicacion, int codigousupub, int codigoUsuario, int codigoComentario)
        {
            cod_Plubicacion = codigoPublicacion;
            codigo_Usu_Pub = codigousupub;
            cod_usuario = codigoUsuario;
            cod_comentario = codigoComentario;
        }

        public int Codigo_Publicacion
        {
            get { return cod_Plubicacion; }
            set { cod_Plubicacion = value; }
        }

        public int Codigo_Usu_Pub
        {
            get { return codigo_Usu_Pub; }
            set { codigo_Usu_Pub = value; }
        }
        public int Codigo_Usuario
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