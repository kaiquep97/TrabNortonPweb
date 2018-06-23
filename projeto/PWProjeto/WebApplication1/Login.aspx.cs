using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEntrar_Clicked(object sender,EventArgs e)
        {
            using (var dao = new DAO.UsuarioDAO())
            {
                var email = txtEmail.Text;
                var senha = txtSenha.Text;

                if(dao.GetUsuario(email, senha) is Usuario user)
                {
                    Session["cod_usuario"] = user.cod_usuario;
                    Session["nome"] = user.nome;
                    Response.Redirect("lista.aspx");
                }
                else
                {
                    Label1.Text = "Login e/ou senha incorretos!!";
                }

            }
        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {

        }
    }
}