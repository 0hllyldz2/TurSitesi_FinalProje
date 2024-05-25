<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Kurumsal.aspx.cs" Inherits="TurSitesi.Yonetim.Kurumsal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Kurumsal işlemleri Sayfası..!</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">Hakkımızda Bölümü Başlık</label>
                        <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="E-Başlık"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName1">Hakkımızda Bölümü Özet</label>
                        <asp:TextBox ID="txtOzet" runat="server" TextMode="MultiLine" Height="50px" CssClass="form-control" placeholder="Özet"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">Hakkımızda Bölümü Detay</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Detay"></asp:TextBox>
                        <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:Label ID="lblid" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Yükle" CssClass="btn btn-danger" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button2_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
