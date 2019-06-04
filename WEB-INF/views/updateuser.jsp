<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/favicon.ico" type="image/ico" />

<title>EzDoc|</title>

<!-- Bootstrap -->
<link
	href="<c:url value="/resources/bootstrap/dist/css/bootstrap.min.css"/>"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="<c:url value="/resources/font/css/font-awesome.min.css"/>"
	rel="stylesheet">
<!-- Custom Theme Style -->
<link href="<c:url value="/resources/build/css/custom.css"/>"
	rel="stylesheet">
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="/StudentCampus/wellcome.html" class="site_title">
							<span>EZdoc</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<%@include file="menuprofile.jsp"%>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<%@include file="sidebar.jsp"%>

					<!-- /menu footer buttons -->
					<%@include file="footer.jsp"%>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<%@ include file="topnavigation.jsp"%>


			<!-- page content -->
			<div class="right_col" role="main">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h2>USERS</h2>
							<ul class="nav navbar-right panel_toolbox">

								<li class="dropdown"></li>
								<li><a class="close-link"></a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">

							<table id="datatable-checkbox"
								class="table table-striped table-bordered bulk_action">
								<thead>
									<tr>

										<th>User ID</th>
										<th>User Name</th>
										<th>Created date</th>
										<th>User Role</th>
										<th>Modified By</th>
										<th>Delete</th>

									</tr>
								</thead>

								<c:forEach items="${ListUsers}" var="user">
									<tbody>
										<tr>
											<td>${user.USER_ID}</td>
											<td>${user.USER_NAME}</td>
											<td><fmt:formatDate value="${user.CREATED_DATE}"
													type="date" pattern="dd-MMM-yyyy" /></td>
											<td>${user.USER_ROLE}</td>
											<td>${user.MODIFIED_BY}</td>

											<td><a
												href="/StudentCampus/loginuser/delete/${user.USER_ID}">
													<button type="button" class="btn btn-round btn-warning">Delete</button>
											</a></td>
										</tr>


									</tbody>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>








			</div>
		</div>
	</div>
	<script src="<c:url value="/resources/jquery/dist/jquery.min.js"/>"></script>
	<!-- Bootstrap -->
	<script
		src="<c:url value="/resources/bootstrap/dist/js/bootstrap.min.js"/>"></script>
	<!-- FastClick -->
	<script src="<c:url value="/resources/fastclick/lib/fastclick.js"/>"></script>
	<!-- Custom Theme Scripts -->
	<script src="<c:url value="/resources/build/js/custom.min.js"/>"></script>

</body>
</html>