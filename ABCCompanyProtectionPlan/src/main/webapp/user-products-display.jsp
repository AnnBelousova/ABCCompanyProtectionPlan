<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Registration</title>
		 
</head>

<body>
	<nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark border-bottom box-shadow">
		<div class="container">
			<a class="navbar-brand" href="#">Protection Plan Management</a>
			
			<div class="navbar-collapse collapse d-sm-inline-flex justify-content-between">
	    		<ul class="navbar-nav flex-grow-1">
	      			<li class="active"><a class="nav-link" href="index.jsp">Home</a></li>
				</ul>
<!-- 				<ul class="navbar-nav flex-grow-1">
	      			<li class="active"><a class="nav-link" href="user-login.jsp"">Admin</a></li>
				</ul>
    		</div> -->
			
		</div>
	</nav>
	<div class="container p-2">
	<% String username = (String) request.getAttribute("username"); %>
		<% String table = (String) request.getAttribute("table");  %>

			<div class="col">
					 <h1>Hello  <%=username %> ! </h1>
						<h1>
							Registered devices
					 </h1>
			</div>	
			<div class="table">	  
			  <%=table %>
			</div>
		 <form method="get" action="user-product-registration.jsp">
    		<button type="submit">Register New Device</button>
		 </form>
	</div>
</body>
</html>