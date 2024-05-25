using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace TurSitesi
{
    public class SQLsinifi
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-U5BN37L\SQLEXPRESS;Initial Catalog=DB_TurSitesi;Integrated Security=True;TrustServerCertificate=True;");
            baglan.Open();
            return baglan;
        }
    }

}