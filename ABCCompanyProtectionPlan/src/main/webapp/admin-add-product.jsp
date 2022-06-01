<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Admin Add Products</title>
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
					Add Product
				</h1>
				<p>Fill in all the details below to add a product</p>
			</div>
			
		</div>
		<div class="row">
			<div class="col">
				<form method="post" action="AdminAddProductController">
					<div class="form-group">
						<label>Serial Number:</label>
						<input type="text" class="form-control" name="serialno" placeholder="Enter Serial Number">
						<br>
						<label>Product Name:</label>
						<input type="text" class="form-control" name="productname" placeholder="Enter Product Name">
						<br>
						<label>Model:</label>
						<input type="text" class="form-control" name="model" placeholder="Enter Model">
						<br>
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
							
				</form>
			</div>
		</div>
	</div>

</body>
</html>