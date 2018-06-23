using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                InputCodigo.Text = Request["cod_cliente"];
                BtnPesquisar_Click(null, null);
            }
        }

        protected void InputNome_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnPesquisar_Click(object sender, EventArgs e)
        {
            try
            {
                using (var dao = new DAO.ClienteDAO())
                {
                    var codigo = Convert.ToInt32(InputCodigo.Text);
                    if (dao.GetCliente(codigo) is Models.Cliente cli)
                    {
                        InputNome.Text = cli.nome;
                        InputCpf.Text = cli.cpf;
                        InputEmail2.Text = cli.email;
                        InputTel.Text = cli.telefone;
                        opS.Checked = cli.ativo;
                        opsN.Checked = !cli.ativo;
                        InputEndereco.Text = cli.endereco;

                    }
                }
            }
            catch (Exception)
            {
                
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                using (var dao = new DAO.ClienteDAO())
                {
                    var cli = CarregarCliente();

                    dao.Insert(cli);
                }
                BtnVoltar_Click(null, null);

            }
            catch (Exception ex)
            {

                Label1.Text = ex.Message;
            }
        }

        private Cliente CarregarCliente()
        {
            return new Models.Cliente
            {
                nome = InputNome.Text,
                cpf = InputCpf.Text,
                email = InputEmail2.Text,
                endereco = InputEndereco.Text,
                telefone = InputTel.Text,
                ativo = opS.Checked
            };
        }

        protected void BtnAlterar_Click(object sender, EventArgs e)
        {
            try
            {
                var cli = CarregarCliente();
                cli.cod_cliente = Convert.ToInt32(InputCodigo.Text);

                using (var dao = new DAO.ClienteDAO())
                {
                    dao.Update(cli);
                }
                BtnVoltar_Click(null, null);
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void BtnExcluir_Click(object sender, EventArgs e)
        {
            try
            {
                var cod = Convert.ToInt32(InputCodigo.Text);

                using (var dao = new DAO.ClienteDAO())
                {
                    dao.Delete(cod);
                }
                BtnVoltar_Click(null, null);
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void BtnSair_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void BtnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("lista.aspx");
        }
    }
}