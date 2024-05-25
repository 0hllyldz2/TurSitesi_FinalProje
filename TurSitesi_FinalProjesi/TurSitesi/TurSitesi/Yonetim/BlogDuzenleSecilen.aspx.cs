using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.EnterpriseServices;


namespace TurSitesi.Yonetim
{
    public partial class BlogDuzenleSecilen : System.Web.UI.Page
    {
        SQLsinifi bgl = new SQLsinifi();
        DateTime bugun = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTarih.Text = bugun.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Blog WHERE id=@id", bgl.baglanti());
            komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);

            txtBaslik.Text = tablo.Rows[0]["BlogBaslik"].ToString();
            txtOzet.Text = tablo.Rows[0]["BlogOzet"].ToString();
            DropDownList1.SelectedValue = tablo.Rows[0]["BlogKategoriid"].ToString();
            lblfotograf.Text = tablo.Rows[0]["BlogFotograf"].ToString();
            txtBlogDetay.Text = tablo.Rows[0]["BlogDetay"].ToString();
            lblTarih.Text = tablo.Rows[0]["BlogTarih"].ToString();

            bgl.baglanti().Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Blog SET BlogBaslik=@BlogBaslik, BlogOzet=@BlogOzet, BlogKategoriid=@BlogKategoriid, BlogFotograf=@BlogFotograf, BlogDetay=@BlogDetay, BlogTarih=@BlogTarih WHERE id=@id", bgl.baglanti());
            komut.Parameters.AddWithValue("@BlogBaslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@BlogOzet", txtOzet.Text.ToString());
            komut.Parameters.AddWithValue("@BlogKategoriid", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@BlogFotograf", lblfotograf.Text.ToString());
            komut.Parameters.AddWithValue("@BlogDetay", txtBlogDetay.Text.ToString());
            komut.Parameters.AddWithValue("@BlogTarih", bugun);
            komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);
            komut.ExecuteNonQuery();

            bgl.baglanti().Close();
            Response.Redirect("BlogDuzenleSil.aspx");
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