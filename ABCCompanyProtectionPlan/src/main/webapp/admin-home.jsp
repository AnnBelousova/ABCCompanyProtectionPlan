<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Admin Home</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark border-bottom box-shadow">
		<div class="container">
			<a class="navbar-brand" href="#">Protection Plan Management - Admin</a>
			
			<div class="navbar-collapse collapse d-sm-inline-flex justify-content-between">
	    		<ul class="navbar-nav flex-grow-1">
	      			<li class="active"><a class="nav-link" href="AdminHomeController">Home</a></li>
				</ul>
    		</div>
			
			<div class="navbar-collapse collapse d-sm-inline-flex justify-content-between">
	    		<ul class="navbar-nav flex-grow-1">
	      			<li class="active"><a class="nav-link" href="index.jsp">Logout</a></li>
				</ul>
    		</div>
			
		</div>
	</nav>

	<div class="container p-2">
		
	
  	<h1>Welcome Admin!</h1>
  	Select an option below.
  	
  	<div class="container">
  		<div class="row justify-content-center p-2">
	  	<!-- View all user accounts -->
	  	<a href="AdminUserSearchController" class="btn btn-outline-primary btn-lg btn-block" role="button">User Search</a>
	  	</div>
	  	
	  	<div class="row justify-content-center p-2">
	  	<!-- View all products -->
	  	<a href="AdminProductSearchController" class="btn btn-outline-primary btn-lg btn-block" role="button">Product Search</a>
	  	</div>
	  	
	  	<div class="row justify-content-center p-2">
	  	<!-- Add products -->
	  	<a href="AdminAddProductController" class="btn btn-outline-primary btn-lg btn-block" role="button">Add Product</a>
	  	</div>
	  	
	  	<div class="row justify-content-center p-2">
	  	<!-- View claims -->	
	  	<a href="AdminClaimApprovalController" class="btn btn-outline-primary btn-lg btn-block" role="button">Claim Approval</a>
		</div>
		
		<div class="row justify-content-center  p-2">
		<!-- View reports -->
	  	<a href="AdminReportsController" class="btn btn-outline-primary btn-lg btn-block" role="button">View Reports</a>
	  	</div>
  	</div>
  	
	</div>
</body>
</html>