<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
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
	            <h1>Fabrics</h1>
	          </div>
	          <div class="col-sm-6">
	            <ol class="breadcrumb float-sm-right">
	              <li class="breadcrumb-item"><a href="#">Home</a></li>
	              <li class="breadcrumb-item active">Fabrics</li>
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
	          <c:if test="${error != null }">
	          	<div class="alert alert-danger alert-dismissible">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
	                  ${error }
                </div>
	          </c:if>
	            <div class="card">
	              <div class="card-header">
	                <a href="${pageContext.request.contextPath}/home/admin/add_fabric" class="btn btn-success">Add Fabric</a>
	              </div>
	              <!-- /.card-header -->
	              <div class="card-body">
	                <table id="categoryList" class="table table-bordered table-striped">
	                  <thead>
	                  <tr>
	                    <th>ID</th>
	                    <th>Name</th>
	                    <th>Company</th>
	                    <th>Sub Company</th>
	                    <th>Quality Number</th>
	                    <th>SKU</th>
	                    <th>Colors</th>
	                    <th>Length (in meters)</th>
	                    <th>Width (in meters)</th>
	                    <th>Price Per Meter</th>
	                    <th>Status</th>
	                    <th>Action</th>
	                  </tr>
	                  </thead>
	                  <tbody>
	                  <c:forEach var="c" items="${fabric }">
	                  	<c:set var="sub" value="${c.company.getCompanies().stream().filter(p -> p.getId() == c.sub_company_id).findFirst().get() }"></c:set>
		                  <tr>
		                    <td>${c.id }</td>
		                    <td>${c.name }</td>
		                    <td>${c.company.getName() }</td>
		                    <td>${sub.name }</td>
		                    <td>${c.quality_number }</td>
		                    <td>${c.sku }</td>
		                    <td>${c.colors.name }</td>
		                    <td>${c.length }</td>
		                    <td>${c.width }</td>
		                    <td>${c.price_per_meter }</td>
		                    <td>${c.status ? 'Show' : 'Hide' }</td>
		                    <td>
		                    	<a href="${pageContext.request.contextPath}/home/admin/edit_fabric/${c.id}">Edit</a> 
		                    	| 
		                    	<a href="${pageContext.request.contextPath}/home/admin/delete_fabric/${c.id}" onclick="return confirm('Are you sure?')">Delete</a>
		                    	|
		                    	<a href="${pageContext.request.contextPath}/home/admin/photo/fabric/${c.id}">Photos</a>
		                    	|
		                    	<a href="${pageContext.request.contextPath}/home/admin/photo/add/fabric/${c.id}">Add Photo</a> 
		                    </td>
		                  </tr>
	                  </c:forEach>
	                  </tbody>
	                </table>
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
      "searching": true,
      "ordering": true,
      "info": false,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
</body>
</html>
