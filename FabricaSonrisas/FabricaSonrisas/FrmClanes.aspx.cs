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
    public partial class FrmClanes : System.Web.UI.Page
    {
        int mod, id;
        bool est;
        Clan cl = new Clan();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["nuevo"].ToString() == "-1")
                {
                    //mod = 1;
                    ButtonAceptar.Visible = true;
                    ButtonModif.Visible = false;
                    CheckBox1.Checked = true;
                    CheckBox1.Enabled = false;
                }
                else
                {
                    //mod = 2;//modificar y eliminar
                    DataTable res = new DataTable();
                    id = Convert.ToInt32(Session["nuevo"].ToString());
                    res = cl.listaPorId(id);
                    ButtonAceptar.Visible = false;
                    ButtonModif.Visible = true;
                    CheckBox1.Enabled = true;

                    if (res != null)
                    {
                        id = Convert.ToInt32(res.Rows[0][0].ToString());
                        TextNombre.Text = res.Rows[0][1].ToString();
                        ListaDias.SelectedValue = res.Rows[0][3].ToString();
                        ListaHora.SelectedValue = res.Rows[0][4].ToString();

                        if (Convert.ToBoolean(res.Rows[0][5].ToString()) == true)
                            CheckBox1.Checked = true;
                        else
                            CheckBox1.Checked = false;
                    }
                    else
                        Response.Write("<script language='JavaScript'>window.alert('Ha ocurrido un error, no se encuentra el id.');</script>");
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Clan cl = new Clan();
            DataTable msj = new DataTable();
            string nombre = TextNombre.Text.ToString(); 

            if ((nombre != "") && (ListaDias.SelectedValue.ToString() != "-") && (ListaHora.SelectedValue.ToString() != "-"))
            {
                if (CheckBox1.Checked == false)
                    est = false;
                else
                    est = true;
                
                if (Session["nuevo"].ToString()=="-1")
                {    
                    msj = cl.ingresar(TextNombre.Text, ListaDias.SelectedValue.ToString(), ListaHora.SelectedValue.ToString());
                    if (msj != null)
                    {
                        Response.Write("<script language='JavaScript'>window.alert('El Clan ha sido ingresado con exito.');</script>");
                        Session["nuevo"]="-1";
                    }
                    else
                        Response.Write("<script language='JavaScript'>window.alert('Ha ocurrido un error, intentalo mas tarde.');</script>");
                }
                else 
                { 
                    msj = cl.modificar( Convert.ToInt16(Session["nuevo"].ToString()), nombre, ListaDias.SelectedValue.ToString(), ListaHora.SelectedValue.ToString(), est);
                    if (msj != null)
                        Response.Write("<script language='JavaScript'>window.alert('El Clan ha sido ingresado con exito.');</script>");
                }
            }
            else
                Response.Write("<script language='JavaScript'>window.alert('Completa los campos por favor.');</script>");
        }

        protected void ButtonModificar(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("FrmListarClanes.aspx");
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
        }
    }
}