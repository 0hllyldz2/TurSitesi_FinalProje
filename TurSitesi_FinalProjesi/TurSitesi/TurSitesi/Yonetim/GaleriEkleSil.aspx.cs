using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TurSitesi.Yonetim
{
    public partial class GaleriEkleSil : System.Web.UI.Page
    {
        SQLsinifi bgl = new SQLsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string FotografAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/Galeri/" + FotografAd));
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Galeri(GaleriBaslik, GaleriKategoriid, GaleriFotograf) VALUES (@GaleriBaslik, @GaleriKategoriid, @GaleriFotograf)", bgl.baglanti());
            komut.Parameters.AddWithValue("@GaleriBaslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@GaleriKategoriid", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@GaleriFotograf", lblfotograf.Text.ToString());

            komut.ExecuteNonQuery();

            bgl.baglanti().Close();
            Response.Redirect("GaleriEkleSil.aspx");
        }
    }
}