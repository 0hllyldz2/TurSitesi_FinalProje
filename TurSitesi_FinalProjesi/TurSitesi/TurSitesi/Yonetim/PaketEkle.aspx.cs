using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TurSitesi.Yonetim
{
    public partial class PaketEkle : System.Web.UI.Page
    {
        SQLsinifi bgl = new SQLsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string FotografAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/" + FotografAd));
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_TurPaket(TurAdi, TurFiyat, TurSure, TurKonum, TurFotograf, TurDetay) VALUES (@TurAdi, @TurFiyat, @TurSure, @TurKonum, @TurFotograf, @TurDetay)", bgl.baglanti());
            komut.Parameters.AddWithValue("@TurAdi", txtAd.Text.ToString());
            komut.Parameters.AddWithValue("@TurFiyat", Convert.ToInt32(txtFiyat.Text));
            komut.Parameters.AddWithValue("@TurSure", Convert.ToInt32(txtSure.Text));
            komut.Parameters.AddWithValue("@TurKonum", txtKonum.Text.ToString());
            komut.Parameters.AddWithValue("@TurFotograf", lblfotograf.Text.ToString());
            komut.Parameters.AddWithValue("@TurDetay", txtDetay.Text.ToString());
            komut.ExecuteNonQuery();
            
            bgl.baglanti().Close();
            Response.Redirect("PaketEkle.aspx");
        }
    }
}