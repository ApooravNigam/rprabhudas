<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
	<tiles:insertAttribute name="header" />
    
    <div class="custom-border-bottom py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-6 mb-0"><a href="${pageContext.request.contextPath}/home">Home</a> <span class="mx-2 mb-0">/</span> <strong
              class="text-black">${category.name }</strong></div>
          <div class="col-md-6 mb-0" style="text-align: right;"><p>${category.productList.size() } products are available.</p></div>
        </div>
      </div>
    </div> 
    
    <div class="container">
      <h3>${category.name }</h3>
      <!-- <h3 class="h3 related" >Related Products</h3> -->
      <div class="row">
      	<c:forEach var="product" items="${category.productList }">
      	<c:set var="photo" value="${product.getPhotos().stream().filter(p -> p.isStatus() && p.isMain()).findFirst().get() }"></c:set>
        <div class="col-md-3 col-sm-6">
          <div class="product-related">
            <div class="product-image3">
              <a href="${pageContext.request.contextPath}/home/product/details/${product.id}">
                <img class="pic-1" src="${pageContext.request.contextPath}/uploads/images/${photo.name }">
                <img class="pic-2" src="${pageContext.request.contextPath}/uploads/images/${photo.name }">
              </a>

            </div>
            <div class="product-content">
              <h5><a href="${pageContext.request.contextPath}/home/product/details/${product.id}">${product.name }</a></h5>
              <a href="${pageContext.request.contextPath}/home/product/details/${product.id}" class="btn btn-primary stretched-link" style="border: 3px groove; border-color:#FFB75A; border-radius: 15px;">Select Option</a>
            </div>
          </div>
        </div>
        </c:forEach>
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