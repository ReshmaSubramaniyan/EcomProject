<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>SR Collections</title  >
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="views/login.jsp" type="text/jsp">
<link rel="stylesheet" href="views/Signup.jsp" type="text/jsp">
</head>
 

<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse"data-target="#myNavbar">
<span class="icon-bar"></span> 
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</div>
</div>

<div class="collapse navbar-collapse" id="myNavbar">
<ul class="nav navbar-nav">
<li class="active"><a href="#">Home</a></li>
<li class="dropdown"><a class="dropdown-toggle"data-toggle="dropdown" href="#">Products <span class="Product"></span></a>
<ul class="dropdown-menu">
<li><a href="ViewProduct" id="page2">View</a></li>
<li><a href="Product" id="page2">Add</a></li>
</ul>

<li class="dropdown"></li>
<li class="dropdown-toggle"><a class="dropdown toggle"data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="ViewCategory" id="page2">View</a></li>
<li><a href="Category" id="page2">Add</a></li>
</ul>


<li class="dropdown"><a class="dropdown-toggle"data-toggle="dropdown" href="#" id="page">Supplier<span class="caret"></span></a>
<ul class="dropdown-menu" id="dropdown2">
<li><a href="ViewSupplier" id="page2">View</a></li>
<li><a href="Supplier" id="page2">Add</a></li>
</ul></li>
<li><a href="#">About us</a></li>
</ul>

			 	
<form class="navbar-form navbar-left" action="/action_page.php">
<div class="form-group">
<input type="text" class="form-control" placeholder="Search"name="search">
</div>
<button type="submit" class="btn btn-default">Submit</button>
</form>			


<ul class="nav navbar-nav navbar-right">
<c:url value="/Signup" var="Signup"></c:url>
<c:url value="/login" var="login"></c:url>
<li><a href="${Signup}"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
<li><a href="${login}"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
</ul>
</div>
</nav>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="resources/images/carousel/bag1.jpg" alt="RR" style="width: 1100px; height: 400px">>
    </div>

    <div class="item">
      <img src="resources/images/carousel/bag2.jpg" alt="RR" style="width: 1100px; height: 400px">>
    </div>

    <div class="item">
      <img src="resources/images/carousel/bag3.jpg" alt="RR" style="width: 1100px; height: 400px">>
    </div>
   
    <div class="item">
      <img src="resources/images/carousel/bag5.jpg" alt="RR" style="width: 1100px; height: 400px">>
    </div>
    
    <div class="item">
      <img src="resources/images/carousel/bag6.jpeg" alt="RR" style="width: 1100px; height: 400px">>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div class="row">
		<div id="footer" class="col-sm-12">
			<p class="copyrights">Copyrights 2018-2019 - SR Collections.,</p>
		</div>
	</div>
	<br>
	<br>
	<c:choose>
		<c:when test="${not empty SignupButtonClicked}">

			<%@include file="/WEB-INF/views/Signup.jsp"%>
		</c:when>
		</c:choose>
</body>
</html>