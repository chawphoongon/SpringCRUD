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
.container {
    display: flex;
}

.card {
    margin: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 10px;
    width: 250px; /* Adjust the width as needed */
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.card-body {
    text-align: center;
}

/* Optional styling for card titles and content */
h2 {
    font-size: 20px;
    margin-bottom: 10px;
}

p {
    font-size: 16px;
}

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
				<div class="container">
        <div class="card">
            <div class="card-body">
                <h2>Card 1</h2>
                <p>This is the content of card 1.</p>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h2>Card 2</h2>
                <p>This is the content of card 2.</p>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h2>Card 3</h2>
                <p>This is the content of card 3.</p>
            </div>
        </div>
        <!-- Add more cards as needed -->
    </div>
    <form:form method="post" action="${context}/side" modelAttribute="list" role="form">
    <form id="form1">
		<div class="form-group">
			<label>Title Statement - 254(c)</label>
			<form:input class="form-control" type="text"
				placeholder="Enter Title Statement" path="title" required="true" />
		</div>

		<div class="form-group">
			<label>Added Entry-Personal Name - 700(a,c,d,g)</label>
			<form:input class="form-control" type="text"
				placeholder="Enter Added Entry Personal Name" path="addpersonal"
				required="true" />
		</div>

		<div class="form-group">
			<label>Added Entry-Corporate Name - 710(a,b,c,d)</label>
			<form:input class="form-control" type="text"
				placeholder="Enter Added Entry Corporate Name" path="addcorporate"
				required="true" />
		</div>

		<div class="form-group">
			<label>Main Entry-Corporate Name - 110(a,b,c,d)</label>
			<form:input class="form-control" type="text"
				placeholder="Enter Main Entry Corporate Name" path="maincorporate"
				required="true" />
		</div>

		<!-- Add a "Next" button to navigate to the next form -->
		<button type="button" onclick="showForm(2)">Next</button>
	</form>


	<form id="form2">
		<div class="form-group">
			<label>Main Entry-Personal Name - 100(a,b,c,g,d,q)</label>
			<form:input class="form-control" type="text"
				placeholder="Enter Main Entry Personal Name" path="mainpersonal"
				required="required" />
		</div>

		<div class="form-group">
			<label>General Note - 500(a)</label>
			<form:input class="form-control" type="text"
				placeholder="Enter General Note" path="generalnote"
				required="required" />
		</div>

		<div class="form-group">
			<label>Publicationyear - 260(c)</label>
			<form:input class="form-control" type="text"
				placeholder="Enter Publication Year " path="publicationyear"
				required="required" />
		</div>

		<div class="form-group">
			<label>Publishercode - 260 (b)</label>
			<form:input class="form-control" type="text"
				placeholder="Enter Publisher Code" path="publishercode"
				required="required" />
		</div>


		<!-- Add a "Next" button to navigate to the next form -->
		<button type="button" onclick="showForm(3)">Next</button>
	</form>


	<form id="form3">
		<div class="form-group">
			<label>Main Entry-Personal Name - 100(a,b,c,g,d,q)</label>
			<input class="form-control" type="text"
				placeholder="Enter Main Entry Personal Name" name="mainpersonal"
				required="required" />
		</div>

		<div class="form-group">
			<label>General Note - 500(a)</label>
			<form:input class="form-control" type="text"
				placeholder="Enter General Note" path="generalnote"
				required="required" />
		</div>

		<div class="form-group">
			<label>Publicationyear - 260(c)</label>
			<form:input class="form-control" type="text"
				placeholder="Enter Publication Year " path="publicationyear"
				required="required" />
		</div>

		<div class="form-group">
			<label>Publishercode - 260 (b)</label>
			<form:input class="form-control" type="text"
				placeholder="Enter Publisher Code" path="publishercode"
				required="required" />
		</div>


		<!-- Add a "Next" button to navigate to the next form -->
		<button type="button" onclick="showForm(4)">Next</button>
	</form>


	<form id="form4">
		<div class="form-group">
			<label>Place - 260 (a)</label>
			<form:input class="form-control" type="text"
				placeholder="Enter Publication Place" path="place"
				required="required" />
		</div>

		<div class="form-group">
			<label>Subject Added Entry-Personal Name - 600
				(a,b,c,d,g,v,x,y,z)</label>
			<form:input class="form-control" type="text"
				placeholder="Enter Subject Personal Name" path="spersonal"
				required="required" />
		</div>

		<div class="form-group">
			<label>Subject Added Entry-Coroprate Name - 610
				(a,b,c,d,e,f,h,v,x,y,z)</label>
			<form:input class="form-control" type="text"
				placeholder="Enter Subject Corporate Name" path="scoroprate"
				required="required" />
		</div>
	</form>
		<button type="submit">Submit</button>
	</form:form>
    
		</div>

		
	  
	<footer class="main-footer"> </footer>
	</div>
    <script>
        let currentStep = 1;

        function nextStep(step) {
            document.getElementById(`form${step}`).style.display = "none";
            currentStep = step + 1;

            if (currentStep <= 3) {
                document.getElementById(`form${currentStep}`).style.display = "block";
            }
        }
    </script>
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
