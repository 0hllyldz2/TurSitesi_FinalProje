<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Paketler.aspx.cs" Inherits="TurSitesi.Paketler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Paketlerimiz</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-tittle text-center">
                    <span>ÖZEL TUR Paketleri</span>
                    <h2>Favori Yerler</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_TurSitesiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_TurPaket]"></asp:SqlDataSource>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="images/<%# Eval("TurFotograf") %>" alt="<%# Eval("TurAdi") %>">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>8.0</span> </span>
                                    <h3><a href="#"><%# Eval("TurAdi") %></a></h3>
                                    <p class="dolor">₺<%# Eval("TurFiyat") %><span>/ Kişi Başı</span></p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i><%# Eval("TurSure") %> Gece</li>
                                        <li><i class="fas fa-map-marker-alt"></i><%# Eval("TurKonum") %></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</asp:Content>
