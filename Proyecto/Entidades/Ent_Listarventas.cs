﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Entidades
{
    public class Ent_Listarventas
    {
         public int codigo_Usu;        

        public Ent_Listarventas()
        {
            codigo_Usu = 0;     
        }

        public Ent_Listarventas(int idusuario)
        {
          
            codigo_Usu = idusuario;

        }
        
        public int Codigo_usuario
        {
            get { return codigo_Usu; }
            set { codigo_Usu = value; }
        }
    }
}