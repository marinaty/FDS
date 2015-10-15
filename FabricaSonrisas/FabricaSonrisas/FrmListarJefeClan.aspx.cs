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
    public partial class FrmListarJefeClan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable datos = new DataTable();
                Clan cl = new Clan();
                datos = cl.listarActivos();

                JefeClan jc = new JefeClan();
                //Grid.DataSource = jc.listarT();
                //Grid.DataBind();
                Grid.DataSource = jc.listarPorClan(1);
                Grid.DataBind();

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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            JefeClan jc = new JefeClan();
            Grid.DataSource = jc.listarT();
            Grid.DataBind();
        }

        protected void ListaClan_SelectedIndexChanged(object sender, EventArgs e)
        {
            Grid.DataSource = null;

            JefeClan jc = new JefeClan();
            DataTable d = new DataTable();
            string s = ListaClan.SelectedValue.ToString();
            int id = Convert.ToInt32(ListaClan.SelectedValue.ToString());

            Grid.DataSource = jc.listarPorClan(id);
            Grid.DataBind();
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            JefeClan jc = new JefeClan();
            Grid.DataSource = jc.listarActivos();
            Grid.DataBind();
        }
    }
}