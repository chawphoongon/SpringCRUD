<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hello, world!</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="resources/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<!-- <link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"> -->
<!-- iCheck -->
<link rel="stylesheet"
	href="resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet" href="resources/plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="resources/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="resources/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- summernote -->
<link rel="stylesheet"
	href="resources/plugins/summernote/summernote-bs4.min.css">
</head>
<style>
.small-box {
	background-color: #437eb6;
	color: white;
}
</style>
<c:set var="context" value="${pageContext.request.contextPath }" />
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="btton"><i class="fas fa-bars"
						style="color: black;"></i></a></li>
			</ul>
			<%@ include file="navbar.jsp"%>

		</nav>

		<aside class="main-sidebar elevation-4">
			<%@ include file="sidebar.jsp"%>
		</aside>

		<aside class="main-sidebar elevation-4">
			<%@ include file="sidebar.jsp"%>
		</aside>

		<div class="content-wrapper">
			<div class="content-header"></div>
		
		<section class="content">
				<div class="container-fluid">
				<a href="userform/create" class="btn btn-primary float-right m-3">Create</a>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">First</th>
				<th scope="col">Last</th>
				<th scope="col">Email</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>	
			<c:forEach var="data" items="${list}" varStatus="c">
				<tr>
					<td>${c.index+1}</td>
					<td>${data.firstname}</td>
					<td>${data.lastname}</td>
					<td>${data.email}</td>
				 	<td>
				 	<a href="userform/edit/${data.id}" class="btn btn-dark">Edit</a>
				 	<a href="userform/delete/${data.id}" onclick="return confirm('Are you sure?')" class="btn btn-dark">Delete</a>				
					</td>
				</tr>

			</c:forEach>
		</tbody>
	</table>
				</div>
		</section>
			
		</div>

		<footer class="main-footer"> </footer>
	</div>
	<script src="resources/plugins/jquery/jquery.min.js"></script>
	<script src="resources/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="resources/plugins/chart.js/Chart.min.js"></script>
	<script src="resources/plugins/summernote/summernote-bs4.min.js"></script>
	<script
		src="resources/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
	<script src="resources/dist/js/adminlte.js"></script>
		
</body>
</html>
