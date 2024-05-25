<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogKategori.aspx.cs" Inherits="TurSitesi.Yonetim.BlogKategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Yeni Blog Kategori Ekleme/Silme Sayfası..!</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="forms-sample">
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
                        <label for="exampleInputName1">Kategori Adı</label>
                        <asp:TextBox ID="txtKategoriAd" runat="server" CssClass="form-control" placeholder="Kategori Adı"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
        <br />
        <br />
        <hr />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_TurSitesiConnectionString %>" DeleteCommand="DELETE FROM [Tbl_BlogKategori] WHERE [id] = @id" InsertCommand="INSERT INTO [Tbl_BlogKategori] ([BlgKtgrAdi]) VALUES (@BlgKtgrAdi)" SelectCommand="SELECT * FROM [Tbl_BlogKategori]" UpdateCommand="UPDATE [Tbl_BlogKategori] SET [BlgKtgrAdi] = @BlgKtgrAdi WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BlgKtgrAdi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BlgKtgrAdi" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" CssClass="table table-dark" Width="1230px" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
