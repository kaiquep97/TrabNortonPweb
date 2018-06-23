using PWProjeto.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PWProjeto.DAO
{
    public class UsuarioDAO
    {
        private Contexto connection;

        public UsuarioDAO()
        {
            this.connection = new Contexto();
        }

        public Usuario GetUsuario(int id)
        {
            return connection.Usuarios
                .Where(x => x.cod_usuario == id)
                .FirstOrDefault();            
        }

        public Usuario GetUsuario(string email, string senha) {
            return connection.Usuarios
                .Where(x => x.email.Equals(email) && x.senha.Equals(senha))
                .FirstOrDefault();
        }
    }
}