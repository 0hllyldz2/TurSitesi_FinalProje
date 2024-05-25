using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TurSitesi.Yonetim
{
    public partial class BlogEkle : System.Web.UI.Page
    {
        DateTime bugun = DateTime.Now;
        SQLsinifi bgl = new SQLsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTarih.Text = bugun.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Blog(BlogBaslik, BlogOzet, BlogKategoriid, BlogFotograf, BlogDetay, BlogTarih) VALUES (@BlogBaslik, @BlogOzet, @BlogKategoriid, @BlogFotograf, @BlogDetay, @BlogTarih)", bgl.baglanti());
            komut.Parameters.AddWithValue("@BlogBaslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@BlogOzet", txtOzet.Text.ToString());
            komut.Parameters.AddWithValue("@BlogKategoriid", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@BlogFotograf", lblfotograf.Text.ToString());
            komut.Parameters.AddWithValue("@BlogDetay", txtBlogDetay.Text.ToString());
            komut.Parameters.AddWithValue("@BlogTarih", bugun);
            komut.ExecuteNonQuery();

            bgl.baglanti().Close();
            Response.Redirect("BlogEkle.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string FotografAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/Blog/" + FotografAd));
                    lblfotograf.Text = FotografAd.ToString();
                }
                else
                {
                    lblfotograf.Text = "Lütfen JPG, JPEG veya PNG uzantılı fotoğraf seçin..!";
                }
            }
            else
            {
                lblfotograf.Text = "Lütfen fotoğraf seçin..!";
            }
        }
    }
}