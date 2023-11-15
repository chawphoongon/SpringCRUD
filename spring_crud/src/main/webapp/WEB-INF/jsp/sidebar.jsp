<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style type="text/css">
.lowersidebar {
	background-color: #343a40;
}

.brand-link {
	background-color: #343a40;
	border-bottom: 1px solid #4b545c;
}

.badge {
	background-color: red;
}

a:hover {
	background-color: #39414a;
	color: white;
}
</style>
<c:set var="contextURL" value="${pageContext.request.contextPath }" />
<a href="${contextURL}/" class="brand-link"> <img
	src="${contextURL}/resources/download.jpeg" alt="AdminLTE Logo"
	class="brand-image img-circle elevation-3" style="opacity: .8"> <span
	class="brand-text font-weight-light text-light">stand Alone E-Resource</span>
</a>
<div class="sidebar lowersidebar">
	<nav class="mt-2" id="navcolor">
		<ul class="nav nav-pills nav-sidebar flex-column"
			data-widget="treeview" role="menu" data-accordion="false">			
			<li class="nav-item"><a href="${contextURL}/"
				class="nav-link ll"> <i class="nav-icon fas fa-tachometer-alt text-white"></i>
					<p class="text-white">Dashboard</p>
			</a></li>
			<li class="nav-item"><a href="${contextURL}/user"
				class="nav-link ll"> <i class="nav-icon fas fa-user text-white"></i>
					<p class="text-white">User List</p>
			</a></li>
			<li class="nav-item"><a href="${contextURL}/book"
				class="nav-link ll"> <i class="nav-icon fas fa-book text-white"></i>
					<p class="text-white">Create Biblio</p>
			</a></li>
			<li class="nav-item"><a href="${contextURL}/collection"
				class="nav-link ll"> <i class="nav-icon fas fa-book text-white"></i>
					<p class="text-white">Add Collection</p>
			</a></li>

			<li class="nav-item"><a href="${contextURL}/logout"
				onclick="return confirm('Are you sure?')" class="nav-link ll"> <i
					class=" nav-icon fas fa-sign-out-alt text-white"></i>
					<p class="text-white">Log Out</p>
			</a></li>
		</ul>
	</nav>
</div>
<script src="${contextURL}/resources/plugins/jquery/jquery.min.js"></script>
