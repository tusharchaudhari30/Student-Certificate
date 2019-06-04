<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
							<span>EzDoc</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<%@include file="menuprofile.jsp"%>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<%@include file="sidebar.jsp"%>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<%@ include file="footer.jsp"%>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<%@ include file="topnavigation.jsp"%>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="jumbotron">
					  <div class="container text-center">
					    <h1>WelCome</h1>      
					  </div>
				</div>
				<div class="container">    
				  <div class="row">
				    <div class="col-sm-4">
				      <div class="card" style="width:400px">
							  <img src="<c:url value="/resources/images/pdf.png"/>" alt="..." class="card-img-top" style="width:75%">
							  <div class="card-body">
							    <h4 class="card-title">No of Bonafide Printed : ${count.bonafide_count}</h4>

							    <a href="/StudentCampus/loginuser/bonafide.html" class="btn btn-primary">Bonafide</a>
							  </div>
							</div>
					    </div>
				    
				    <div class="col-sm-4"> 
				    <div class="card" style="width:400px">
							  <img src="<c:url value="/resources/images/img_avatar1.png"/>" alt="..." class="card-img-top" style="width:75%">
							  <div class="card-body">
							    <h4 class="card-title">No of Student : ${count.stud_count}</h4>

							    <a href="/StudentCampus/loginuser/studentlist.html" class="btn btn-primary">Student</a>
							  </div>
							</div>
				    </div>
				    <div class="col-sm-4"> 
				      <div class="card" style="width:400px">
							  <img src="<c:url value="/resources/images/pdf.png"/>" alt="..." class="card-img-top" style="width:75%">
							  <div class="card-body">
							    <h4 class="card-title">No of LC Printed : ${count.lc_count}</h4>

							    <a href="/StudentCampus/lc.html" class="btn btn-primary">LC</a>
							  </div>
							</div>
				    </div>
				  </div>
				</div>
				
				
			
			
			</div>
	</div>
	<!-- <link href="<c:url value="/resources/bootstrap/dist/css/bootstrap.min.css"/>" rel="stylesheet"> -->
	<!-- jQuery -->
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
