using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PWProjeto.Models
{
    public class Cliente
    {
        //Cliente {codigo, nome, email, telefone, cpf, endereço, ativo(radio sim ou não)
        public int cod_usuario { get; set; }
        public string nome { get; set; }
        public string email { get; set; }
        public string telefone { get; set; }
        public string cpf { get; set; }
        public string endereco { get; set; }
        public bool ativo { get; set; }
    }
}