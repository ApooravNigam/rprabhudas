<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
	<tiles:insertAttribute name="header" />
     
      <div style="padding: 6%">
        <div class="row">
          <div class="col-md-6 col-sm-12">
            <!-- <div class="item-entry punk">
              <a href="#" class="product-item md-height singleproduct d-block">
                <img src="images/21.jpg" alt="Image" class="img-fluid">
              </a>
            </div> -->
            <div id="custCarousel" class="carousel slide punk" data-ride="carousel" align="center">
                <!-- slides -->
                <div class="carousel-inner">
                    <div class="carousel-item active"> <img class="product-item md-height singleproduct d-block" src="https://i.imgur.com/weXVL8M.jpg" alt="Hills"> </div>
                    <div class="carousel-item"> <img class="product-item md-height singleproduct d-block" src="https://i.imgur.com/Rpxx6wU.jpg" alt="Hills"> </div>
                    <div class="carousel-item"> <img class="product-item md-height singleproduct d-block" src="https://i.imgur.com/83fandJ.jpg" alt="Hills"> </div>
                    <div class="carousel-item"> <img class="product-item md-height singleproduct d-block" src="https://i.imgur.com/JiQ9Ppv.jpg" alt="Hills"> </div>
                </div> <!-- Left right --> <a class="carousel-control-prev" href="#custCarousel" data-slide="prev"> <span class="carousel-control-prev-icon"></span> </a> <a class="carousel-control-next" href="#custCarousel" data-slide="next"> <span class="carousel-control-next-icon"></span> </a> <!-- Thumbnails -->
                <ol class="carousel-indicators list-inline">
                    <li class="list-inline-item active"> <a id="carousel-selector-0" class="selected" data-slide-to="0" data-target="#custCarousel"> <img src="https://i.imgur.com/weXVL8M.jpg" class="img-fluid"> </a> </li>
                    <li class="list-inline-item"> <a id="carousel-selector-1" data-slide-to="1" data-target="#custCarousel"> <img src="https://i.imgur.com/Rpxx6wU.jpg" class="img-fluid"> </a> </li>
                    <li class="list-inline-item"> <a id="carousel-selector-2" data-slide-to="2" data-target="#custCarousel"> <img src="https://i.imgur.com/83fandJ.jpg" class="img-fluid"> </a> </li>
                    <li class="list-inline-item"> <a id="carousel-selector-2" data-slide-to="3" data-target="#custCarousel"> <img src="https://i.imgur.com/JiQ9Ppv.jpg" class="img-fluid"> </a> </li>
                </ol>
            </div>
          </div>
          <div class="col-md-6 col-sm-12 ">
            <h2 class="text-black">${productDetails.name }</h2>
            <p>${productDetails.description }</p>
            <hr>
            <p style="margin-bottom: -2%;"><strong>Rs. 4,999.00 &#8211; Rs. 8,999.00</strong></p>      
						
			<div class="singlepageicon">
			    <a href="#"><span class="fa fa-facebook-square" data-toggle="tooltip" data-original-title="Facebook"></span></a>
			    <a href="#"><span class="fa fa-linkedin-square" data-toggle="tooltip" data-original-title="Linkedin"></span></a>
			    <a href="#"><span class="fa fa-twitter-square" data-toggle="tooltip" data-original-title="Twitter"></span></a>
			    <a href="#"><span class="fa fa-tumblr-square" data-toggle="tooltip" data-original-title="Tumblr"></span></a>  
			</div>
            <hr>
            <div class="row">
		        <div class="col-md-3 col-sm-12 form-group">
		          <label>Fabric</label>
		          <select id="fabric" name="fabric_id" class="form-control">
                      <option value="0">Select</option>
                      <c:forEach var="c" items="${fabricList }">
                      	<option value="">${c.name }</option>
                      </c:forEach>
                  </select>
		        </div>
		        <div class="col-md-3 col-sm-12 form-group">
		          <label>Company</label>
		          <select id="company" name="company_id" class="form-control">
                      <option value="0">Select</option>
                      <c:forEach var="c" items="${companyList }">
                      	<option value="">${c.name }</option>
                      </c:forEach>
                  </select>
		        </div>
		        <div class="col-md-3 col-sm-12 form-group">
		          <label>Colour</label>
		          <select id="color" name="color_id" class="form-control">
                      <option value="0">Select</option>
                      <c:forEach var="c" items="${colorList }">
                      	<option value="">${c.name }</option>
                      </c:forEach>
                  </select>
		        </div>
		    </div>
		    <hr>
		    <h3>Size</h3>
		    <h5>Body Type</h5>
		    <div class="row">
		      <div class="col-md-3 col-sm-12">
				  <input type="radio" id="average" name="body_type" value="average">
				  <label>Average</label>
			  </div>
		      <div class="col-md-3 col-sm-12">
				  <input type="radio" id="healthy" name="body_type" value="healthy">
				  <label>Healthy</label>
			  </div>
		      <div class="col-md-3 col-sm-12">
				  <input type="radio" id="athletic" name="body_type" value="athletic">
				  <label>Athletic</label>
			  </div>
		    </div>
		    <br>
		    <h5>Size</h5>
		    <div class="row">
		      <div class="col-md-2 col-sm-13">
				  <input type="radio" name="size" value="36">
				  <span>36</span>
			  </div>
		      <div class="col-md-2 col-sm-13">
				  <input type="radio" name="size" value="38">
				  <span>38</span>
			  </div>
		      <div class="col-md-2 col-sm-13">
				  <input type="radio" name="size" value="40">
				  <span>40</span>
			  </div>
		      <div class="col-md-2 col-sm-13">
				  <input type="radio" name="size" value="42">
				  <span>42</span>
			  </div>
		      <div class="col-md-2 col-sm-13">
				  <input type="radio" name="size" value="44">
				  <span>44</span>
			  </div>
		      <div class="col-md-2 col-sm-13">
				  <input type="radio" name="size" value="46">
				  <span>46</span>
			  </div>
		    </div>
		    <br>
		    <h5>Shoulder Type</h5>
		    <div class="row">
		      <div class="col-md-4 col-sm-12">
				  <input type="radio" id="average" name="shoulder" value="average">
				  <label>Average</label>
			  </div>
		      <div class="col-md-4 col-sm-12">
				  <input type="radio" id="sloping" name="shoulder" value="sloping">
				  <label>Sloping</label>
			  </div>
		    </div>
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