<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>
	<c:set var="context" value="${pageContext.request.contextPath }" />
	<div class="container">
		<h1>Create User</h1>
		<form:form method="post" action="save" role="form">
			<div class="form-group">
				<label for="exampleFormControlInput1">Firstname</label>
				<form:input type="text" class="form-control"
					id="exampleFormControlInput1" path="firstname" />
			</div>
			<div class="form-group">
				<label for="exampleFormControlInput1">Lastname</label>
				<form:input type="text" class="form-control"
					id="exampleFormControlInput1" path="lastname" />
			</div>
			<div class="form-group">
				<label for="exampleFormControlInput1">Email</label>
				<form:input type="email" class="form-control"
					id="exampleFormControlInput1" path="email" />
			</div>
			<button type="submit" class="btn btn-primary btncreate">Create</button>
			<a class="btn btn-primary" href="${context}/userlist" role="button">Cancel</a>
			
		</form:form>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>