<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<% String table = (String) request.getAttribute("table"); %>
<title>Admin Reports</title>
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
			
		</div>
	</nav>
	
	<div class="container p-2">
		<div class="row">
			<div class="col">
				<h1>
					Admin Reports
				</h1>
			</div>
			
		</div>
		
		<div class="row">
			<%= table %>
		</div>
	
	</div>

</body>
</html>