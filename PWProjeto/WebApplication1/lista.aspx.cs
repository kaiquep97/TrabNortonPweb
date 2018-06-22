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
            var dados = new DAO.ClienteDAO().GetClientes();
            GridView1.DataSource = dados;
            GridView1.DataBind();
        }
    }
}