
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

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
			
				<c:url value="/about" var="about"></c:url>
				
							<security:authorize access="hasRole('ROLE_USER')">
							<li><a href="displayartist" id="page">Supplier</a></li>
							<li><a href="albums" id="page">Product</a></li>
							</security:authorize>
							<li>
							<security:authorize access="hasRole('ROLE_ADMIN')">
			
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
					</security:authorize>
								</li>
					
				<ul class="nav navbar-nav navbar-right">
						<c:if test="${pageContext.request.userPrincipal.name==null }">
							<c:url value="/login" var="login"></c:url>
							<li id="right"><a href="${login}"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
									</c:if>
									<c:if test="${pageContext.request.userPrincipal.name!=null }">
									<li id="right"><security:authorize access="hasRole('ROLE_USER')">
					<li><a href="#">Hi ${pageContext.request.userPrincipal.name}!!</a></li>
					<li><a href="myCart"><span
									class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
									<li><a href="History"><span
									class="glyphicon glyphicon-list"></span> Orders</a></li>
					</security:authorize><security:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="adminCart"><span
									class="glyphicon glyphicon-list-alt"></span> Orders</a></li>
					</security:authorize></li>
											
							<c:url value="/logout" var="logout"></c:url>
							<li id="right"><a href="${logout}"><span
									class="glyphicon glyphicon-log-out"></span> Logout</a></li>
									</c:if>
						</ul>
						<c:if test="${pageContext.request.userPrincipal.name==null }">
						<form class="navbar-form navbar-right" action="search" >
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search"
									id="searchbox" name="searchTerm">
							</div>
							<button type="submit" class="btn" id="sbutton">Submit</button>
						</form>
						</c:if>
						<security:authorize access="hasRole('ROLE_USER')">
							<form class="navbar-form navbar-right" action="search" >
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search"
									id="searchbox" name="searchTerm">
							</div>
							<button type="submit" class="btn" id="sbutton">Submit</button>
						</form>
							</security:authorize>
					</div>
				</div>
			</nav>
		</div>
		</div>
		<div class="margin"></div>
</body>
</html>
				
				
				