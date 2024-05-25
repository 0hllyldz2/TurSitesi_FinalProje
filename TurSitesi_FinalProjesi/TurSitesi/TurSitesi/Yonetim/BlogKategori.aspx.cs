using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TurSitesi.Yonetim
{
    public partial class BlogKategori : System.Web.UI.Page
    {
        SQLsinifi bgl = new SQLsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_BlogKategori(BlgKtgrAdi) VALUES (@BlgKtgrAdi)", bgl.baglanti());
            komut.Parameters.AddWithValue("@BlgKtgrAdi", txtKategoriAd.Text);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            Response.Redirect("BlogKategori.aspx");
        }
    }
}