<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><!DOCTYPE html>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="/StudentCampus/loginuser" method="post">
              <h1>Login</h1>
              <div>
                <input type="text" class="form-control" placeholder="UserID" required="required" name="id"/>
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="required" name ="pwd"/>
              </div>
              <div>
                <input type="submit" value="Login" class="btn btn-primary">
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <div>
                  <h1>EZDoc</h1>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
