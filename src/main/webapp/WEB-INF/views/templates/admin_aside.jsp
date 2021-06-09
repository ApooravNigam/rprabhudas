<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="${pageContext.request.contextPath}/resources/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">R Prabhudas</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
		    <li class="nav-item">
		      <a href="${pageContext.request.contextPath}/home/admin/" class="nav-link">
		        <i class="nav-icon fas fa-th"></i>
		        <p>Dashboard</p>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a href="${pageContext.request.contextPath}/home/admin/user_management" class="nav-link">
		        <i class="nav-icon fas fa-th"></i>
		        <p>
		           Admin and User Management
		        </p>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a href="${pageContext.request.contextPath}/home/admin/profile" class="nav-link">
		        <i class="nav-icon fas fa-th"></i>
		        <p>
		           Admin Profile
		        </p>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a href="${pageContext.request.contextPath}/home/admin/role_management" class="nav-link">
		        <i class="nav-icon fa fa-user"></i>
		        <p> Roles Management</p>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a href="${pageContext.request.contextPath}/home/admin/orders" class="nav-link">
		        <i class="nav-icon fa fa-user"></i>
		        <p> Orders</p>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a href="${pageContext.request.contextPath}/home/admin/companies" class="nav-link">
		        <i class="fa fa-cutlery nav-icon"></i>
		        <p>Companies</p>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a href="${pageContext.request.contextPath}/home/admin/fabrics" class="nav-link">
		        <i class="fa fa-car nav-icon"></i>
		        <p>Fabric</p>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a href="${pageContext.request.contextPath}/home/admin/products" class="nav-link">
		        <i class="fa fa-envelope nav-icon"></i>
		        <p>Products</p>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a href="${pageContext.request.contextPath}/home/admin/colors" class="nav-link">
		        <i class="fa fa-eye-dropper nav-icon"></i>
		        <p>Colors</p>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a href="${pageContext.request.contextPath}/home/admin/designs" class="nav-link">
		        <i class="fa fa-archive nav-icon"></i>
		        <p>Design</p>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a href="${pageContext.request.contextPath}/home/admin/categories" class="nav-link">
		        <i class="fa fa-calendar nav-icon"></i>
		        <p>Category</p>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a href="${pageContext.request.contextPath}/home/admin/measurements" class="nav-link">
		        <i class="fa fa-tape nav-icon"></i>
		        <p>
		          Measurements
		        </p>
		      </a>
		    </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
