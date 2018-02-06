<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
  .navbar-default {
    background-color:black;
    border-color: white;
}

.navbar-default .navbar-brand {
    color: white;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
    color: gray;
}
.navbar-default .navbar-nav > li > a {
    color: white;
}
.nav .open>a, .nav .open>a:focus, .nav .open>a:hover{
    background-color: gray;
}
.navbar, .dropdown-menu{
background:black ;
border: none;

}

.nav>li>a, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover, .dropdown-menu>li>a, .dropdown-menu>li{
  border-bottom: 3px solid transparent;
}
.nav>li>a:focus, .nav>li>a:hover,.nav .open>a, .nav .open>a:focus, .nav .open>a:hover, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover{
  border-bottom: 3px solid transparent;
  background: none;
}
.navbar a, .dropdown-menu>li>a, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover, .navbar-toggle{
 color: #fff;
}
.dropdown-menu{
      -webkit-box-shadow: none;
    box-shadow:none;
}

.nav li:hover:nth-child(8n+1), .nav li.active:nth-child(8n+1){
  border-bottom: #C4E17F 3px solid;
}
.nav li:hover:nth-child(8n+2), .nav li.active:nth-child(8n+2){
  border-bottom: #F7FDCA 3px solid;
}
.nav li:hover:nth-child(8n+3), .nav li.active:nth-child(8n+3){
  border-bottom: #FECF71 3px solid;

}
.navbar-toggle .icon-bar{
    color: black;
    background: #fff;
}
.navbar-right {
margin-right:10px;
}
 i {
   padding-left:10px;
   padding-top:0px;
   padding-bottom:0px;
   }
  </style>
<script>
    $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    });
</script>
</head>
<body>
 <div class="container-fluid">
 <div class="row">
<nav class="navbar navbar-default navbar-fixed-top">

    <div class="navbar-header">
     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    <a class="navbar-brand" href="#" title="SR Collections">
  <img style="max-width:50px; margin-top: -7px;" src="resources/images/bg/prod2.jpg/" alt="SR Bags" >
</a>
  </div>
  
  <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
    <c:url value="/index" var="index"></c:url>
      <li><a href="${index}">Home</a></li>
      
      <c:if test="${pageContext.request.userPrincipal.name==null }">
							<li><a href="DisplaySupplier" id="page">Supplier</a></li>
							<li><a href="product" id="page">Product</a></li>
							</c:if>
							<security:authorize access="hasRole('ROLE_USER')">
							<li><a href="DisplaySupplier" id="page">Supplier</a></li>
							<li><a href="product" id="page">Product</a></li>
							</security:authorize>
      <security:authorize access="hasRole('ROLE_ADMIN')">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="ViewCategory">View</a></li>
          <li><a href="Category">Add</a></li>
        
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Supplier<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="ViewSupplier">View</a></li>
          <li><a href="Supplier">Add</a></li>
        
        </ul>
      </li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Product<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="ViewProduct">View</a></li>
          <li><a href="Product">Add</a></li>
       
        </ul>
      </li>
      </security:authorize>
      <li><a href="#">About Us</a></li>
    </ul>
    <c:if test="${pageContext.request.userPrincipal.name==null }">
   <form class="navbar-form navbar-left" action="/action_page.php">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search here" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search" style="color: gray;font-size: 1.45em;padding-left:8px;"></i>
          </button>
        </div>
      </div>
    </form>
    </c:if>
    <security:authorize access="hasRole('ROLE_USER')">
     <form class="navbar-form navbar-left" action="/action_page.php">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search here" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search" style="color: black;font-size: 1.45em;padding-left:15px;padding-bootom:-4px;"></i>
          </button>
        </div>
      </div>
    </form>
    </security:authorize>
    <ul class="nav navbar-nav navbar-right">
    <c:if test="${pageContext.request.userPrincipal.name==null }">
    <c:url value="/login" var="login"> </c:url>
     <li><a href="${login}"><span class="glyphicon glyphicon-log-in"></span> login</a></li>
     <c:url value="/Signup" var="Signup"> </c:url>
      <li><a href="${Signup}"><span class="glyphicon glyphicon-user"></span> Signup</a></li>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name!=null }">
									<li id="right"><security:authorize access="hasRole('ROLE_USER')">
					<li><a href="#">Hi ${pageContext.request.userPrincipal.name}!!</a></li>
					</security:authorize></li>
					<c:url value="/logout" var="logout"></c:url>
							<li id="right"><a href="${logout}"><span
									class="glyphicon glyphicon-log-out"></span> Logout</a></li>
									</c:if>
      </ul>
    </div>
  </div>
  </div>
</nav>
<br><br><br><br><br>
</body>
</html>