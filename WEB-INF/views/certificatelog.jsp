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
							<h2>LOGs</h2>
							<ul class="nav navbar-right panel_toolbox">

								<li class="dropdown"></li>
								<li><a class="close-link"></a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
						<div class="form-group">
										<label for="myInput"
											class="control-label col-md-3 col-sm-3 col-xs-12">Enrollment No.
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<input type="text" id="myInput" class="form-control col-md-7 col-xs-12" onkeyup="myFunction()" placeholder="Search for no.." title="Type in a name">
										</div>
							</div>
							<br>
							<br>
							<br>
							<br>

							<table id="datatable-checkbox"
								class="table table-striped table-bordered bulk_action">
								<thead>
									<tr>

										<th onclick="sortTable(0)">Refrance no.</th>
										<th onclick="sortTable(1)">Enrollment no.</th>
										<th onclick="sortTable(2)">Certificate name</th>
										<th onclick="sortTable(3)">Print date</th>

									</tr>
								</thead>

								<c:forEach items="${ListCertificate}" var="certificate">
									<tbody>
										<tr>
											<td>${certificate.ref_no}</td>
											<td>${certificate.stud_id}</td>
											<td>${certificate.certificate}</td>
											<td><fmt:formatDate value="${certificate.date_time}"
													type="date" pattern="dd-MMM-yyyy" /></td>
										
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
	<script>
	function myFunction() {
		  var input, filter, table, tr, td, i, txtValue;
		  input = document.getElementById("myInput");
		  filter = input.value.toUpperCase();
		  table = document.getElementById("datatable-checkbox");
		  tr = table.getElementsByTagName("tr");
		  for (i = 0; i < tr.length; i++) {
		    td = tr[i].getElementsByTagName("td")[1];
		    if (td) {
		      txtValue = td.textContent || td.innerText;
		      if (txtValue.toUpperCase().indexOf(filter) > -1) {
		        tr[i].style.display = "";
		      } else {
		        tr[i].style.display = "none";
		      }
		    }       
		  }
		}
</script>
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