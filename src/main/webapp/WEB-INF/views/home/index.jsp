<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
	<tiles:insertAttribute name="header" />
     <div id="demo" class="carousel slide" data-ride="carousel">
      
      <!-- The slideshow -->
      <div class="carousel-inner">
          <div class="carousel-item active">
            <div style="background: url('${pageContext.request.contextPath}/resources/user/bootstrap/images/pexels-photo-2293102.jpeg'); background-size: cover;"  class="site-blocks-cover" data-aos="fade">
              <div class="container">
                <div class="row">
                  <div class="col-md-6 ml-auto order-md-2 align-self-start">
                    <div class="site-block-cover-content">
                    <p><a href="#" class="btn btn-black rounded-3" style="background-color: rgba(0, 0, 0, 0.5); text-transform: capitalize; padding: 35px 62px; font-size: 30px;">Wedding</a></p>
                    </div>
                  </div>
                  <div class="col-md-6 order-1 align-self-end">
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="carousel-item ">
            <div style="background: url('${pageContext.request.contextPath}/resources/user/bootstrap/images/pexels-photo-3455741.jpeg'); background-size: cover;"  class="site-blocks-cover" data-aos="fade">
              <div class="container">
                <div class="row">
                  <div class="col-md-6 ml-auto order-md-2 align-self-start">
                    <div class="site-block-cover-content">
                    <p><a href="#" class="btn btn-black rounded-3" style="background-color: rgba(0, 0, 0, 0.5); text-transform: capitalize; padding: 35px 62px; font-size: 30px;">Engagement</a></p>
                    </div>
                  </div>
                  <div class="col-md-6 order-1 align-self-end">
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="carousel-item ">
            <div style="background: url('${pageContext.request.contextPath}/resources/user/bootstrap/images/pexels-photo-5222288.jpeg'); background-size: cover;"  class="site-blocks-cover" data-aos="fade">
              <div class="container">
                <div class="row">
                  <div class="col-md-6 ml-auto order-md-2 align-self-start">
                    <div class="site-block-cover-content">
                    <p><a href="#" class="btn btn-black rounded-3" style="background-color: rgba(0, 0, 0, 0.5); text-transform: capitalize; padding: 35px 62px; font-size: 30px;">Sangeet</a></p>
                    </div>
                  </div>
                  <div class="col-md-6 order-1 align-self-end">
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="carousel-item ">
            <div style="background: url('${pageContext.request.contextPath}/resources/user/bootstrap/images/pexels-photo-6076376.jpeg'); background-size: cover;"  class="site-blocks-cover" data-aos="fade">
              <div class="container">
                <div class="row">
                  <div class="col-md-6 ml-auto order-md-2 align-self-start">
                    <div class="site-block-cover-content">
                    <p><a href="#" class="btn btn-black rounded-3" style="background-color: rgba(0, 0, 0, 0.5); text-transform: capitalize; padding: 35px 62px; font-size: 30px;">Mehendi</a></p>
                    </div>
                  </div>
                  <div class="col-md-6 order-1 align-self-end">
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="carousel-item ">
            <div style="background: url('${pageContext.request.contextPath}/resources/user/bootstrap/images/4318674trend_alert_1.jpg'); background-size: cover;"  class="site-blocks-cover" data-aos="fade">
              <div class="container">
                <div class="row">
                  <div class="col-md-6 ml-auto order-md-2 align-self-start">
                    <div class="site-block-cover-content">
                    <p><a href="#" class="btn btn-black rounded-3" style="background-color: rgba(0, 0, 0, 0.5); text-transform: capitalize; padding: 35px 62px; font-size: 30px;">Haldi</a></p>
                    </div>
                  </div>
                  <div class="col-md-6 order-1 align-self-end">
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="carousel-item ">
            <div style="background: url('${pageContext.request.contextPath}/resources/user/bootstrap/images/pexels-photo-1589216.jpeg'); background-size: cover;"  class="site-blocks-cover" data-aos="fade">
              <div class="container">
                <div class="row">
                  <div class="col-md-6 ml-auto order-md-2 align-self-start">
                    <div class="site-block-cover-content">
                    <p><a href="#" class="btn btn-black rounded-3" style="background-color: rgba(0, 0, 0, 0.5); text-transform: capitalize; padding: 35px 62px; font-size: 30px;">Reception</a></p>
                    </div>
                  </div>
                  <div class="col-md-6 order-1 align-self-end">
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          
      </div>
  
      <!-- Left and right controls -->
      <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
      </a>
    </div>

    <div style="height: 200px; margin-top: 10px; background: url(${pageContext.request.contextPath}/resources/user/bootstrap/images/download.png)">
      <div style="font-size: 20px; " class="row">
        <div class="col-3">
          <p class="centered">SATISFIED CUSTOMERS</p>
        </div>
        <div class="col-3">
          <p class="centered">MADE IN INDIA</p>
        </div>
        <div class="col-3">
          <p class="centered">FREE SHIPPING IN INDIA</p>
        </div>
        <div class="col-3">
          <p class="centered">INTERNATIONAL SHIPPING</p>
        </div>
      </div>
    </div>

	<div>
	      <div style="background: url(${pageContext.request.contextPath}/resources/user/bootstrap/images/collection.png); margin-left: -21.25%;padding: 3.5%">
	      </div>
	      <h2 class="newArrivals">New Arrivals</h2>
	</div>
    </div>
    <div class="container">
	    <div class="row">
	    	<c:forEach var="products" items="${latestProducts }">
	    		<c:set var="photo" value="${products.getPhotos().stream().filter(p -> p.isStatus() && p.isMain()).findFirst().get() }"></c:set>
			    <div class="col-2">
				    <div class="card-group ">
					    <div class="card text-center">
					      	<a href="${pageContext.request.contextPath}/home/product/details/${products.id}" class="card-block stretched-link " style="text-decoration: none;">
						      <img class="card-img-top"  src="${pageContext.request.contextPath}/uploads/images/${photo.name }" width="200" height="200" alt="Card image">
						      <div class="card-body">
						        <h4 class="card-title">${products.name }</h4>
						        <a href="${pageContext.request.contextPath}/home/product/details/${products.id}" class="btn btn-primary stretched-link" style="border: 3px groove; border-color:#FFB75A; border-radius: 15px;">Select Option</a>
						      </div>
						    </a>
					    </div>
				  	</div>
			  	</div>
		  	</c:forEach>
	    </div>
    </div>
<div>
  <div style="background: url(${pageContext.request.contextPath}/resources/user/bootstrap/images/collection.png); margin-left: -25%;padding: 3.5%">
  </div>
  <h2 class="newArrivals">Shop By Occasion</h2>

</div>
  <div style="padding: 1%" class="row">
        <div class=" col-2 item-entry " >
          <a href="#" class="product-item md-height d-block wedding-pro">
            <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/EngagementImage.jpg" alt="Image" class="img-fluid">
          </a>
          <h2 class="item-title"><a href="#">Engagement</a></h2>
        </div>
        <div class=" col-2 item-entry ">
          <a href="#" class="product-item md-height  d-block wedding-pro">
            <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/21.jpg" alt="Image" class="img-fluid">
          </a>
          <h2 class="item-title"><a href="#">Haldi</a></h2>
        </div>
        <div class=" col-4 item-entry  ">
          <a href="#" class="product-item md-height d-block wedding-pro">
            <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/SangeetImage.jpg" alt="Image" class="img-fluid">
          </a>
          <h2 class="item-title"><a href="#">Sangeet</a></h2>
        </div>
        <div class=" col-2 item-entry  ">
          <a href="#" class="product-item md-height d-block wedding-pro">
            <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/WeddingImage.jpg" alt="Image" class="img-fluid">
          </a>
          <h2 class="item-title"><a href="#">Wedding</a></h2>
        </div>
        <div class=" col-2 item-entry  ">
          <a href="#" class="product-item md-height d-block wedding-pro">
            <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/ReceptionImage.jpg" alt="Image" class="img-fluid">
          </a>
          <h2 class="item-title"><a href="#">Reception</a></h2>
        </div>
      </div>
    </div>
    <div>
      <div style="background: url(${pageContext.request.contextPath}/resources/user/bootstrap/images/collection.png); margin-left: -25%;padding: 3.5%">
      </div> 
      <h2 class="newArrivals">Shop By Style</h2>
    </div>
    <div>
      <Div class="container">
       <div style="padding: 1%;" class="row">
      <div class="col-3 item-entry" >
        <a href="#" class="product-item md-height d-block wedding-pro1">
          <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/indowesterns.jpg" alt="Image" class="img-fluid">
        </a>
        <h2 class="item-title"><a href="#">Indo Western's</a></h2>
      </div>
      <div class="col-6 item-entry">
        <a href="#" class="product-item md-height  d-block wedding-pro1">
          <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/jackets.jpg" alt="Image"  class="img-fluid">
        </a>
        <h2 class="item-title"><a href="#">jacket's</a></h2>
      </div>

      <div class="col-3 item-entry">
        <a href="#" class="product-item md-height d-block wedding-pro1 ">
          <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/kurta.jpg" alt="Image" class="img-fluid">
        </a>
        <h2 class="item-title"><a href="#">Kurta</a></h2>
      </div>
      </div>
    </Div>
    <div class="container">
      <div style="padding: 1%; padding-top: 50px;" class="row">
      <div class="col-4 item-entry mb-4 ">
        <a href="#" class="product-item md-height d-block wedding-pro1">
          <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/treditionals.jpg" alt="Image"  class="img-fluid">
        </a>
        <h2 class="item-title"><a href="#">Traditional</a></h2>
      </div>

      <div class="col-2 item-entry mb-4 ">
        <a href="#" class="product-item md-height d-block wedding-pro1">
          <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/classic.jpg" alt="Image" style="background-size: cover; height: 100%;" class="img-fluid">
        </a>
        <h2 class="item-title"><a href="#">Classic</a></h2>
      </div>
      <div class="col-4 item-entry mb-4 ">
        <a href="#" class="product-item md-height d-block wedding-pro1">
          <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/sherwani.jpg" alt="Image" style="background-size: cover; height: 100%;" class="img-fluid">
        </a>
        <h2 class="item-title"><a href="#">Sherwani's</a></h2>
      </div>
      <div class="col-2 item-entry mb-4 ">
        <a href="#" class="product-item md-height d-block wedding-pro1">
          <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/kurtajecketset.jpg" alt="Image" style="background-size: cover; height: 100%;" class="img-fluid">
        </a>
        <h2 class="item-title"><a href="#">Kurta jacket set</a></h2>
      </div>
    </div>
  </div></div>
  </div>

  <div>
    <div style="background: url(${pageContext.request.contextPath}/resources/user/bootstrap/images/collection.png); margin-left: -25%;padding: 3.5%">
    </div> 
    <h2 class="newArrivals">Uniforms</h2>
    <h3 class="newArrivals" style="font-size: 50px; font-weight: bold;">Every uniform corrupts one's character.</h3>
    <div class="container">
    <div style="padding: 1%" class="row ">
      <div class=" col item-entry " >
        <a href="#" class="product-item md-height d-block wedding-pro">
          <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/hospitaimage.png" alt="Image" class="img-fluid">
        </a>
        <h2 class="item-title"><a href="#">Hospital</a></h2>
      </div>
      <div class=" col item-entry ">
        <a href="#" class="product-item md-height  d-block wedding-pro">
          <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/Header-Image-7.jpg" alt="Image" class="img-fluid">
        </a>
        <h2 class="item-title"><a href="#">Hotel</a></h2>
      </div>
      <div class=" col item-entry  ">
        <a href="#" class="product-item md-height d-block wedding-pro">
          <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/Header-Image-3.jpg" alt="Image" class="img-fluid">
        </a>
        <h2 class="item-title"><a href="#">Industrial</a></h2>
      </div>
  </div></div>
<div class="container">
  <div style="padding: 1%" class="row">
    <div class=" col item-entry " >
      <a href="#" class="product-item md-height d-block wedding-pro">
        <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/schooluniformimage.jpg" alt="Image" class="img-fluid">
      </a>
      <h2 class="item-title"><a href="#">School</a></h2>
    </div>
    <div class=" col item-entry ">
      <a href="#" class="product-item md-height  d-block wedding-pro">
        <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/officeimage.jpg" alt="Image" class="img-fluid">
      </a>
      <h2 class="item-title"><a href="#">Office</a></h2>
    </div>
    <div class=" col item-entry  ">
      <a href="#" class="product-item md-height d-block wedding-pro">
        <img src="${pageContext.request.contextPath}/resources/user/bootstrap/images/corporateimage.jpg" alt="Image" class="img-fluid">
      </a>
      <h2 class="item-title"><a href="#">Corporate</a></h2>
    </div>
  </div>
</div>
  </div>
  
	<tiles:insertAttribute name="footer" />
	
  </div>

  <script src="${pageContext.request.contextPath}/resources/user/bootstrap/js/jquery-3.3.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/bootstrap/js/jquery-ui.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/bootstrap/js/popper.min.js"></script>
  <!-- <script src="${pageContext.request.contextPath}/resources/user/bootstrap/js/bootstrap.min.js"></script> -->
  <script src="${pageContext.request.contextPath}/resources/user/bootstrap/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/bootstrap/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/bootstrap/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/bootstrap/js/mega-menu.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/bootstrap/js/main.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/bootstrap/js/bootstrap.min.js"></script>
    
  </body>
</html>