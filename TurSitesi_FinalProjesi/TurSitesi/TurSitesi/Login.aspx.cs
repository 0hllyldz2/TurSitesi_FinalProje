using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TurSitesi
{
    public partial class Login : System.Web.UI.Page
    {
        SQLsinifi bgl = new SQLsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Kullanici WHERE UserName=@UserName AND UserParola=@UserParola", bgl.baglanti());
            komut.Parameters.AddWithValue("@UserName", txtUserName.Text.ToString());
            komut.Parameters.AddWithValue("@UserParola", txtUserParola.Text.ToString());
            SqlDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                Session["Kullanici"] = oku["UserName"].ToString();
                Response.Redirect("~/Yonetim/Defaut.aspx");
            }
            else
            {
                lblhata.Text = "Kullanıcı Adı veya Şifre hatalı..!";
            }
            oku.Close();
            bgl.baglanti().Close();
            bgl.baglanti().Dispose();
        }
    }
}