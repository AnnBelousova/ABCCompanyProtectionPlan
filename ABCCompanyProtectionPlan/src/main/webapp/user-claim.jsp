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
					Add claim
				</h1>
				<p>Fill in all the details below</p>
			</div>
			
		</div>
		<div class="row">
			<div class="col">
			    <form action="AddUserClaimController" method="post">
					<label>Enter username :</label> <input type="text" class="form-control" name="username" placeholder="Enter User Name" required>
					<label>Enter serial no : </label> <input type="text" class="form-control" name="serialno" placeholder="Enter Serial No" required>
					<label>Descriptions : </label> 
					<textarea type="text" class="form-control" name="description" placeholder="Description" required></textarea>
					<label>Enter date of claim :</label>  <input type="text" class="form-control" name="dateofclaim" placeholder="Enter Date Of Claim" required>
					<input type="number" name="approvalstatus" value="2" style="display:none"/><br>
					<input type="submit" value="Submit"/>
				</form>		
				</div>
				</div>
				</div>
</body>
</html>