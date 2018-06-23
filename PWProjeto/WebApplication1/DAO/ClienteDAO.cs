using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication1.Models;

namespace WebApplication1.DAO
{
    public class ClienteDAO
    {
        private Contexto connection;

        public ClienteDAO()
        {
            this.connection = new Contexto();
        }

        public void Insert(Cliente cliente)
        {
            connection.Clientes.Add(cliente);
            connection.SaveChanges();
        }
        public void Update(Cliente cliente)
        {
            //se o retorno da função for do tipo Cliente (e não nula) joga na variavel c)
            if (GetCliente(cliente.cod_cliente) is Cliente c)
            {
                c.nome = cliente.nome;
                c.email = cliente.email;
                c.endereco = cliente.endereco;
                c.cpf = cliente.cpf;
                c.telefone = cliente.telefone;
                c.ativo = cliente.ativo;
            }
            connection.SaveChanges();
        }
        public void Delete(Cliente cliente)
        {
            connection.Clientes.Remove(cliente);
            connection.SaveChanges();
        }
        public Cliente GetCliente(int id)
        {
            return connection.Clientes
                .Where(x => x.cod_cliente == id)
                .FirstOrDefault();
        }
        public List<Cliente> GetClientes()
        {
            return connection.Clientes.ToList();
        }
    }
}