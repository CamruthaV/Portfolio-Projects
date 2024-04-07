<%@ page import="java.sql.*" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>Welcome</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>
    <!-- body -->

    <body class="main-layout">
        <!-- loader  -->
        <div class="loader_bg">
            <div class="loader"><img src="images/loading.gif" alt="#" /></div>
        </div>
        <!-- end loader -->
        <!-- header -->
        <header>
            <!-- header inner -->
            <div class="header">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                            <div class="full">
                                <div class="center-desk">
                                    <div class="logo"> <a href="index.html"><img src="images/logo.png" alt="#"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                            <div class="menu-area">
                                <div class="limit-box">
                                    <nav class="main-menu">
                                        <ul class="menu-area-main">
                                            <li class="active"> <a href="login.html">Home</a> </li>
                                            <li> <a href="about.html">About us</a> </li>
                                            <li><a href="books.html">Our Books</a></li>
                                            <li><a href="library.html">library</a></li>
                                            <li><a href="contact.html">Contact us</a></li>
                                            <li class="mean-last"> <a href="#"><img src="images/top-icon.png"
                                                        alt="#" /></a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- end header inner -->
        </header>
        <!-- end header -->
        <!-- <section class="slider_section">
            <div id="myCarousel" class="carousel slide banner-main" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="first-slide" src="images/banner.jpg" alt="First slide">
                        <div class="container">
                            <div class="carousel-caption relative">
                                <h1>The Best Libraries That<br> Every Book Lover Must<br> Visit!</h1>
                                <p>adipiscing elit, sed do eiusmod tempor incididunt ut<br> labore et dolore magna
                                    aliqua.
                                    Ut enim ad minim<br> veniam, quis nostrud exercitation </p>
                                <div class="button_section"> <a class="main_bt" href="#">Read More</a> </div>
                                <ul class="locat_icon">
                                    <li> <a href="#"><img src="icon/facebook.png"></a></li>
                                    <li> <a href="#"><img src="icon/Twitter.png"></a></li>
                                    <li> <a href="#"><img src="icon/linkedin.png"></a></li>
                                    <li> <a href="#"><img src="icon/instagram.png"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="second-slide" src="images/banner.jpg" alt="Second slide">
                        <div class="container">
                            <div class="carousel-caption relative">
                                <h1>The Best Libraries That<br> Every Book Lover Must<br> Visit!</h1>
                                <p>adipiscing elit, sed do eiusmod tempor incididunt ut<br> labore et dolore magna
                                    aliqua.
                                    Ut enim ad minim<br> veniam, quis nostrud exercitation </p>
                                <div class="button_section"> <a class="main_bt" href="#">Read More</a> </div>
                                <ul class="locat_icon">
                                    <li> <a href="#"><img src="icon/facebook.png"></a></li>
                                    <li> <a href="#"><img src="icon/Twitter.png"></a></li>
                                    <li> <a href="#"><img src="icon/linkedin.png"></a></li>
                                    <li> <a href="#"><img src="icon/instagram.png"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="third-slide" src="images/banner.jpg" alt="Third slide">
                        <div class="container">
                            <div class="carousel-caption relative">
                                <h1>The Best Libraries That<br> Every Book Lover Must<br> Visit!</h1>
                                <p>adipiscing elit, sed do eiusmod tempor incididunt ut<br> labore et dolore magna
                                    aliqua.
                                    Ut enim ad minim<br> veniam, quis nostrud exercitation </p>
                                <div class="button_section"> <a class="main_bt" href="#">Read More</a> </div>
                                <ul class="locat_icon">
                                    <li> <a href="#"><img src="icon/facebook.png"></a></li>
                                    <li> <a href="#"><img src="icon/Twitter.png"></a></li>
                                    <li> <a href="#"><img src="icon/linkedin.png"></a></li>
                                    <li> <a href="#"><img src="icon/instagram.png"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </section> -->
        <!-- about -->
        <!-- <div class="about">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 offset-md-1">
                    </div>
                </div>
                <div class="row border">
                    <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12">
                        
                    </div>
                    <div class="col-xl-5 col-lg-5 col-md-12 col-sm-12">
                        <div class="about-box">
                            <figure><img src="images/about.png" alt="img" /></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->

        <!-- end about -->

        <% try { Class.forName("com.mysql.cj.jdbc.Driver"); Connection
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root",""); Statement
            stmt=con.createStatement(); ResultSet rs=stmt.executeQuery("select * from signup"); %>
            <div class="about">
                <div class="container">
                    <div class="row">
                        <div class="col-md-10 offset-md-1">
                            <div class="aboutheading">
                                <br><h2>Logged In <strong class="black">Users</strong></h2>
                            </div>
                        </div>
                    </div>
                    <div class="row border">
                        <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12">
                            <div class="about-box">
                                <center>
                                    <table border="10"
                                        style="width: 100%; padding: 50px; margin: 20px; text-align: center; align-items: center;">
                                        <tr>
                                            <th>Name</th>
                                            <th>Phone</th>
                                            <th>Email</th>
                                        </tr>
                                        <% while(rs.next()) { %>
                                            <tr>
                                                <td>
                                                    <% out.print(rs.getString(1)); %>
                                                </td>
                                                <td>
                                                    <% out.print(rs.getString(2)); %>
                                                </td>
                                                <td>
                                                    <% out.print(rs.getString(3)); %>
                                                </td>
                                            </tr>
                                            <% } %>
                                    </table>
                                </center>
                            </div>
                        </div>
                        <div class="col-xl-5 col-lg-5 col-md-12 col-sm-12">
                            <div class="about-box">
                                <figure><img src="images/about.png" alt="img" /></figure>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <% con.close(); %>
                <% } catch(Exception e) { out.print(e); } %>

                    <!-- footer -->
                    <footer>
                        <div class="footer">
                            <div class="container">
                                <div class="row pdn-top-30">
                                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                                        <div class="Follow">
                                            <h3>Follow Us</h3>
                                        </div>
                                        <ul class="location_icon">
                                            <li> <a href="#"><img src="icon/facebook.png"></a></li>
                                            <li> <a href="#"><img src="icon/Twitter.png"></a></li>
                                            <li> <a href="#"><img src="icon/linkedin.png"></a></li>
                                            <li> <a href="#"><img src="icon/instagram.png"></a></li>
                                        </ul>
                                    </div>
                                    <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                                        <div class="Follow">
                                            <h3>Newsletter</h3>
                                        </div>
                                        <input class="Newsletter" placeholder="Enter your email"
                                            type="Enter your email">
                                        <button class="Subscribe">Subscribe</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="copyright">
                            <div class="container">
                                <p>Copyright 2019 All Right Reserved By Memorial</p>
                            </div>
                        </div>
                    </footer>
                    <!-- end footer -->

                    <!-- Javascript files-->
                    <script src="js/jquery.min.js"></script>
                    <script src="js/popper.min.js"></script>
                    <script src="js/bootstrap.bundle.min.js"></script>
                    <script src="js/jquery-3.0.0.min.js"></script>
                    <script src="js/plugin.js"></script>
                    <!-- sidebar -->
                    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
                    <script src="js/custom.js"></script>
    </body>

    </html>