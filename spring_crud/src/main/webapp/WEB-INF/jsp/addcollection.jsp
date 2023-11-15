<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Add Collection</title>

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

.textheader {
	color: white;
	background-color: #266edb;
}

.btn {
	color: white;
	background-color: #266edb;
	border: 0px;
}

.btn:hover {
	color: white;
	background-color: #667cc4;
	border: 0px;
}

.itag {
	color: white;
	background-color: #266edb;
}
</style>
</head>

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


			<section class="content-header">
				<div class="container-fluid"></div>
			</section>


			<section class="content">
				<div class="container-fluid">
					<div class="row">

						<div class="col-md-12">
							<div class="card">

								<div class="card-header textheader">
									<h3 class="card-title">Create Collection</h3>
								</div>

								<form:form method="post" name="myForm" action="savecollection" modelAttribute="list"
									role="form">
									<div class="row">
										<!-- card left row -->
										<div class="col-md-6">
											<!-- card left column -->

											<div class="card-body">

												<label>Collection</label>
												<div class="form-group input-group">

													<div class="input-group-prepend">
														<span class="input-group-text itag"><i
															class="fa fa-chart-pie"></i> </span>
													</div>
													<form:input type="text" class="form-control" id=""
														name="fname" placeholder="Enter Collection Name"
														path="collection" required="required" />
												</div>



											</div>


										</div>
										<!-- card left column -->

									</div>
									<!-- card row column -->

									<div class="row">
										<div class="col-md-6">
											<p align="center" class="text-danger">${alert}</p>
											<p align="center" class="text-success">${successful}</p>
										</div>
									</div>




									<div class="card-footer">
										<button type="submit" onsubmit="return validateForm()"
											class="btn btn">create Collection</button>
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
	<script type="text/javascript">
		$(document).ready(function() {
			bsCustomFileInput.init();
		});
	</script>
</body>
</html>