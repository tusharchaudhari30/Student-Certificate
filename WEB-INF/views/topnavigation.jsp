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
	<div class="top_nav">
		<div class="nav_menu">
			<nav>
				<div class="nav toggle">
					<a id="menu_toggle"><i class="fa fa-bars"></i></a>
				</div>

				<ul class="nav navbar-nav navbar-right">
					<li class=""><a href="javascript:;"
						class="user-profile dropdown-toggle" data-toggle="dropdown"
						aria-expanded="false"> <img src="images/img.jpg" alt="">${user.USER_NAME}
							<span class=" fa fa-angle-down"></span>
					</a>
						<ul class="dropdown-menu dropdown-usermenu pull-right">
							<li><a href="javascript:;"> Profile</a></li>
							<li><a href="/StudentCampus/login.html"> <span>Settings</span>
							</a></li>
							<li><a href="javascript:;">Help</a></li>
							<li><a href="/StudentCampus/loginuser/logout"><i
									class="fa fa-sign-out pull-right"></i> Log Out</a></li>
						</ul></li>
			</nav>
		</div>
	</div>

</body>
</html>