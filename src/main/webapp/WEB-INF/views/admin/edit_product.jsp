<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<tiles:insertAttribute name="admin_head" />
	<tiles:insertAttribute name="admin_header" />
	<tiles:insertAttribute name="admin_aside" />
  <!-- Content Wrapper. Contains page content -->
  	
	  <div class="content-wrapper">
	    <!-- Content Header (Page header) -->
	    <section class="content-header">
	      <div class="container-fluid">
	        <div class="row mb-2">
	          <div class="col-sm-6">
	            <h1>Edit Product</h1>
	          </div>
	          <div class="col-sm-6">
	            <ol class="breadcrumb float-sm-right">
	              <li class="breadcrumb-item"><a href="#">Home</a></li>
	              <li class="breadcrumb-item active">Edit Product</li>
	            </ol>
	          </div>
	        </div>
	      </div><!-- /.container-fluid -->
	    </section>
	
	    <!-- Main content -->
	    <section class="content">
	      <div class="container-fluid">
	        <div class="row">
	          <div class="col-12">
	            <div class="card">
	              <div class="card-body">
				      
				      <s:form modelAttribute="products" action="${pageContext.request.contextPath }/home/admin/edit_product" method="post">
					    <div class="row">
					        <div class="col-md-3 col-sm-12 form-group">
					          <label>Name</label>
					          <s:input path="name" name="name" cssClass="form-control" id="name" required="required"/>
					        </div>
					        <div class="col-md-3 col-sm-12 form-group">
					          <label>Category</label>
					          <s:select path="category.category_id" class="form-control">
		                          <c:forEach var="cat" items="${category }">
					          		<optgroup label="${cat.name }"></optgroup>
		                          	<c:if test="${!cat.categories.isEmpty() }">
		                          		<c:forEach var="subCat" items="${cat.categories }">
		                          			<option value="${subCat.category_id }" ${products.category.category_id == subCat.category_id ? 'selected="selected"' : "" }>${subCat.name }</option>
		                          		</c:forEach>
		                          	</c:if>
		                          </c:forEach>
		                      </s:select>
					        </div>
					        <div class="col-md-3 col-sm-12 form-group">
					          <label>Fabric</label>
					          <s:select path="fabric.id" class="form-control">
		                          <c:forEach var="fab" items="${fabric }">
		                          	<option value="${fab.id }">${fab.name }</option>
		                          	<option value="${fab.id }" ${products.fabric.id == fab.id ? 'selected="selected"' : "" }>${fab.name }</option>
		                          </c:forEach>
		                      </s:select>
					        </div>
					        <div class="col-md-3 col-sm-12 form-group">
					          <label>Description</label>
					          <s:textarea path="description" name="description" cssClass="form-control" id="description" required="required"/>
					        </div>
				        </div>
				        <div class="row">
					        <div class="col-md-3 col-sm-12 form-group">
					          <label><s:checkbox path="featured"/> Featured</label>
					        </div>
					        <div class="col-md-3 col-sm-12 form-group">
					          <label><s:checkbox path="status"/> Status</label>
					        </div>
				        </div>
				        <div class="row">
				          <div class="col-3">
				            <button type="submit" class="btn btn-primary btn-block">Save</button>
			            	<s:hidden path="id"/>
				          </div>
				          <!-- /.col -->
				        </div>
				      </s:form>
	              </div>
	              <!-- /.card-body -->
	            </div>
	            <!-- /.card -->
	          </div>
	          <!-- /.col -->
	        </div>
	        <!-- /.row -->
	      </div>
	      <!-- /.container-fluid -->
	    </section>
	    <!-- /.content -->
	</div>
	<!-- ./wrapper -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2021 <a href="#">R Prabhudas</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.0.5
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/resources/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/resources/admin/dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
    $('#categoryList').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
</body>
</html>
