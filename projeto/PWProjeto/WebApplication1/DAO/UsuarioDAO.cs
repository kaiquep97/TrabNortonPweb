using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication1.Models;

namespace WebApplication1.DAO
{
    public class UsuarioDAO:IDisposable
    {
        private Contexto connection;

        public UsuarioDAO()
        {
            this.connection = new Contexto();
        }

        public void Dispose()
        {
            connection.Dispose();
        }

        public Usuario GetUsuario(string email,string senha)
        {
            return connection.Usuarios
                .Where(x => x.email.Equals(email) && x.senha.Equals(senha))
                .FirstOrDefault();
        }
    }
}