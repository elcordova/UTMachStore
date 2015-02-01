using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class LN_Usuario
    {
        dataBase.DatosDataContext DB = new dataBase.DatosDataContext();

        public void insertarUsuario(Entidades.Ent_Usuario usuario) 
        {
            DB.insertarUsuario(usuario.Nombre_usu, usuario.Nic_usu, usuario.Direccion_usu,
                usuario.Passwd_usu, usuario.Email_usu, usuario.Estado_usu, usuario.Cedula_usu);
            DB.SubmitChanges();
        }

        public void actualizarUsuario(Entidades.Ent_Usuario usuario, string cedula) 
        {
            DB.actualizarUsuario(usuario.Nombre_usu, usuario.Nic_usu, usuario.Direccion_usu,
                usuario.Passwd_usu, usuario.Email_usu, usuario.Estado_usu, cedula);
            DB.SubmitChanges();
        }

        public void eliminarUsuario(string cedula) 
        {
            DB.eliminarUsuario(cedula);
            DB.SubmitChanges();
        }

        public List<dataBase.buscarNicknameResult> buscarNick(string nick)
        {
            return DB.buscarNickname(nick).ToList();
        }

        public void validarCuenta(string nickUsu) 
        {
            DB.validarCuenta(nickUsu);
            DB.SubmitChanges();
        }

        public List<dataBase.buscarCedulaResult> buscarCedula(string ced)
        {
            return DB.buscarCedula(ced).ToList();
        }

        public List<dataBase.buscarCorreoResult> buscarCorreo(string correo)
        {
            return DB.buscarCorreo(correo).ToList();
        }

        public List<dataBase.Usuario> allUsuario()
        {
            return DB.Usuario.ToList();
        }
        

         public int idUsuario(string nick)
        {
            int id=0;
            var sql = from camp in allUsuario()
                      where camp.nic_Usu == nick
                      select new { id = camp.codigo_Usu };
            foreach (var extraer in sql)
            {
                id = (int)extraer.id;
            }
            return id;
        }
    }
}