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

        protected void BtnEsqueci_Click(object sender, EventArgs e)
        {

            if (txtEmail.Text is string em)
            {
                try
                {
                    using (var dao = new DAO.UsuarioDAO())
                    {
                        var user = dao.GetUsuario(em);

                        if (user == null)
                        {
                            Label1.Text = "Email Não encontrado";
                            return;
                        }

                        var email = new Util.Email();
                        if (email.EnviaEmail("SENHA", $"Sua Senha é {user.senha}", em))
                            Label1.Text = "EMAIL ENVIADO COM SUCESSO!";
                    }
                }
                catch (Exception err)
                {
                    Label1.Text = $"ERRO: {err.Message}";
                }


            }
        }
    }
}