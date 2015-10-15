using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

namespace FabricaSonrisas
{
    public partial class FrmJefeClan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable datos = new DataTable();
                Clan cl = new Clan();
                datos = cl.listarActivos();

                if (datos != null)
                {
                    ListaClan.DataSource = datos;
                    ListaClan.DataValueField = "id_clan";
                    ListaClan.DataTextField = "nombre";
                    ListaClan.DataBind();
                    Session["postback"] = 1; 
                }
                else
                    Response.Write("<script language='JavaScript'>window.alert('Error al cargar los datos de Clan.');</script>");
            }
            else
            {
                //ListaClan_SelectedIndexChanged(sender, e);
            }
        }

        protected void ButtonAceptar_Click(object sender, EventArgs e)
        {
            JefeClan jc = new JefeClan();
            DataTable d = new DataTable();

            if ((ListaClan.SelectedItem.ToString() != "") && (ListaDoctor.SelectedItem.Value.ToString() != ""))
            {
                int id_doc = Convert.ToInt32(ListaDoctor.SelectedItem.Value.ToString());
                int id_cl = Convert.ToInt32(ListaClan.SelectedItem.Value.ToString());
                String fi = "";//2015-12-21
                fi = System.DateTime.Now.Year.ToString()+ "-"+System.DateTime.Now.Month.ToString()+"-"+System.DateTime.Now.Day.ToString();

                d = jc.ingreso(id_doc, id_cl, Convert.ToDateTime(fi));

                if (d != null)
                {
                    Response.Write("<script language='JavaScript'>window.alert('Datos ingresados correctamente');</script>");
                }
                else 
                {
                    Response.Write("<script language='JavaScript'>window.alert('Ha ocurrido un error.');</script>");
                }
            }
            else
                Response.Write("<script language='JavaScript'>window.alert('Completa los campos por favor.');</script>");
        }

        protected void ListaDoctor_SelectedIndexChanged(object sender, EventArgs e)
        {        }

        protected void ListaClan_SelectedIndexChanged(object sender, EventArgs e)
        {
            JefeClan jc = new JefeClan();
            DataTable d = new DataTable();
            string s = ListaClan.SelectedValue.ToString();
            int id = Convert.ToInt32(ListaClan.SelectedValue.ToString());
            
            d = jc.listarDocs(id);

            if (d != null)
            {
                if (d.Rows.Count > 0)
                {
                    ListaDoctor.DataSource = d;
                    ListaDoctor.DataValueField = "id_doctor";
                    ListaDoctor.DataTextField = "apodo";
                    ListaDoctor.DataBind();
                }
                else
                    Response.Write("<script language='JavaScript'>window.alert('Este clan no tiene Doctores asignados.');</script>");
            }
            else
                Response.Write("<script language='JavaScript'>window.alert('Error buscar a doctores.');</script>");
        }
    }
}