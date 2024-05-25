<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="TurSitesi.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Blog Yazılarımız</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
        <div class="col-lg-8 mb-5 mb-lg-0">
            <div class="blog_left_sidebar">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB_TurSitesiConnectionString %>" SelectCommand="SELECT Tbl_Blog.*, Tbl_BlogKategori.BlgKtgrAdi FROM Tbl_Blog INNER JOIN Tbl_BlogKategori ON Tbl_BlogKategori.id = Tbl_Blog.BlogKategoriid"></asp:SqlDataSource>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <article class="blog_item">
                            <div class="blog_item_img">
                                <img class="card-img rounded-0" src='<%# "images/Blog/" + Eval("BlogFotograf") %>' alt="">
                                <a href='<%# Eval("id", "BlogDetay.aspx?id={0}") %>' class="blog_item_date">
                                    <h3><%# Eval("BlogTarih") %></h3>
                                </a>
                            </div>

                            <div class="blog_details">
                                <a class="d-inline-block" href='<%# Eval("id", "BlogDetay.aspx?id={0}") %>'>
                                    <h2><%# Eval("BlogBaslik") %></h2>
                                </a>
                                <ul class="blog-info-link">
                                    <li><a href="#"><i class="fa fa-user"></i><%# Eval("BlgKtgrAdi") %></a></li>
                                    <li><a href="#"><i class="fa fa-comments"></i>03 Yorum</a></li>
                                </ul>
                            </div>
                        </article>
                    </ItemTemplate>
                </asp:Repeater>


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
        </div>
        <div class="col-lg-4">
            <div class="blog_right_sidebar">
                <aside class="single_sidebar_widget search_widget">
                    <form action="#">
                        <div class="form-group">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder='Arama'
                                    onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = 'Search Keyword'">
                                <div class="input-group-append">
                                    <button class="btns" type="button"><i class="ti-search"></i></button>
                                </div>
                            </div>
                        </div>
                        <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                            type="submit">
                            Ara</button>
                    </form>
                </aside>

                <aside class="single_sidebar_widget post_category_widget">
                    <h4 class="widget_title">Kategoriler</h4>
                    <ul class="list cat-list">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_TurSitesiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_BlogKategori]"></asp:SqlDataSource>
                        <asp:Repeater runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p><%# Eval("BlgKtgrAdi") %></p>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
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
                        <li>
                            <a href="#">Tatil</a>
                        </li>
                        <li>
                            <a href="#">Deniz</a>
                        </li>
                        <li>
                            <a href="#">Teknoloji</a>
                        </li>
                        <li>
                            <a href="#">Rezervasyon</a>
                        </li>
                        <li>
                            <a href="#">Restoran</a>
                        </li>
                        <li>
                            <a href="#">Yaşam Tarzı</a>
                        </li>
                        <li>
                            <a href="#">Kum</a>
                        </li>
                        <li>
                            <a href="#">Tur</a>
                        </li>
                    </ul>
                </aside>


                <aside class="single_sidebar_widget instagram_feeds">
                    <h4 class="widget_title">Instagram Akışı</h4>
                    <ul class="instagram_row flex-wrap">
                        <li>
                            <a href="#">
                                <img class="img-fluid" src="assets/img/post/post_5.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-fluid" src="assets/img/post/post_6.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-fluid" src="assets/img/post/post_7.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-fluid" src="assets/img/post/post_8.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-fluid" src="assets/img/post/post_9.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-fluid" src="assets/img/post/post_10.png" alt="">
                            </a>
                        </li>
                    </ul>
                </aside>


                <aside class="single_sidebar_widget newsletter_widget">
                    <h4 class="widget_title">Kampanyalarımızdan ve Blog Yazılarımızdan Hemen Haberdar Olmak İçin Abone Olun!</h4>

                    <form action="#">
                        <div class="form-group">
                            <input type="email" class="form-control" onfocus="this.placeholder = ''"
                                onblur="this.placeholder = 'Enter email'" placeholder='email girin' required>
                        </div>
                        <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                            type="submit">
                            Abone Ol!</button>
                    </form>
                </aside>
            </div>
        </div>
    </div>
</asp:Content>
