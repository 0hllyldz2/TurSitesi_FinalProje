<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="PaketDuzenleSil.aspx.cs" Inherits="TurSitesi.Yonetim.PaketDuzenleSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Yeni Tur Paketi Düzenle/Sil Sayfası..!</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_TurSitesiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_TurPaket]" DeleteCommand="DELETE FROM [Tbl_TurPaket] WHERE [id] = @id" InsertCommand="INSERT INTO [Tbl_TurPaket] ([TurAdi], [TurFiyat], [TurSure], [TurKonum], [TurFotograf], [TurDetay]) VALUES (@TurAdi, @TurFiyat, @TurSure, @TurKonum, @TurFotograf, @TurDetay)" UpdateCommand="UPDATE [Tbl_TurPaket] SET [TurAdi] = @TurAdi, [TurFiyat] = @TurFiyat, [TurSure] = @TurSure, [TurKonum] = @TurKonum, [TurFotograf] = @TurFotograf, [TurDetay] = @TurDetay WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TurAdi" Type="String" />
                <asp:Parameter Name="TurFiyat" Type="Int32" />
                <asp:Parameter Name="TurSure" Type="Int32" />
                <asp:Parameter Name="TurKonum" Type="String" />
                <asp:Parameter Name="TurFotograf" Type="String" />
                <asp:Parameter Name="TurDetay" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TurAdi" Type="String" />
                <asp:Parameter Name="TurFiyat" Type="Int32" />
                <asp:Parameter Name="TurSure" Type="Int32" />
                <asp:Parameter Name="TurKonum" Type="String" />
                <asp:Parameter Name="TurFotograf" Type="String" />
                <asp:Parameter Name="TurDetay" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-dark" Width="1230" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="TurAdi" HeaderText="TurAdi" SortExpression="TurAdi" />
                <asp:BoundField DataField="TurFiyat" HeaderText="TurFiyat" SortExpression="TurFiyat" />
                <asp:BoundField DataField="TurSure" HeaderText="TurSure" SortExpression="TurSure" />
                <asp:BoundField DataField="TurKonum" HeaderText="TurKonum" SortExpression="TurKonum" />
                <asp:BoundField DataField="TurFotograf" HeaderText="TurFotograf" SortExpression="TurFotograf" />
                <asp:BoundField DataField="TurDetay" HeaderText="TurDetay" SortExpression="TurDetay" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
