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
	      			<li class="active"><a class="nav-link" href="user-login.jsp">Admin</a></li>
				</ul>
    		</div> -->
			
		</div>
	</nav>
	
		<div class="container p-2">
	
		<div class="row">
			<div class="col">
				<h1>
					Registration
				</h1>
				<p>Fill in all the details below to register</p>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<form  method="post" action="UserController">
					<label>User Name: </label>
						<input type="text" class="form-control" name="username" placeholder="Enter User Name" required/>
					<label>Password:</label>
						<input type="password" name="password" class="form-control" placeholder="Enter Password" required/>
					<label>Cell Phone No:</label>
						<input type="text" name="celno" class="form-control" placeholder="Enter Phone No" required/>
					<label>Email Address:</label>
						<input type="text" name="email" class="form-control" placeholder="Enter Email Address" required/>
					<label>Full Name:</label>
						<input type="text" name="name" class="form-control" placeholder="Enter Full Name" required/>
					<label>Address:</label>		
						<input type="text" name="address" class="form-control" placeholder="Enter Address" required/>
						
					<input type="number" name="isadmin" value="0" style="display:none"/><br>
					
				 		<input type="submit" name="submit" value="Submit">
				</form>
		</div>
	</div>
	</div>
</body>
</html>