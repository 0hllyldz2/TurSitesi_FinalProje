<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TurSitesi.Login" %>


<!doctype html>
<html lang="tr">
<head>
    <title>Kullanıcı Girişi</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="login-form/css/style.css">
</head>
<body class="img js-fullheight" style="background-image: url(login-form/images/bg.jpg);">
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5">
                    <h2 class="heading-section">Yönetim Girişi</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4">
                    <div class="login-wrap p-0">
                        <form action="#" class="signin-form" runat="server">
                            <div class="form-group">
                                <asp:TextBox ID="txtUserName" CssClass="form-control" placeholder="Kullanıcı Adı" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtUserParola" CssClass="form-control" placeholder="Şifre" runat="server"></asp:TextBox>
                                <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="Button1" type="submit" CssClass="form-control btn btn-primary submit px-3" runat="server" Text="Giriş Yap" OnClick="Button1_Click" />
                            </div>
                            <asp:Label ID="lblhata" CssClass="form-group text-center" runat="server"></asp:Label>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="login-form/js/jquery.min.js"></script>
    <script src="login-formjs/popper.js"></script>
    <script src="login-form/js/bootstrap.min.js"></script>
    <script src="login-form/js/main.js"></script>
    <script defer src="https://static.cloudflareinsights.com/beacon.min.js/vef91dfe02fce4ee0ad053f6de4f175db1715022073587" integrity="sha512-sDIX0kl85v1Cl5tu4WGLZCpH/dV9OHbA4YlKCuCiMmOQIk4buzoYDZSFj+TvC71mOBLh8CDC/REgE0GX0xcbjA==" data-cf-beacon='{"rayId":"8896167f8e68694d","version":"2024.4.1","token":"cd0b4b3a733644fc843ef0b185f98241"}' crossorigin="anonymous"></script>
</body>
</html>
