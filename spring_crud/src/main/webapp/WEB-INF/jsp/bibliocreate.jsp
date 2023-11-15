<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Add User</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="resources/plugins/fontawesome-free/css/all.min.css">

<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

<link rel="stylesheet" href="resources/dist/css/adminlte.min.css">

<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<style type="text/css">
aside {
	background-color: #266edb;
}

.header {
	background-color: #266edb;
}

.textheader {
	color: white;
}

.btncreate {
	background-color: #266edb;
	color: white;
}

.btncreate:hover {
	background-color: #667cc4;
	color: white;
}

.old i {
	margin-left: -30px;
	cursor: pointer;
}

.oldpassword {
	width: 99%;
	height: 40px;
	border-radius: 5px;
	border: 1px solid #CED4DA;
	padding: 10px;
}

.oldpassword:hover {
	border-color: skyblue;
}

.combo {
	width: 99%;
}
</style>
</head>
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

		<div class="content-wrapper">
			<section class="content-header">
				<div class="container-fluid"></div>
			</section>
			<section class="content">
				<div class="container-fluid">
					<div class="row">

						<div class="col-md-12">
							<div class="card">
								<div class="card-header header">
									<h3 class="card-title textheader">Create Account</h3>
								</div>

								<form:form method="post" action="${context}/bsave" modelAttribute="list" role="form">
									<div class="row">
										<!-- card row -->
										<div class="col-md-6">
											<!-- card left column -->
											<div class="card-body">
												<div class="form-group">
													<label>Title</label>
													<form:input type="text" class="form-control" id=""
														placeholder="Enter Full Name" path="title"
														required="required"/>
												</div>
												<div class="form-group">
													<label>Author</label>
													<form:input type="text" class="form-control" id=""
														placeholder="Enter User Name" path="author"
														required="required" />
												</div>
												<div class="form-group">
													<label>Coauthor</label>
													<form:input type="text" class="form-control" id=""
														placeholder="Enter Email" path="coauthor" required="required" />
												</div>
												<div class="form-group">
													<label>Physical Desc</label>
													<form:input type="text" class="form-control" id=""
														placeholder="Enter Email" path="physicaldesc" required="required" />
												</div>
												<div class="form-group">
													<label>Summary</label>
													<form:input type="text" class="form-control" id=""
														placeholder="Enter Email" path="summary" required="required" />
												</div>
											</div>

										</div>
										<!-- card left column -->

										<div class="col-md-6">
											<!-- card right column -->
											<div class="card-body">
												<%-- <div class="form-group">
													<label>Role</label>
													<form:select class="form-control combo" path="rolename">
														<c:forEach var="user" items="${list}">
															<option value="${user.rolename}">${user.rolename}</option>
														</c:forEach>
													</form:select>
												</div> --%>
												
												</div>

												<button type="submit" class="btn btncreate"
													onclick="return Validate()" style="float: bottom;">create
													Biblio</button>
											</div>
											<!-- card body -->
										</div>
										<!-- card right column -->
									</div>
								</form:form>
							</div>
							<!-- card -->
						</div>
						<!-- column -->

					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</section>

		</div>
		<!-- wrapper -->

		<footer class="main-footer"> </footer>


		<aside class="control-sidebar control-sidebar-dark"></aside>

	</div>




	<script src="resources/plugins/jquery/jquery.min.js"></script>
	<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
	<script src="resources/dist/js/adminlte.min.js"></script>
	<script src="resources/dist/js/demo.js"></script>
</body>
</html>

