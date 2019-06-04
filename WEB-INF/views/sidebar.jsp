<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
<body>
	<!-- sidebar menu -->
	<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
		<div class="menu_section">
			<h3>General</h3>
			<ul class="nav side-menu">
				<c:if test="${user.USER_ROLE == 'Admin'}">
					<li><a><i class="fa fa-graduation-cap"></i> Students <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="/StudentCampus/loginuser/searchstudent.html">Edit
									Students</a></li>
							<li><a href="/StudentCampus/loginuser/createstudent.html">Create
									Students</a></li>
							<li><a href="/StudentCampus/loginuser/studentlist.html">List
									Students</a></li>
									<li><a href="/StudentCampus/loginuser/certificatelist.html">Certificate logs</a></li>
						</ul>
					<li><a><i class="fa fa-users"></i> Users <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="/StudentCampus/loginuser/createuser.html">Create
									Users</a></li>
							<li><a href="/StudentCampus/loginuser/updateuser.html">Update
									Users</a></li>
						</ul>
				</c:if>
				
				<li><a><i class="fa fa-file-pdf-o"></i>Print<span
						class="fa fa-chevron-down"></span></a>
					<ul class="nav child_menu">
						<li><a href="/StudentCampus/loginuser/bonafide.html">Bonafide</a></li>
						<li><a href="/StudentCampus/lc.html">Leaving Certificate </a></li>
						<br>
						<br>
					</ul>
			</ul>

		</div>
	</div>

</body>
</html>