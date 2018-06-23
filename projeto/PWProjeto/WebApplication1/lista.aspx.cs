using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class lista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cod_usuario"] == null)
            {
                Response.Redirect("login.aspx");
            }

            Label1.Text = "OLÁ " + (string)Session["nome"];

            var dados = new DAO.ClienteDAO().GetClientes();
            GridView1.DataSource = dados;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnSair_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}