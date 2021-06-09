<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
	<tiles:insertAttribute name="admin_head" />
	<tiles:insertAttribute name="admin_header" />
	<tiles:insertAttribute name="admin_aside" />
  	<!-- Content Wrapper. Contains page content -->
	  <div class="content-wrapper">
	    <!-- Content Header (Page header) -->
	    <section class="content-header">
	      <div class="container-fluid row">
			<!-- Profile Image -->
		    <div class="col-md-6 col-sm-12 card card-primary card-outline">
		      <div class="card-body box-profile">
		        <div class="text-center">
		          <img class="profile-user-img img-fluid img-circle"
		               src="../../dist/img/user4-128x128.jpg"
		               alt="User profile picture">
		        </div>
		
		        <h3 class="profile-username text-center">${account.f_name } ${account.l_name }</h3>
		
		        <p class="text-muted text-center">${account.user_type }</p>
		
		        <ul class="list-group list-group-unbordered mb-3">
		          <li class="list-group-item">
		            <b>Email</b> <a class="float-right">${account.username }</a>
		          </li>
		          <li class="list-group-item">
		            <b>Contact Number</b> <a class="float-right">${account.contact_number }</a>
		          </li>
		        </ul>
		
		        <a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>
		      </div>
		      <!-- /.card-body -->
		    </div>
		    <!-- /.card -->
		    <div class="col-md-6 col-sm-12 card card-primary card-outline">
		    	<div class="card-body login-card-body">
			      <p class="login-box-msg">You are only one step a way from your new password, recover your password now.</p>
			
			      <s:form modelAttribute="account" action="${pageContext.request.contextPath }/home/admin/profile" method="post">
			        <div class="input-group mb-3">
			          <input type="password" class="form-control" placeholder="Current Password">
			          <div class="input-group-append">
			            <div class="input-group-text">
			              <span class="fas fa-lock"></span>
			            </div>
			          </div>
			        </div>
			        <div class="input-group mb-3">
			          <input type="password" class="form-control" placeholder=" New Password">
			          <div class="input-group-append">
			            <div class="input-group-text">
			              <span class="fas fa-lock"></span>
			            </div>
			          </div>
			        </div>
			        <div class="input-group mb-3">
			          <input type="password" class="form-control" name="password" placeholder="Confirm Password">
			          <div class="input-group-append">
			            <div class="input-group-text">
			              <span class="fas fa-lock"></span>
			            </div>
			          </div>
			        </div>
			        <div class="row">
			          <div class="col-12">
			            <button type="submit" class="btn btn-primary btn-block">Change password</button>
			            <s:hidden path="account_id"/>
			          </div>
			          <!-- /.col -->
			        </div>
			      </s:form>
			    </div>
			    <!-- /.login-card-body -->
		    </div>
	      </div>
	      <!-- /.container-fluid -->
	    </section>
	    <!-- /.content -->
	</div>
	<!-- ./wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2021 <a href="#">R Prabhudas</a>.</strong>
    All rights reserved.
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
<!-- jQuery UI 1.11.4 -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/moment/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/resources/admin/dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="${pageContext.request.contextPath}/resources/admin/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/resources/admin/dist/js/demo.js"></script>
</body>
</html>
    