<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html>
	<tiles:insertAttribute name="admin_head" />
	<tiles:insertAttribute name="admin_header" />
	<tiles:insertAttribute name="admin_aside" />
  <!-- Content Wrapper. Contains page content -->
  	
	
	  <!-- Content Wrapper. Contains page content -->
	  <div class="content-wrapper">
	    <!-- Content Header (Page header) -->
	    <section class="content-header">
	      <div class="container-fluid">
	        <div class="row mb-2">
	          <div class="col-sm-6">
	            <h1>Admin Users</h1>
	          </div>
	          <div class="col-sm-6">
	            <ol class="breadcrumb float-sm-right">
	              <li class="breadcrumb-item"><a href="#">Home</a></li>
	              <li class="breadcrumb-item active">Admin Users</li>
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
	              <div class="card-header">
	                <a href="add_admin_user.html" class="btn btn-success">Add Admin Users</a href="add_admin_user.html">
	              </div>
	              <!-- /.card-header -->
	              <div class="card-body">
	                <table id="example1" class="table table-bordered table-striped">
	                  <thead>
	                  <tr>
	                    <th>ID</th>
	                    <th>Username</th>
	                    <th>Email</th>
	                    <th>Role</th>
	                    <th>Status</th>
	                  </tr>
	                  </thead>
	                  <tbody>
	                  <tr>
	                    <td>Trident</td>
	                    <td>Internet
	                      Explorer 4.0
	                    </td>
	                    <td>Win 95+</td>
	                    <td> 4</td>
	                    <td>X</td>
	                  </tr>
	                  <tr>
	                    <td>Trident</td>
	                    <td>Internet
	                      Explorer 5.0
	                    </td>
	                    <td>Win 95+</td>
	                    <td>5</td>
	                    <td>C</td>
	                  </tr>
	                  <tr>
	                    <td>Trident</td>
	                    <td>Internet
	                      Explorer 5.5
	                    </td>
	                    <td>Win 95+</td>
	                    <td>5.5</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Trident</td>
	                    <td>Internet
	                      Explorer 6
	                    </td>
	                    <td>Win 98+</td>
	                    <td>6</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Trident</td>
	                    <td>Internet Explorer 7</td>
	                    <td>Win XP SP2+</td>
	                    <td>7</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Trident</td>
	                    <td>AOL browser (AOL desktop)</td>
	                    <td>Win XP</td>
	                    <td>6</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Firefox 1.0</td>
	                    <td>Win 98+ / OSX.2+</td>
	                    <td>1.7</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Firefox 1.5</td>
	                    <td>Win 98+ / OSX.2+</td>
	                    <td>1.8</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Firefox 2.0</td>
	                    <td>Win 98+ / OSX.2+</td>
	                    <td>1.8</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Firefox 3.0</td>
	                    <td>Win 2k+ / OSX.3+</td>
	                    <td>1.9</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Camino 1.0</td>
	                    <td>OSX.2+</td>
	                    <td>1.8</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Camino 1.5</td>
	                    <td>OSX.3+</td>
	                    <td>1.8</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Netscape 7.2</td>
	                    <td>Win 95+ / Mac OS 8.6-9.2</td>
	                    <td>1.7</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Netscape Browser 8</td>
	                    <td>Win 98SE+</td>
	                    <td>1.7</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Netscape Navigator 9</td>
	                    <td>Win 98+ / OSX.2+</td>
	                    <td>1.8</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Mozilla 1.0</td>
	                    <td>Win 95+ / OSX.1+</td>
	                    <td>1</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Mozilla 1.1</td>
	                    <td>Win 95+ / OSX.1+</td>
	                    <td>1.1</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Mozilla 1.2</td>
	                    <td>Win 95+ / OSX.1+</td>
	                    <td>1.2</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Mozilla 1.3</td>
	                    <td>Win 95+ / OSX.1+</td>
	                    <td>1.3</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Mozilla 1.4</td>
	                    <td>Win 95+ / OSX.1+</td>
	                    <td>1.4</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Mozilla 1.5</td>
	                    <td>Win 95+ / OSX.1+</td>
	                    <td>1.5</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Mozilla 1.6</td>
	                    <td>Win 95+ / OSX.1+</td>
	                    <td>1.6</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Mozilla 1.7</td>
	                    <td>Win 98+ / OSX.1+</td>
	                    <td>1.7</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Mozilla 1.8</td>
	                    <td>Win 98+ / OSX.1+</td>
	                    <td>1.8</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Seamonkey 1.1</td>
	                    <td>Win 98+ / OSX.2+</td>
	                    <td>1.8</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Gecko</td>
	                    <td>Epiphany 2.20</td>
	                    <td>Gnome</td>
	                    <td>1.8</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Webkit</td>
	                    <td>Safari 1.2</td>
	                    <td>OSX.3</td>
	                    <td>125.5</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Webkit</td>
	                    <td>Safari 1.3</td>
	                    <td>OSX.3</td>
	                    <td>312.8</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Webkit</td>
	                    <td>Safari 2.0</td>
	                    <td>OSX.4+</td>
	                    <td>419.3</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Webkit</td>
	                    <td>Safari 3.0</td>
	                    <td>OSX.4+</td>
	                    <td>522.1</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Webkit</td>
	                    <td>OmniWeb 5.5</td>
	                    <td>OSX.4+</td>
	                    <td>420</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Webkit</td>
	                    <td>iPod Touch / iPhone</td>
	                    <td>iPod</td>
	                    <td>420.1</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Webkit</td>
	                    <td>S60</td>
	                    <td>S60</td>
	                    <td>413</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Presto</td>
	                    <td>Opera 7.0</td>
	                    <td>Win 95+ / OSX.1+</td>
	                    <td>-</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Presto</td>
	                    <td>Opera 7.5</td>
	                    <td>Win 95+ / OSX.2+</td>
	                    <td>-</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Presto</td>
	                    <td>Opera 8.0</td>
	                    <td>Win 95+ / OSX.2+</td>
	                    <td>-</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Presto</td>
	                    <td>Opera 8.5</td>
	                    <td>Win 95+ / OSX.2+</td>
	                    <td>-</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Presto</td>
	                    <td>Opera 9.0</td>
	                    <td>Win 95+ / OSX.3+</td>
	                    <td>-</td>
	                    <td>A</td>
	                  </tr>
	                  <tr>
	                    <td>Other browsers</td>
	                    <td>All others</td>
	                    <td>-</td>
	                    <td>-</td>
	                    <td>U</td>
	                  </tr>
	                  </tbody>
	                  <tfoot>
	                  <tr>
	                    <th>ID</th>
	                    <th>Username</th>
	                    <th>Email</th>
	                    <th>Role</th>
	                    <th>Status</th>
	                  </tr>
	                  </tfoot>
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
	  <footer class="main-footer">
	    <div class="float-right d-none d-sm-block">
	      <b>Version</b> 3.0.5
	    </div>
	    <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">Yumitos</a>.</strong> All rights
	    reserved.
	  </footer>
	
	  <!-- Control Sidebar -->
	  <aside class="control-sidebar control-sidebar-dark">
	    <!-- Control sidebar content goes here -->
	  </aside>
	  <!-- /.control-sidebar -->
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
    $("#example1").DataTable({
      "responsive": true,
      "autoWidth": false,
    });
    $('#example2').DataTable({
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
