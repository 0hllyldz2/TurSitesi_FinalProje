<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogDuzenleSecilen.aspx.cs" Inherits="TurSitesi.Yonetim.BlogDuzenleSecilen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3 class="page-title">Blog Düzenleme Sayfası..!</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
    <div class="card">
        <div class="card-body">
            <div class="forms-sample">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_TurSitesiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_BlogKategori]"></asp:SqlDataSource>
                <div class="form-group">
                    <label for="exampleInputName1">Başlık</label>
                    <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Blog Başlık"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="exampleInputName1">Özet</label>
                    <asp:TextBox ID="txtOzet" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Blog Özet"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="exampleInputName1">Kategori</label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="BlgKtgrAdi" DataValueField="id"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <label>Blog Fotoğrafı</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                    <asp:Button ID="Button2" runat="server" Text="Fotoğrafı Yükle" CssClass="btn btn-gradient-primary mr-2" OnClick="Button2_Click" />
                </div>
                <div class="form-group">
                    <asp:Label ID="lblfotograf" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group">
                    <label for="exampleTextarea1">Blog Detay</label>
                    <asp:TextBox ID="txtBlogDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Blog Detay"></asp:TextBox>
                    <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                </div>
                    <asp:Button ID="Button1" runat="server" Text="Yükle" CssClass="btn btn-danger" OnClick="Button1_Click"  />
                    <asp:Button ID="Button3" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button3_Click" />
            </div>
        </div>
    </div>
</div>
</asp:Content>
