using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.LogicaDeNegocio
{
    public class LNComentario
    {
        dataBase.DatosDataContext DB = new dataBase.DatosDataContext();

        public void insertarComentario(Entidades.Ent_Comentario comentario)
        {
            DB.cp_insertarComentario(comentario.Codigo_Usuario, comentario.Codigo_Publicacion, comentario.Comentario, comentario.Fecha);
            DB.SubmitChanges();
        }
      
        public List<dataBase.cp_listarComentarioResult> listarComentario(int codigo)
        {
            return DB.cp_listarComentario(codigo).ToList();
        }


        public List<dataBase.Comentarios> imagencomentatio()
        {
            return DB.Comentarios.ToList();
        }

        public List<dataBase.cp_numeroFinalComentarioResult> numeroComentarioFinal()
        {
            return DB.cp_numeroFinalComentario().ToList();
        }

        public int numeroComentario()
        {
            int id = 0;
            var sqlid = from camp in numeroComentarioFinal()

                        select new { id = camp.codigo_Com};

            foreach (var extraerid in sqlid)
            {
                id = (int)extraerid.id;
            }
            return id;
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