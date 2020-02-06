using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ObjetosDeNegocio;

namespace DAL
{
    public static class ComaEnJoeDAL
    {
        public static void InsertCheffs(Cheffs chef)
        {
            using (var db = new ComaEnJoeDBEntities())
            {
                db.Cheffs.Add(chef);

                db.SaveChanges();
            }
        }


        public static List<Cheffs> listCheff()
        {
            var listaCheffs = new List<Cheffs>();
            using (var db = new ComaEnJoeDBEntities())
            {
                listaCheffs = db.Cheffs.ToList();
            }

            return listaCheffs;
        }

        public static List<Cheffs> listCheff(int pagina, int cantItems)
        {
            var listaCheff = new List<Cheffs>();
            using (var db = new ComaEnJoeDBEntities())
            {
                listaCheff = db.Cheffs.OrderBy(x => x.Apellido).Skip(pagina * cantItems).Take(cantItems).ToList();
            }

            return listaCheff;
        }

        public static Cheffs getChef(int id)
        {
            Cheffs chef = null;
            using (var db = new ComaEnJoeDBEntities()) {
                chef = db.Cheffs.Find(id);
            }
            return chef;
        }

        public static void DeleteCheffs(int id)
        {
            using (var db = new ComaEnJoeDBEntities())
            {
                var chef = db.Cheffs.Find(id);
                if (chef != null)
                {
                    db.Cheffs.Remove(chef);
                }

                db.SaveChanges();
            }
        }
    }
}