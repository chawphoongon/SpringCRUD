<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Dashboard</title>

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
					<div class="row">
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box">
								<div class="inner">
									<h3>${data.itemcount}</h3>
									<p>E-Books</p>
								</div>
								<div class="icon">
									<i class="nav-icon fas fa-book text-white"></i>
								</div>
								<a href="${context}/reportbibliolist?code=&collection=&serial="
									class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<div class="col-lg-3 col-6">
							<div class="small-box">
								<div class="inner">
									<h3>${data.specialrequestscount}</h3>
									<p>Special Requests</p>
								</div>
								<div class="icon">
									<i class="fa fa-paper-plane text-white"></i>
								</div>
								<a href="${context}/specialrequests" class="small-box-footer">More
									info <i class="fas fa-arrow-circle-right"></i>
								</a>
							</div>
						</div>
						<div class="col-lg-3 col-6">
							<div class="small-box">
								<div class="inner">
									<h3>${data.patronscount}</h3>

									<p>Patron Accounts</p>
								</div>
								<div class="icon">
									<i class="fa fa-users text-white"></i>
								</div>
								<a href="${context}/patronlist" class="small-box-footer">More
									info <i class="fas fa-arrow-circle-right"></i>
								</a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box">
								<div class="inner">
									<h3>${data.readcount }</h3>

									<p>Read Count</p>
								</div>
								<div class="icon">
									<i class="ion ion-pie-graph text-white"></i>
								</div>
								<a href="${context}/report/anonymousreadinghistory"
									class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>					
					<div class="row">
						<section class="col-lg-6 connectedSortable">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">									
										<i class="fas fa-chart-pie mr-1"></i> Read Count Graph By Current Year
									</h3>
								</div>
								<div class="card-body">
									<div class="tab-content p-0">
										<div>
											<canvas id="myChart"></canvas>
										</div>
									</div>
								</div>
							</div>							
						</section>
						<section class="col-lg-6 connectedSortable">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">									
										<i class="fas fa-chart-pie mr-1"></i> Patron Count Graph By Current Year
									</h3>
								</div>
								<div class="card-body">
									<div class="tab-content p-0">
										<div>
											<canvas id="myChart1"></canvas>
										</div>
									</div>
								</div>
							</div>							
						</section>
					</div>
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
	<script>
		$(document).ready(
				
				 function() {
					$.ajax({
						url : "${context}/retrievegraph",
						contentType: 'application/json',
						success: function (list) {
							var count=[];
							var j=0;
							for(let i=1;i<=12;i++)
	                    	 {
	                    	    if(j<list.length)
	                    	    	{
	                    	    	  
	                    	    	  
	                    	    		if(i==list[j].readmonth)
	                    	    			{
	                    	    				count.push(list[j].readcount);
	                    	    				j++;
	                    	    			}
	                    	    		else
	                    	    			{
	                    	    				count.push(0);
	                    	    			}
	                    	    	}
	                    	    else{
	                    	    	count.push(0);
	                    	    }
	                    	    
	                    	 }		                 	
		 					const labels = [
		 					    'January',
		 					    'February',
		 					    'March',
		 					    'April',
		 					    'May',
		 					    'June',
		 					    'July',
		 					    'August',
		 					    'September',
		 					    'October',
		 					    'November',
		 					    'December'					    
		 					  ];

		 					const data = {
		 						labels : labels,
		 						datasets : [ {
		 							label : 'My First dataset',
		 							backgroundColor : 'rgb(56, 175, 195)',
		 							borderColor : 'rgb(56, 175, 195)',
		 							data : count,
		 						} ]
		 					};
		 					const config = {
		 						type : 'line',
		 						data : data,
		 						options : {}
		 					};
		 					const myChart = new Chart(document
		 							.getElementById('myChart'), config);
		                     },
		                 error: function (list) {
		                    		                     		                   
		                 }
					});
					
					
										
						$.ajax({
							url : "${context}/retrievegraphbypatron",
							contentType: 'application/json',
								success: function (list) {
									var count=[];
									var j=0;
									for(let i=1;i<=12;i++)
			                    	 {
			                    	    if(j<list.length)
			                    	    	{
			                    	    	  
			                    	    	  
			                    	    		if(i==list[j].enrollmonth)
			                    	    			{
			                    	    				count.push(list[j].enrollcount);
			                    	    				j++;
			                    	    			}
			                    	    		else
			                    	    			{
			                    	    				count.push(0);
			                    	    			}
			                    	    	}
			                    	    else{
			                    	    	count.push(0);
			                    	    }
			                    	    
			                    	 }
									const labels =[
				 					    'January',
				 					    'February',
				 					    'March',
				 					    'April',
				 					    'May',
				 					    'June',
				 					    'July',
				 					    'August',
				 					    'September',
				 					    'October',
				 					    'November',
				 					    'December'					    
				 					  ];
									
									const data = {
											  labels: labels,
											  datasets: [{
											    axis: 'y',
											    label: 'My First Dataset',
											    data: count,
											    fill: false,
											    backgroundColor: [
											      'rgba(255, 99, 132, 0.2)',
											      'rgba(255, 159, 64, 0.2)',
											      'rgba(255, 205, 86, 0.2)',
											      'rgba(75, 192, 192, 0.2)',
											      'rgba(54, 162, 235, 0.2)',
											      'rgba(153, 102, 255, 0.2)',
											      'rgba(201, 203, 207, 0.2)',
											      'rgba(255, 99, 132, 0.2)',
											      'rgba(255, 159, 64, 0.2)',
											      'rgba(255, 205, 86, 0.2)',
											      'rgba(75, 192, 192, 0.2)',
											      'rgba(54, 162, 235, 0.2)'
											    ],
											    borderColor: [
											      'rgb(255, 99, 132)',
											      'rgb(255, 159, 64)',
											      'rgb(255, 205, 86)',
											      'rgb(75, 192, 192)',
											      'rgb(54, 162, 235)',
											      'rgb(153, 102, 255)',
											      'rgb(201, 203, 207)',
											      'rgb(255, 99, 132)',
											      'rgb(255, 159, 64)',
											      'rgb(255, 205, 86)',
											      'rgb(75, 192, 192)',
											      'rgb(54, 162, 235)'
											      
											    ],
											    borderWidth: 1
											  }]
											};
											const config1 = {
													  type: 'bar',
													  data,
													  options: {
													    indexAxis: 'x',
													  }
													};
											const myChart1 = new Chart(document
						 							.getElementById('myChart1'), config1);
									
									
								},
								error: function (list) {   
									console.log('error');
				                 }
							
						});
																			
				}
				
					
				 );
	</script>
</body>
</html>
