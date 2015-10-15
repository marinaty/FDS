using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL.DStblClanTableAdapters;

namespace BLL
{
    public class Clan
    {
        tblclanTableAdapter Cl = new tblclanTableAdapter();

        #region listas/consultas
        public DataTable listarActivos()
        {
            try
            {
                return Cl.Activos();
            }
            catch
            {
                return null;
            }
        }

        public DataTable listarInactivos()
        {
            try
            {
                return Cl.Inactivos();
            }
            catch
            {
                return null;
            }
        }

        public DataTable listaPorId(int id)
        {
            try
            {
                return Cl.listarPorIde(id);
            }
            catch
            {
                return null;
            }
        }
        #endregion

        #region mantenimientos
        public DataTable ingresar(string nom, string d, string h)
        {
            try
            {
                String fechai = System.DateTime.Now.ToString();
                return Cl.Ingreso(nom, fechai, d, h);
            }
            catch
            {
                return null;
            }
        }

        public DataTable modificar(int id_c, string nom, string d, string h, bool est)
        {
            try
            {
                return Cl.modificar(id_c, nom, "", d, h, est); //no actualiza fecha inicial, no se considera necesario.
            }
            catch
            {
                return null;
            }
        }

        public DataTable listarTodo()
        {
            try
            {
                return Cl.ListarTodos();
            }
            catch
            {
                return null;
            }
        }
        #endregion
    }
}
