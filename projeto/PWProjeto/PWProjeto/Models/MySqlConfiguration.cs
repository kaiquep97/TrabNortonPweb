using MySql.Data.Entity;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace PWProjeto.Models
{
    public class MySqlConfiguration:DbConfiguration
    {
        public MySqlConfiguration()
        {
            SetHistoryContext("MySql.Data.MySqlClient", (conn, schema) => new MySqlHistoryContext(conn, schema));
        }
    }
}