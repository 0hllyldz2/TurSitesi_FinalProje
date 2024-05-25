<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="TurSitesi.BlogDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 posts-list">
                <div class="single-post">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                        ConnectionString="<%$ ConnectionStrings:DB_TurSitesiConnectionString %>"
                        SelectCommand="SELECT Tbl_Blog.*, Tbl_BlogKategori.BlgKtgrAdi 
                       FROM Tbl_Blog 
                       INNER JOIN Tbl_BlogKategori 
                       ON Tbl_BlogKategori.id = Tbl_Blog.BlogKategoriid 
                       WHERE (Tbl_Blog.id = @id)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            <div class="single-post align-items-center">
                                <div class="feature-img">
                                    <img class="card-img rounded-0 img-fluid" src='<%# "images/Blog/" + Eval("BlogFotograf") %>' alt="">
                                </div>
                                <div class="blog_details rounded-0">
                                    <h2><%# Eval("BlogBaslik") %></h2>
                                    <ul class="blog-info-link mt-3 mb-4">
                                        <li><a href="#"><i class="fa fa-user"></i><%# Eval("BlgKtgrAdi") %></a></li>
                                        <li><a href="#"><i class="fa fa-comments"></i>03 Comments</a></li>
                                    </ul>
                                    <p class="excert">
                                        <%# Eval("BlogDetay") %>
                                    </p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="navigation-top">
                    <div class="d-sm-flex justify-content-between text-center">
                        <p class="like-info">
                            <span class="align-middle"><i class="fa fa-heart"></i></span>Lily ve 4 kişi bunu beğendi
                        </p>
                        <div class="col-sm-4 text-center my-2 my-sm-0">
                            <!-- <p class="comment-count"><span class="align-middle"><i class="fa fa-comment"></i></span> 06 Yorum</p> -->
                        </div>
                        <ul class="social-icons">
                            <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fab fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fab fa-behance"></i></a></li>
                        </ul>
                    </div>

                    <div class="blog-author">
                        <div class="media align-items-center">
                            <img src="assets/img/blog/author.png" alt="">
                            <div class="media-body">
                                <a href="#">
                                    <h4>Harvard Milan</h4>
                                </a>
                                <p>
                                    Formdan ayrılmış ikinci balık yaratık yapıldı. Denizlerin her biri kullanımı söyleyerek toplandı, egemenliğimiz ikinciden ayrıldı.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="comments-area">
                        <h4>05 Yorum</h4>
                        <div class="comment-list">
                            <div class="single-comment justify-content-between d-flex">
                                <div class="user justify-content-between d-flex">
                                    <div class="thumb">
                                        <img src="assets/img/comment/comment_1.png" alt="">
                                    </div>
                                    <div class="desc">
                                        <p class="comment">
                                            Denizlerin dördüncü günü gece otu daha az kural açıkça zaptetmek dişi doldurur ki, kutsanmış, doldurur daha az taşıyan denizlerin dördüncü günü gece otu daha az
                                        </p>
                                        <div class="d-flex justify-content-between">
                                            <div class="d-flex align-items-center">
                                                <h5><a href="#">Emilly Blunt</a></h5>
                                                <p class="date">4 Aralık 2017, 15:12</p>
                                            </div>
                                            <div class="reply-btn">
                                                <a href="#" class="btn-reply text-uppercase">cevapla</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="comment-list">
                            <div class="single-comment justify-content-between d-flex">
                                <div class="user justify-content-between d-flex">
                                    <div class="thumb">
                                        <img src="assets/img/comment/comment_2.png" alt="">
                                    </div>
                                    <div class="desc">
                                        <p class="comment">
                                            Denizlerin dördüncü günü gece otu daha az kural açıkça zaptetmek dişi doldurur ki, kutsanmış, doldurur daha az taşıyan denizlerin dördüncü günü gece otu daha az
                                        </p>
                                        <div class="d-flex justify-content-between">
                                            <div class="d-flex align-items-center">
                                                <h5><a href="#">Emilly Blunt</a></h5>
                                                <p class="date">4 Aralık 2017, 15:12</p>
                                            </div>
                                            <div class="reply-btn">
                                                <a href="#" class="btn-reply text-uppercase">cevapla</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="comment-list">
                            <div class="single-comment justify-content-between d-flex">
                                <div class="user justify-content-between d-flex">
                                    <div class="thumb">
                                        <img src="assets/img/comment/comment_3.png" alt="">
                                    </div>
                                    <div class="desc">
                                        <p class="comment">
                                            Denizlerin dördüncü günü gece otu daha az kural açıkça zaptetmek dişi doldurur ki, kutsanmış, doldurur daha az taşıyan denizlerin dördüncü günü gece otu daha az
                                        </p>
                                        <div class="d-flex justify-content-between">
                                            <div class="d-flex align-items-center">
                                                <h5><a href="#">Emilly Blunt</a></h5>
                                                <p class="date">4 Aralık 2017, 15:12</p>
                                            </div>
                                            <div class="reply-btn">
                                                <a href="#" class="btn-reply text-uppercase">cevapla</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <nav class="blog-pagination justify-content-center d-flex">
                    <ul class="pagination">
                        <li class="page-item">
                            <a href="#" class="page-link" aria-label="Previous">
                                <i class="ti-angle-left"></i>
                            </a>
                        </li>
                        <li class="page-item">
                            <a href="#" class="page-link">1</a>
                        </li>
                        <li class="page-item active">
                            <a href="#" class="page-link">2</a>
                        </li>
                        <li class="page-item">
                            <a href="#" class="page-link" aria-label="Next">
                                <i class="ti-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-4">
                <div class="blog_right_sidebar">
                    <aside class="single_sidebar_widget search_widget">
                        <form action="#">
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder='Arama' onfocus="this.placeholder = ''" onblur="this.placeholder = 'Arama'">
                                    <div class="input-group-append">
                                        <button class="btns" type="button"><i class="ti-search"></i></button>
                                    </div>
                                </div>
                            </div>
                            <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" type="submit">Ara</button>
                        </form>
                    </aside>
                    <aside class="single_sidebar_widget popular_post_widget">
                        <h3 class="widget_title">Son Gönderiler</h3>
                        <div class="media post_item">
                            <img src="assets/img/post/post_1.png" alt="post">
                            <div class="media-body">
                                <a href="single-blog.html">
                                    <h3>Sen hayattan balık...</h3>
                                </a>
                                <p>Haziran 12, 2022</p>
                            </div>
                        </div>
                        <div class="media post_item">
                            <img src="assets/img/post/post_2.png" alt="post">
                            <div class="media-body">
                                <a href="single-blog.html">
                                    <h3>Seyehatinizde yanınızdan...</h3>
                                </a>
                                <p>02 Saat Önce</p>
                            </div>
                        </div>
                        <div class="media post_item">
                            <img src="assets/img/post/post_3.png" alt="post">
                            <div class="media-body">
                                <a href="single-blog.html">
                                    <h3>Astronomi veya  Astroloji</h3>
                                </a>
                                <p>03 Saat Önce</p>
                            </div>
                        </div>
                        <div class="media post_item">
                            <img src="assets/img/post/post_4.png" alt="post">
                            <div class="media-body">
                                <a href="single-blog.html">
                                    <h3>Asteroitler Teleskop</h3>
                                </a>
                                <p>01 Saat Önce</p>
                            </div>
                        </div>
                    </aside>
                    <aside class="single_sidebar_widget tag_cloud_widget">
                        <h4 class="widget_title">Etiketler</h4>
                        <ul class="list">
                            <li><a href="#">Tatil</a></li>
                            <li><a href="#">Deniz</a></li>
                            <li><a href="#">Teknoloji</a></li>
                            <li><a href="#">Rezervasyon</a></li>
                            <li><a href="#">Restoran</a></li>
                            <li><a href="#">Yaşam Tarzı</a></li>
                            <li><a href="#">Kum</a></li>
                            <li><a href="#">Tur</a></li>
                        </ul>
                    </aside>
                    <aside class="single_sidebar_widget instagram_feeds">
                        <h4 class="widget_title">Instagram Akışı</h4>
                        <ul class="instagram_row flex-wrap">
                            <li><a href="#">
                                <img class="img-fluid" src="assets/img/post/post_5.png" alt=""></a></li>
                            <li><a href="#">
                                <img class="img-fluid" src="assets/img/post/post_6.png" alt=""></a></li>
                            <li><a href="#">
                                <img class="img-fluid" src="assets/img/post/post_7.png" alt=""></a></li>
                            <li><a href="#">
                                <img class="img-fluid" src="assets/img/post/post_8.png" alt=""></a></li>
                            <li><a href="#">
                                <img class="img-fluid" src="assets/img/post/post_9.png" alt=""></a></li>
                            <li><a href="#">
                                <img class="img-fluid" src="assets/img/post/post_10.png" alt=""></a></li>
                        </ul>
                    </aside>
                    <aside class="single_sidebar_widget newsletter_widget">
                        <h4 class="widget_title">Kampanyalarımızdan ve Blog Yazılarımızdan Hemen Haberdar Olmak İçin Abone Olun!</h4>
                        <form action="#">
                            <div class="form-group">
                                <input type="email" class="form-control" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email girin'" placeholder='Email girin' required>
                            </div>
                            <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" type="submit">Abone Ol!</button>
                        </form>
                    </aside>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
