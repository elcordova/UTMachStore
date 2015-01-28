using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class LNFoto
    {

        dataBase.DatosDataContext DB = new dataBase.DatosDataContext();

        public void insertarFoto(Entidades.Ent_Fotos Fotos)
        {
            try
            {
               // DB.insertarUsuario(usuario.Nombre_usu, usuario.Nic_usu, usuario.Direccion_usu, usuario.Passwd_usu, usuario.Email_usu, usuario.Estado_usu, usuario.Cedula_usu);

                DB.SubmitChanges();
            }
            catch(Exception)
            {
            }

                
        }

    }
}