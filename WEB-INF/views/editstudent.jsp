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
					<%@include file="footer.jsp"%>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<%@ include file="topnavigation.jsp"%>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="row">
					<div class="col-md-6 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>Edit</h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a class="close-link"></a>
									</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<br />
								<form:form commandName="student"
									class="form-horizontal form-label-left input_mask"
									action="/StudentCampus/loginuser/editedstudent">

									<div class="form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12"
											for="first-name">Enrollment ID <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="enroll_no" type="text" id="enrolent-id"
												required="required" class="form-control col-md-7 col-xs-12 " />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12"
											for="first-name">First Name <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="first_name" type="text" id="first-name"
												required="required" class="form-control col-md-7 col-xs-12" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12"
											for="last-name">Last Name <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="last_name" type="text" id="last-name"
												name="last_name" required="required"
												class="form-control col-md-7 col-xs-12" />
										</div>
									</div>
									<div class="form-group">
										<label for="middle-name"
											class="control-label col-md-3 col-sm-3 col-xs-12">Middle
											Name<span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="middle_name" id="middle-name"
												class="form-control col-md-7 col-xs-12" type="text"
												required="required" />
										</div>
									</div>
									<div class="form-group">
										<label for="middle-name"
											class="control-label col-md-3 col-sm-3 col-xs-12">Date
											of Birth <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<input id="middle-name"
												class="form-control col-md-7 col-xs-12" type="date"
												name="dob" required="required"
												value="<fmt:formatDate pattern = "yyyy-MM-dd" value = "${student.date_of_birth}" />">

										</div>
									</div>
									<div class="form-group">
										<label for="middle-name"
											class="control-label col-md-3 col-sm-3 col-xs-12">Date
											of Admission <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<input id="middle-name"
												class="form-control col-md-7 col-xs-12" required="required"
												type="date" name="doa"
												value="<fmt:formatDate pattern = "yyyy-MM-dd" value = "${student.admission_date}" />">

										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12"
											for="enrolent-id">Current year <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="current_year" type="text" id="enrolent-id"
												required="required" class="form-control col-md-7 col-xs-12 " />
										</div>
									</div>




									<div class="form-group">
										<label for="middle-name"
											class="control-label col-md-3 col-sm-3 col-xs-12">Nationality
											<span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="nationality" id="natonality"
												class="form-control col-md-7 col-xs-12" type="text"
												name="nationality" required="required" />
										</div>
									</div>



									<div class="form-group">
										<label for="middle-name"
											class="control-label col-md-3 col-sm-3 col-xs-12">Mother
											Name <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="mother_name" id="mother-name"
												class="form-control col-md-7 col-xs-12" type="text"
												name="mother_name" required="required" />
										</div>
									</div>



									<div class="form-group">
										<label for="middle-name"
											class="control-label col-md-3 col-sm-3 col-xs-12">Parent
											Name <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="parent_name" id="parent-name"
												class="form-control col-md-7 col-xs-12" type="text"
												name="parent_name" required="required" />
										</div>
									</div>


									<div class="form-group">
										<label for="middle-name"
											class="control-label col-md-3 col-sm-3 col-xs-12">Place
											of Birth <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="place_of_birth" id="birthday1"
												class="form-control col-md-7 col-xs-12" type="text"
												name="pob" required="required" />
										</div>
									</div>


									<div class="form-group">
										<label for="middle-name"
											class="control-label col-md-3 col-sm-3 col-xs-12">Last
											Institute <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="last_institute" id="last-i"
												class="form-control col-md-7 col-xs-12" type="text"
												required="required" />
										</div>
									</div>



									<div class="form-group">
										<label for="middle-name"
											class="control-label col-md-3 col-sm-3 col-xs-12">Cast<span
											class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="cast" id="cast"
												class="form-control col-md-7 col-xs-12" type="text"
												name="cast" required="required" />
										</div>
									</div>



									<div class="form-group">
										<label for="middle-name"
											class="control-label col-md-3 col-sm-3 col-xs-12">Subcast<span
											class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="subcast" id="middle-name"
												class="form-control col-md-7 col-xs-12" type="text"
												name="subcast" required="required" />
										</div>
									</div>

									<div class="form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Gender
											*</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:radiobutton path="gender" value="Male" />Male 
											<form:radiobutton path="gender" value="Female" />Female
										</div>
									</div>


									<div class="form-group">
										<label for="middle-name"
											class="control-label col-md-3 col-sm-3 col-xs-12">Branch
											<span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="branch" id="middle-name"
												class="form-control col-md-7 col-xs-12" type="text"
												name="branch" required="required" />
										</div>
									</div>
									<div class="ln_solid"></div>
									<div class="form-group">
										<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
											<button type="button" class="btn btn-primary">Cancel</button>
											<button class="btn btn-primary" type="reset">Reset</button>
											<button type="submit" class="btn btn-success">Submit</button>
										</div>
									</div>

								</form:form>
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
