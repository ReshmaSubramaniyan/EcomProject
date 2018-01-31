
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<title>SR Collections</title>
<style type="text/css">
.navbar-default {
	background-color: #669999;
}
body {
	margin: 0;
	padding: 0;
	background: black;
	color: white;
	font-family: Arial;
	font-size: 12px;
}
img.logo {
	padding: 5px;
	margin: -9px;
}
</style>

</head>
<body>
	<nav class="nav navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="#">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewCategory" id="page2">View</a></li>
						<li><a href="Category" id="page2">Add</a></li>
					</ul></li>
					
					<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Supplier<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewCategory" id="page2">View</a></li>
						<li><a href="Category" id="page2">Add</a></li>
					</ul></li>
					
					<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Product<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewCategory" id="page2">View</a></li>
						<li><a href="Category" id="page2">Add</a></li>
					</ul></li>
					
					
				<li><a href="#">About Us</a></li>
			</ul>
			<form class="navbar-form navbar-left" action="/action_page.php">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search"
						name="search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>

			<ul class="nav navbar-nav navbar-right">
				<c:url value="/Signup" var="Signup"></c:url>
				<c:url value="/login" var="login"></c:url>
				<li><a href="${Signup}"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="${login}"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

</body>
</html>