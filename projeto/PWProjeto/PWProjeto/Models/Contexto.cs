using System;
using System.Collections.Generic;
using MySql.Data.Entity;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace PWProjeto.Models
{
    [DbConfigurationType(typeof(MySqlEFConfiguration))]
    public class Contexto:DbContext
    {
        public virtual DbSet<Usuario> Usuarios { get; set; }
        public virtual DbSet<Cliente> Clientes { get; set; }
        public Contexto()
            :base("TESTECS")
        {
        }
        
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<Usuario>().MapToStoredProcedures();

        }
    }
}