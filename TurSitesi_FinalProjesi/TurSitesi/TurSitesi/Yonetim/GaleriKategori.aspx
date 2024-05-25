<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriKategori.aspx.cs" Inherits="TurSitesi.Yonetim.GaleriKategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Galeri Kategori Ekleme Sayfası..!</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">Kategori Adı</label>
                        <asp:TextBox ID="txtKategoriAd" runat="server" CssClass="form-control" placeholder="Kategori Adı"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Kategori Ekle" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
    <br />
    <br />
    <hr />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_TurSitesiConnectionString %>" DeleteCommand="DELETE FROM [Tbl_GaleriKategori] WHERE [id] = @id" InsertCommand="INSERT INTO [Tbl_GaleriKategori] ([id], [GlrKtgrAdi]) VALUES (@id, @GlrKtgrAdi)" SelectCommand="SELECT * FROM [Tbl_GaleriKategori]" UpdateCommand="UPDATE [Tbl_GaleriKategori] SET [GlrKtgrAdi] = @GlrKtgrAdi WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="GlrKtgrAdi" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="GlrKtgrAdi" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" CssClass="table table-dark" Width="1230px" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="GlrKtgrAdi" HeaderText="GlrKtgrAdi" SortExpression="GlrKtgrAdi" />
        </Columns>
    </asp:GridView>
    </form>
</asp:Content>
