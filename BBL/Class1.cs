using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using ObjetosDeNegocio;

namespace BBL
{
    public static class ComaEnJoeBLL
    {
        public static List<Cheffs> listCheff()
        {
            var res = new List<Cheffs>();
            res = ComaEnJoeDAL.listCheff();
            return res;
        }

        public static void InsertCheff(string apellido, string nombre, string tel, string especialidad)
        {
            Cheffs chef = new Cheffs()
            {
                Apellido = apellido,
                Nombre = nombre,
                Telefono = tel,
                Especialidad = especialidad,
            };

            ComaEnJoeDAL.InsertCheffs(chef);
        }

        public static Cheffs getChef(int id)
        {
            return ComaEnJoeDAL.getChef(id);
        }

        public static void deleteChef(int id)
        {
            DAL.ComaEnJoeDAL.DeleteCheffs(id);
        }
    }
}