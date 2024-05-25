using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TurSitesi.Yonetim
{
    public partial class Ayarlar : System.Web.UI.Page
    {
        SQLsinifi bgl = new SQLsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Enabled = false;
        }

        string id;
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Ayarlar", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);

            txtMail.Text = tablo.Rows[0]["Mail"].ToString();
            txttlf.Text = tablo.Rows[0]["Tlf"].ToString();
            txtAdres.Text = tablo.Rows[0]["Adres"].ToString();
            txtTwitter.Text = tablo.Rows[0]["Twitter"].ToString();
            txtYoutube.Text = tablo.Rows[0]["Youtube"].ToString();
            txtInstagram.Text = tablo.Rows[0]["Instagram"].ToString();
            txtFacebook.Text = tablo.Rows[0]["Facebook"].ToString();
            lbllogo.Text = tablo.Rows[0]["Logo"].ToString();
            txtSiteAciklama.Text = tablo.Rows[0]["SiteAciklama"].ToString();
            lblid.Text = tablo.Rows[0]["id"].ToString();    

            bgl.baglanti().Close();
            Button2.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Ayarlar SET Mail=@Mail, Tlf=@Tlf, Adres=@Adres, Twitter=@Twitter, Youtube=@Youtube, Instagram=@Instagram, Facebook=@Facebook, Logo=@Logo, SiteAciklama=@SiteAciklama WHERE id=@id", bgl.baglanti());
            komut.Parameters.AddWithValue("@Mail", txtMail.Text.ToString());
            komut.Parameters.AddWithValue("@Tlf", txttlf.Text.ToString());
            komut.Parameters.AddWithValue("@Adres", txtAdres.Text.ToString());
            komut.Parameters.AddWithValue("@Twitter", txtTwitter.Text.ToString());
            komut.Parameters.AddWithValue("@Youtube", txtYoutube.Text.ToString());
            komut.Parameters.AddWithValue("@Instagram", txtInstagram.Text.ToString());
            komut.Parameters.AddWithValue("@Facebook", txtFacebook.Text.ToString());
            komut.Parameters.AddWithValue("@Logo", lbllogo.Text.ToString());
            komut.Parameters.AddWithValue("@SiteAciklama", txtMail.Text.ToString());
            komut.Parameters.AddWithValue("@id", lblid.Text.ToString());

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            Response.Redirect("Ayarlar.aspx");
        }
    }
}