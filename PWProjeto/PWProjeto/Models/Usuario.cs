using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PWProjeto.Models
{
    public class Usuario
    {
        //usuario{codigo int, nome varchar(50), email varchar(100) senha varchar(20)); 
        public int cod_usuario { get; set; }
        public string nome { get; set; }
        public string email { get; set; }
        public string senha { get; set; }
    }
}