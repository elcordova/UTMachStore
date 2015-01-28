using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Entidades
{
    public class Ent_Notificacion
    {
        private string nombre_usu;
        private string nic_usu;
        private string direccion_usu;
        private string passwd_usu;
        private string email_usu;
        private bool estado_usu;
        private string cedula_usu;

        public Ent_Notificacion() 
        {
            nombre_usu = "";
            nic_usu = "";
            direccion_usu = "";
            passwd_usu = "";
            email_usu = "";
            estado_usu = false;
            cedula_usu = "";
        }

        public Ent_Notificacion(string nombre, string nic, string direccion, string passwd, string email, bool estado, string cedula)
        {
            nombre_usu = nombre;
            nic_usu = nic;
            direccion_usu = direccion;
            passwd_usu = passwd;
            email_usu = email;
            estado_usu = estado;
            cedula_usu = cedula;
        }

        public string Nombre_usu
        {
            get { return nombre_usu; }
            set { nombre_usu = value; }
        }

        public string Nic_usu
        {
            get { return nic_usu; }
            set { nic_usu = value; }
        }
        public string Direccion_usu
        {
            get { return direccion_usu; }
            set { direccion_usu = value; }
        }
        public string Passwd_usu
        {
            get { return passwd_usu; }
            set { passwd_usu = value; }
        }
        public string Email_usu
        {
            get { return email_usu; }
            set { email_usu = value; }
        }
        public bool Estado_usu
        {
            get { return estado_usu; }
            set { estado_usu = value; }
        }
        public string Cedula_usu
        {
            get { return cedula_usu; }
            set { cedula_usu = value; }
        }
    }
}