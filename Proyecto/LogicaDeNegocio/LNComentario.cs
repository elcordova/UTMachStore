using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class LNComentario
    {
        dataBase.DatosDataContext DB = new dataBase.DatosDataContext();

        public void insertarUsuario(Entidades.Ent_Comentario comentario)
        {
            DB.cp_insertarComentario(comentario.Codigo_Usuario, comentario.Codigo_Publicacion, comentario.Comentario, comentario.Fecha);
            DB.SubmitChanges();
        }
        public string obtenerCedula()
        {
            return"";
        }
        public List<dataBase.cp_listarComentarioResult> listarComentario(int codigo)
        {
            return DB.cp_listarComentario(codigo).ToList();
        }


        public List<dataBase.Comentarios> imagencomentatio()
        {
            return DB.Comentarios.ToList();
        }



        public String ContComentario(int codigo)
        {
            string pax = "";

            var sql = from lp in imagencomentatio()
                      where lp.codigo_Pub ==(int)codigo
                      group lp by lp.codigo_Pub == (int)codigo into c
                      select new { j = c.Count(p => p.codigo_Pub == (int)codigo) };

            foreach (var ex in sql)
            {
                pax = (ex.j).ToString();
            }
            return pax;
        }
    }
}