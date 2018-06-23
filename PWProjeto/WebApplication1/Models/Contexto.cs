using MySql.Data.Entity;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;


namespace WebApplication1.Models
{

    [DbConfigurationType(typeof(MySqlEFConfiguration))]
    public class Contexto:DbContext
    {
        public DbSet<Cliente> Clientes { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }

        public Contexto()
            :base("conexaoString")
        {

        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            //modelBuilder.Entity<Cliente>().MapToStoredProcedures();

            modelBuilder.Entity<Cliente>().ToTable("cliente");
            modelBuilder.Entity<Cliente>().HasKey(x => x.cod_cliente);

            modelBuilder.Entity<Usuario>().ToTable("usuario");
            modelBuilder.Entity<Usuario>().HasKey(x => x.cod_usuario);
        }
    }
}