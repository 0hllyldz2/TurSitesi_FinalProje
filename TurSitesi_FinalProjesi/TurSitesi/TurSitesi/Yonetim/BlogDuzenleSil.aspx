<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogDuzenleSil.aspx.cs" Inherits="TurSitesi.Yonetim.BlogDuzenleSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Blog Düzenleme/Silme Sayfası..!</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_TurSitesiConnectionString %>" DeleteCommand="DELETE FROM [Tbl_Blog] WHERE [id] = @id" InsertCommand="INSERT INTO [Tbl_Blog] ([BlogBaslik], [BlogOzet], [BlogKategoriid], [BlogFotograf], [BlogDetay], [BlogTarih]) VALUES (@BlogBaslik, @BlogOzet, @BlogKategoriid, @BlogFotograf, @BlogDetay, @BlogTarih)" SelectCommand="SELECT * FROM [Tbl_Blog]" UpdateCommand="UPDATE [Tbl_Blog] SET [BlogBaslik] = @BlogBaslik, [BlogOzet] = @BlogOzet, [BlogKategoriid] = @BlogKategoriid, [BlogFotograf] = @BlogFotograf, [BlogDetay] = @BlogDetay, [BlogTarih] = @BlogTarih WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BlogBaslik" Type="String" />
                <asp:Parameter Name="BlogOzet" Type="String" />
                <asp:Parameter Name="BlogKategoriid" Type="Int32" />
                <asp:Parameter Name="BlogFotograf" Type="String" />
                <asp:Parameter Name="BlogDetay" Type="String" />
                <asp:Parameter Name="BlogTarih" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BlogBaslik" Type="String" />
                <asp:Parameter Name="BlogOzet" Type="String" />
                <asp:Parameter Name="BlogKategoriid" Type="Int32" />
                <asp:Parameter Name="BlogFotograf" Type="String" />
                <asp:Parameter Name="BlogDetay" Type="String" />
                <asp:Parameter Name="BlogTarih" Type="DateTime" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-dark" Width="1230" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("id", "BlogDuzenleSecilen.aspx?id={0}")  %>' runat="server">Düzenle</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
