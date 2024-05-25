<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="TurSitesi.Yonetim.Ayarlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Site Ayarları işlem Sayfası..!</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">E-mail</label>
                        <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="E-mail"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName1">Telefon Numarası</label>
                        <asp:TextBox ID="txttlf" runat="server" CssClass="form-control" placeholder="Telefon Numarası"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName1">Adres</label>
                        <asp:TextBox ID="txtAdres" runat="server" TextMode="MultiLine" Height="50px" CssClass="form-control" placeholder="Adres"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName1">Twitter</label>
                        <asp:TextBox ID="txtTwitter" runat="server" CssClass="form-control" placeholder="Twitter"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName1">YouTube</label>
                        <asp:TextBox ID="txtYoutube" runat="server" CssClass="form-control" placeholder="YouTube"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName1">Instagram</label>
                        <asp:TextBox ID="txtInstagram" runat="server" CssClass="form-control" placeholder="Instagram"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName1">Facebook</label>
                        <asp:TextBox ID="txtFacebook" runat="server" CssClass="form-control" placeholder="Facebook"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Site Logosu</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                        <%--<asp:Button ID="Button3" runat="server" Text="Fotoğrafı Yükle" CssClass="btn btn-gradient-primary mr-2" />--%>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbllogo" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">Site Açıklama</label>
                        <asp:TextBox ID="txtSiteAciklama" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Site Açıklama"></asp:TextBox>
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
