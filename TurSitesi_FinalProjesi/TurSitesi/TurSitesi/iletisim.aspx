<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="TurSitesi.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Bize Ulaşın</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="contact-title">Bize Ulaşın!</h2>
            </div>
            <div class="col-lg-8">
                <form class="form-contact contact_form" runat="server" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <asp:TextBox ID="txtMesaj" TextMode="MultiLine" Height="120px" CssClass="form-control" runat="server" placeholder=" Mesaj"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtAdAoyad" CssClass="form-control valid" runat="server" placeholder=" Ad Soyad"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtMail" CssClass="form-control valid" runat="server" placeholder=" E-mail"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <asp:TextBox ID="txtKonu" CssClass="form-control" runat="server" placeholder=" Konu"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="form-group mt-3">
                        <asp:Button ID="Button1" runat="server" CssClass="button button-contactForm boxed-btn" Text="Gönder" OnClick="Button1_Click" />
                    </div>
                </form>
            </div>
            <div class="col-lg-3 offset-lg-1">
                <div class="media contact-info">
                    <span class="contact-info__icon"><i class="ti-home"></i></span>
                    <div class="media-body">
                        <h3>Sivrihisar, Eskişehir.</h3>
                        <p>Hızırbey Mahallesi, 26600</p>
                    </div>
                </div>
                <div class="media contact-info">
                    <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                    <div class="media-body">
                        <h3>0558 778 11 58</h3>
                        <p>Hafta içi 09:00-18:00</p>
                    </div>
                </div>
                <div class="media contact-info">
                    <span class="contact-info__icon"><i class="ti-email"></i></span>
                    <div class="media-body">
                        <h3>Info@gotrip.com</h3>
                        <p>Sorunuzu istediğiniz zaman bize gönderin!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
