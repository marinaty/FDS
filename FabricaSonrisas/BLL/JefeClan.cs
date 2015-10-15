using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL.DStblJefeClanTableAdapters;

namespace BLL
{
    public class JefeClan
    {
        
        

        #region consultas
        public DataTable listarInactivos()
        {
            tblJefeClan2TableAdapter consultas = new tblJefeClan2TableAdapter();
            try
            {
                return consultas.Inactivos();
            }
            catch
            {
                return null;
            }
        }

        public DataTable listarActivos()
        {
            tblJefeClan2TableAdapter consultas = new tblJefeClan2TableAdapter();
            try
            {
                return consultas.listarActivos();
            }
            catch
            {
                return null;
            }
        }

        public DataTable listarPorClan(int id)
        {
            tblJefeClan2TableAdapter consultas = new tblJefeClan2TableAdapter();
            try
            {
                return consultas.listarPorClan(id);
            }
            catch
            {
                return null;
            }
        }

        #endregion

        #region mantenimiento
        public DataTable listarT()
        {
            tbljefeclanTableAdapter jefe = new tbljefeclanTableAdapter();
            try
            {
                return jefe.listarTodos();
            }
            catch
            {
                return null;
            }
        }

        public DataTable ingreso(int id_doc, int id_cl, DateTime fi)
        {
            tbljefeclanTableAdapter jefe = new tbljefeclanTableAdapter();
            try
            {
                return jefe.ingresar(id_doc, id_cl, fi);
            }
            catch
            {
                return null;
            }
        }

        public DataTable modificar(int id_jc, int id_doc, int id_c, DateTime fi, DateTime ff, bool e)
        {
            tbljefeclanTableAdapter jefe = new tbljefeclanTableAdapter();
            try
            {
                return jefe.modificar(id_jc, id_doc, id_c, fi, ff, e);
            }
            catch
            {
                return null;
            }
        }
        #endregion

        #region consulta miembros de clan
        public DataTable listarDocs(int id_c)
        {
            DoctorTableTableAdapter doc = new DoctorTableTableAdapter();
            try
            {
                return doc.listarDoctores(id_c);
            }
            catch
            {
                return null;
            }
        }
        #endregion
    }
}
