<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" uri="http://localhost:9596/RPrabhudas"%>
 
  <head>
    <title>RP</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/user/bootstrap/images/13.png">
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/bootstrap/fonts/icomoon/style.css">

   <!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/bootstrap/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/bootstrap/css/mega-menu.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/bootstrap/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/bootstrap/css/jquery-ui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/bootstrap/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/bootstrap/css/owl.theme.default.min.css">


    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/bootstrap/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/bootstrap/css/style.css">
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/bootstrap/css/bootstrap.min.css">
     <style>
     /* Make the image fully responsive */
     .carousel-inner {
       width: 100%;
       height: 100%;
     }
     

    #custCarousel .carousel-indicators {
        position: static;
        margin-top: 20px
    }

    #custCarousel .carousel-indicators>li {
        width: 100px
    }

    #custCarousel .carousel-indicators li img {
        display: block;
        opacity: 0.5
    }

    #custCarousel .carousel-indicators li.active img {
        opacity: 1
    }

    #custCarousel .carousel-indicators li:hover img {
        opacity: 0.75
    }

    .carousel-item img {
        width: 80%
    }
    
     </style>
  
  </head>
  <body>
  
  <div class="site-wrap">

    <div class="page-top-bar top-bar-01">
      <div class="container">
        <div class="row row-eq-height">
          <div class="col-md-6">
            <div class="top-bar-wrap top-bar-left">
              <div class="top-bar-text-wrap"><div class="top-bar-text">Indian Wedding, Sangeet Wear, Kurta and Sherwani's</div></div>				</div>
          </div>
          <div class="col-md-6">
            <div class="top-bar-wrap top-bar-right">
                  <div class="top-bar-social-network">
                  <a class=" social-link"
                                 href="https://facebook.com"
                       data-hover="Facebook"
                          target="_blank"
                      >
                          <i class="social-icon fab fa-facebook-square"></i>
                                </a>
                    <a class=" social-link"
                                 href="https://twitter.com"
                       data-hover="Twitter"
                          target="_blank"
                      >
                          <i class="social-icon fab fa-twitter"></i>
                                </a>
                    <a class=" social-link"
                                 href="https://instagram.com"
                       data-hover="Instagram"
                          target="_blank"
                      >
                          <i class="social-icon fab fa-instagram"></i>
                                </a>
                      </div>
        
                          <div class="top-bar-widgets">
                              </div>
                      </div>
          </div>
          </div>
        </div>
    </div>


    <div class="site-navbar  text-white py-2">

      <div class="search-wrap">
        <div class="container">
          <a href="#" class="search-close js-search-close"><span class="icon-close2"></span></a>
          <form action="#" method="post">
            <input type="text" class="form-control" placeholder="Search keyword and hit enter...">
          </form>  
        </div>
      </div>

      <div class="container">
        <div class="d-flex align-items-center justify-content-between">
          <div class="logo">
            <div class="site-logo">
              <a href="${pageContext.request.contextPath}/home" class="js-logo-clone"><img src="${pageContext.request.contextPath}/resources/user/bootstrap/image/rlogo.jpg" style="width: 120px; height: 120px;"></a>
            </div>
          </div>
          <div class="main-nav d-none d-lg-block">
              
            <nav class="site-navigation text-right text-md-center navbar-static-top" role="navigation">
              <mt:categoriesList/>
			 </nav>
          </div>
          

        </div>
      </div>
    </div>
