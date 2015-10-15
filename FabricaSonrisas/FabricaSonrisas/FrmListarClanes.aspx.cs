
//data Source=localhost; Initial Catalog=dbfabrica; Persist Security Info= true; User ID=root; Password=database

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

namespace FabricaSonrisas.tblClan
{
    public partial class FrmListarClanes : System.Web.UI.Page
    {
        public int id_clan;

        protected void Page_Load(object sender, EventArgs e)
        {
            Clan c = new Clan();

            GridView1.DataSource = c.listarTodo();
            GridView1.DataBind();

            //encabezado
            GridView1.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //lista del boton que despliega
            GridView1.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            GridView1.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            GridView1.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            GridView1.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            GridView1.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";

            //mostrar
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;

            if (GridView1.DataSource == null)
                Label1.Text = "nulooooo!!!";
            else
                GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            //GridViewRow row = GridView1.SelectedRow;
            string ide_clan = GridView1.DataKeys[e.NewSelectedIndex].Value.ToString();
            Session["nuevo"] = ide_clan;
            Response.Redirect("FrmClanes.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Clan c = new Clan();

            GridView1.DataSource = c.listarTodo();
            GridView1.DataBind();
        }

        protected void ButtonActivos_Click(object sender, EventArgs e)
        {
            Clan c = new Clan();

            GridView1.DataSource = c.listarActivos();
            GridView1.DataBind();
        }

        protected void ButtonInactivos_Click(object sender, EventArgs e)
        {
            Clan c = new Clan();

            GridView1.DataSource = c.listarInactivos();
            GridView1.DataBind();
        }
    }
}