<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Home</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark border-bottom box-shadow">
		<div class="container">
			<a class="navbar-brand" href="index.jsp">Protection Plan Management</a>
			
			<div class="navbar-collapse collapse d-sm-inline-flex justify-content-between">
	    		<ul class="navbar-nav flex-grow-1">
	      			<li class="active"><a class="nav-link" href="index.jsp">Home</a></li>
				</ul>
<!-- 				<ul class="navbar-nav flex-grow-1">
	      			<li class="active"><a class="nav-link" href="user-login.jsp">Admin</a></li>
				</ul>
    		</div> -->
			
		</div>
	</nav>

	<div class="container p-2">
  	<h1 style="text-align:center">Hello user! <br> If you want to get a protection plan, please login or register if you do not have account</h1>
  	
  	<div class="container">
  		<div class="row justify-content-center p-2">
	  	<!-- View all user accounts -->
	  	<a href="user-registration.jsp" class="btn btn-outline-primary btn-lg btn-block" role="button">Registration</a>
	  	</div>
	  	
	  	<div class="row justify-content-center p-2">
	  	<!-- View all products -->
	  	<a href="user-login.jsp" class="btn btn-outline-primary btn-lg btn-block" role="button">Login</a>
	  	</div>

  	</div>
	</div>
</body>
</html>