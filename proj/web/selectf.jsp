<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<!--[if IE 9]> <html class="no-js ie9 fixed-layout" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js " lang="en"> <!--<![endif]-->
<head>

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <!-- Mobile Meta -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    
    <!-- Site Meta -->
    <title>Faculty Actions</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

	<!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,400i,700,700i" rel="stylesheet"> 
	
    <!-- Custom & Default Styles -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/carousel.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="style.css">

	<!--[if lt IE 9]>
		<script src="js/vendor/html5shiv.min.js"></script>
		<script src="js/vendor/respond.min.js"></script>
	<![endif]-->

</head>
<body>  

    <!-- LOADER -->
    <div id="preloader">
        <img class="preloader" src="images/loader.gif" alt="">
    </div><!-- end loader -->
    <!-- END LOADER -->

    <div id="wrapper">
        <!-- BEGIN # MODAL LOGIN -->
        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Begin # DIV Form -->
                    <div id="div-forms">
                        <form id="login-form">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span class="flaticon-add" aria-hidden="true"></span>
                            </button>
                            <div class="modal-body">
                                <input class="form-control" type="text" placeholder="What you are looking for?" required>
                            </div>
                        </form><!-- End # Login Form -->
                    </div><!-- End # DIV Form -->
                </div>
            </div>
        </div>
        <!-- END # MODAL LOGIN -->

        <header class="header header-normal">
            <div class="topbar clearfix">
                <div class="container">
                    <div class="row-fluid">
                        <div class="col-md-6 col-sm-6 text-left">
                            <p>
                                <strong><i class="fa fa-phone"></i></strong> +91 911 207 45 40 &nbsp;&nbsp;
                                <strong><i class="fa fa-envelope"></i></strong> <a href="mailto:#">AMAES@gmail.com</a>
                            </p>
                        </div><!-- end left -->
                        <div class="col-md-6 col-sm-6 hidden-xs text-right">
                            <div class="social">
                                <a class="facebook" href="#" data-tooltip="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook"></i></a>              
                                <a class="twitter" href="#" data-tooltip="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter"></i></a>
                                <a class="google" href="#" data-tooltip="tooltip" data-placement="bottom" title="Google Plus"><i class="fa fa-google-plus"></i></a>
                                <a class="linkedin" href="#" data-tooltip="tooltip" data-placement="bottom" title="Linkedin"><i class="fa fa-linkedin"></i></a>
                                <a class="pinterest" href="#" data-tooltip="tooltip" data-placement="bottom" title="Pinterest"><i class="fa fa-pinterest"></i></a>
                            </div><!-- end social -->
                        </div><!-- end left -->
                    </div><!-- end row -->
                </div><!-- end container -->
            </div><!-- end topbar -->

            <div class="container">
                <nav class="navbar navbar-default yamm">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div class="logo-normal">
                            <div class="row">                                
                                <a class="navbar-brand" href="home.jsp"> 
                                    <div class="col-lg-4">
                                        <img src="images/apple-touch-icon.png" alt="">
                                    </div>
                                    <div class="col-lg-8 amaes">
                                        AMAES
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="home.jsp">Home</a></li>                           
                            <li><a href="events.html">Blog</a></li>
                            <li class="dropdown hassubmenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Student <span class="fa fa-angle-down"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="login.jsp">Login</a></li>
                                    <li><a href="register.jsp">Signup</a></li>
                                </ul>
                            </li>
                            <li class="dropdown hassubmenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Faculty <span class="fa fa-angle-down"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="Logoutf">Logout</a></li>
                                </ul>
                            </li>
                            <li class="dropdown hassubmenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">HOD <span class="fa fa-angle-down"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="homeh.jsp">Login</a></li>
                                </ul>
                            </li>
                            <li><a href="stud.jsp">Student Details</a></li>
                            <li><a href="page-contact.html">Contact</a></li>
                            <li class="iconitem"><a href="#" data-toggle="modal" data-target="#login-modal"><i class="fa fa-search"></i></a></li>
                        </ul>
                    </div>
                </nav><!-- end navbar -->
            </div><!-- end container -->
        </header>

        <section class="section db p120">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="tagline-message page-title text-center">
                            <h3>Faculty Section</h3>
                            <ul class="breadcrumb">
                                <li><a href="javascript:void(0)">AMAES</a></li>
                                <li class="active">Language Processor</li>
                                <li class="active">Dive in</li>
                            </ul>
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end section -->



        <section class="section gb">
            <div class="container">
                <div class="section-title text-center">
                    <h3>Activities</h3>
                    <p>Maecenas sit amet tristique turpis. Quisque porttitor eros quis leo pulvinar, at hendrerit sapien iaculis. Donec consectetur accumsan arcu, sit amet fringilla ex ultricies.</p>
                </div><!-- end title -->

                <div id="owl-01" class="owl-carousel owl-theme owl-theme-01">                    
                    <div class="caro-item">
                        <a href="lp1.jsp">
                            <div class="course-box">
                                <div class="image-wrap entry">
                                    <img src="upload/i4.jpg" alt="" class="img-responsive">
                                    <div class="magnifier">
                                        <i class="flaticon-add"></i>
                                    </div>
                                </div><!-- end image-wrap -->
                                <div class="course-details">
                                    <h4>                                    
                                        <p>Add CT-1 Marks</p>
                                    </h4>                                    
                                </div><!-- end details -->                       
                            </div><!-- end box -->
                        </a>
                    </div><!-- end col -->


                    <div class="caro-item">
                        <a href="lp2.jsp">
                            <div class="course-box">
                                <div class="image-wrap entry">
                                    <img src="upload/i11.jpg" alt="" class="img-responsive">
                                    <div class="magnifier">
                                        <i class="flaticon-add"></i>
                                    </div>
                                </div><!-- end image-wrap -->
                                <div class="course-details">
                                    <h4>                                    
                                        <p>Add CT-2 Marks</p>
                                    </h4>
                                </div><!-- end details -->                           
                            </div><!-- end box -->
                        </a>
                    </div><!-- end col -->


                    <div class="caro-item">
                        <a href="lpf.jsp">
                            <div class="course-box">
                                <div class="image-wrap entry">
                                    <img src="upload/i20.jpg" alt="" class="img-responsive">
                                    <div class="magnifier">
                                        <i class="flaticon-add"></i>
                                    </div>
                                </div><!-- end image-wrap -->
                                <div class="course-details">
                                    <h4>                                    
                                        <p>Add Internal Marks</p>
                                    </h4>
                                </div><!-- end details -->
                            </div><!-- end box -->
                        </a>
                    </div><!-- end col -->

                    
                    <div class="caro-item">
                        <a href="att.jsp">
                            <div class="course-box">
                                <div class="image-wrap entry">
                                    <img src="upload/i21.jpg" alt="" class="img-responsive">
                                    <div class="magnifier">
                                        <i class="flaticon-add"></i>
                                    </div>
                                </div><!-- end image-wrap -->
                                <div class="course-details">
                                    <h4>                                    
                                        <p>Add Attendance</p>
                                    </h4>
                                </div><!-- end details -->
                            </div><!-- end box -->
                        </a>
                    </div>

                   
                    
               
                
                  
                    <div class="caro-item">
                        <a href="index.html">
                            <div class="course-box">
                                <div class="image-wrap entry">
                                    <img src="upload/i6.jpg" alt="" class="img-responsive">
                                    <div class="magnifier">
                                        <i class="flaticon-add"></i>
                                    </div>
                                </div><!-- end image-wrap -->
                                <div class="course-details">
                                    <h4>                                    
                                        <p>Send Notification</p>
                                    </h4>
                                </div><!-- end details -->
                            </div><!-- end box -->
                        </a>
                    </div><!-- end col -->
                
                    <div class="caro-item">
                        <a href="https://drive.google.com/drive/folders/1QwfZGevABL0fntcGqpJSXf1-UcJJhdBy?usp=sharing">
                            <div class="course-box">
                                <div class="image-wrap entry">
                                    <img src="upload/i22.jpg" alt="" class="img-responsive">
                                    <div class="magnifier">
                                        <i class="flaticon-add"></i>
                                    </div>
                                </div><!-- end image-wrap -->
                                <div class="course-details">
                                    <h4>                                    
                                        <p>Upload Notes</p>
                                    </h4>
                                </div><!-- end details -->
                            </div><!-- end box -->
                        </a>
                    </div><!-- end col -->
                
            </div><!-- end title -->
            
            
            
            <hr class="invis">                
            </div><!-- end container -->
         
              
            <div class="btn-wrapper">
                <div class="text-center">
                    <a href="#" class="btn btn-primary wow slideInLeft">
                        <form method="post" action="Pdfg">
                            <input type="submit" value ="Final PDF Download" class="btn btn-primary wow slideInLeft">
                        </form>
                    </a>&nbsp;&nbsp;&nbsp;
                    <a href="#" class="btn btn-default wow">
                        <form method="post" action="Excelg">
                            <input type="submit" value ="Final Excel Download" class="btn btn-default wow">
                        </form>
                    </a>&nbsp;&nbsp;&nbsp;
                    <a href="#" class="btn btn-primary wow slideInRight">
                        <form method="post" action="Pdfg">
                            <input type="submit" value ="Attendence Excel Download" class="btn btn-primary wow slideInRight"> 
                        </form>
                    </a>    
                </div>
            </div><!-- end row -->    
                        
        </section>        


        


        <footer class="section footer noover">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <div class="widget clearfix">
                            <h3 class="widget-title">Subscribe Our Newsletter</h3>
                            <div class="newsletter-widget">
                                <p>You can opt out of our newsletters at any time.<br> See our <a href="#">privacy policy</a>.</p>
                                <form class="form-inline" role="search">
                                    <div class="form-1">
                                        <input type="text" class="form-control" placeholder="Enter email here..">
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-paper-plane-o"></i></button>
                                    </div>
                                </form>
                                <img src="images/payments.png" alt="" class="img-responsive">
                            </div><!-- end newsletter -->
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-lg-3 col-md-3">
                        <div class="widget clearfix text-center">
                            <h3 class="widget-title">Academic Monitoring<br>&<br>Evaluation System</h3>
                            <p>A Mega-Project by Group 14.<br> Government College of Engineering Nagpur.<br>  Feel free to reach out to us if you have any questions.</p>
                            <a href="#" class="readmore">Any Questions</a>
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-lg-3 col-md-3">
                        <div class="widget clearfix">
                            <h3 class="widget-title">Popular Tags</h3>
                            <div class="tags-widget">   
                                <ul class="list-inline">
                                    <li><a href="#">course</a></li>
                                    <li><a href="#">web design</a></li>
                                    <li><a href="#">development</a></li>
                                    <li><a href="#">language</a></li>
                                    <li><a href="#">teacher</a></li>
                                    <li><a href="#">speaking</a></li>
                                    <li><a href="#">material</a></li>
                                    <li><a href="#">css3</a></li>
                                    <li><a href="#">html</a></li>
                                    <li><a href="#">learning</a></li>
                                </ul>
                            </div><!-- end list-widget -->
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-lg-2 col-md-2">
                        <div class="widget clearfix">
                            <h3 class="widget-title">Support</h3>
                            <div class="list-widget">   
                                <ul>
                                    <li><a href="#">Terms of Use</a></li>
                                    <li><a href="#">Copyrights</a></li>
                                    <li><a href="#">Create a Ticket</a></li>
                                    <li><a href="#">Pricing & Plans</a></li>
                                    <li><a href="#">Carrier</a></li>
                                    <li><a href="#">Trademark</a></li>
                                </ul>
                            </div><!-- end list-widget -->
                        </div><!-- end widget -->
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </footer><!-- end footer -->

        <div class="copyrights">
            <div class="container">
                <div class="clearfix">
                    <div class="pull-left">
                        <div class="cop-logo">
                            <a href="home.jsp"><img src="images/apple-touch-icon.png" alt="">AMAES</a>
                        </div>
                    </div>

                    <div class="pull-right">
                        <div class="footer-links">
                            <ul class="list-inline">
                                <li>Design : <a href="https://html.design">HTML.Design</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div><!-- end container -->
        </div><!-- end copy -->
    </div><!-- end wrapper -->

    <style>
        .amaes {
    padding-top: 19px;
        }
    </style>
        

    <!-- jQuery Files -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/carousel.js"></script>
    <script src="js/animate.js"></script>
    <script src="js/custom.js"></script>
    <!-- VIDEO BG PLUGINS -->
    <script src="js/videobg.js"></script>

</body>
</html>