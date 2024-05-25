<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriEkleSil.aspx.cs" Inherits="TurSitesi.Yonetim.GaleriEkleSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Galeri İşlemleri Sayfası..!</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="forms-sample">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_TurSitesiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_GaleriKategori]"></asp:SqlDataSource>
                    <h3>Galeri Fotoğraf Yükleme Alanı</h3>
                    <br />
                    <div class="form-group">
                        <label for="exampleInputName1">Başlık</label>
                        <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Fotoğraf Başlık"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName1">Kategori Adı</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="GlrKtgrAdi" DataValueField="id"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label>Fotoğraf</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                        <asp:Button ID="Button1" runat="server" Text="Fotoğrafı Yükle" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblfotograf" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:Button ID="Button2" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary mr-2" OnClick="Button2_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
