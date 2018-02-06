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
<%@include file="Header.jsp" %>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
 
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
  </ol>

  <div class="carousel-inner">
    <div class="item active">
      <img src="resources/images/carousel/bag1.jpg" alt="bag1" style="width: 1100px; height: 400px">>
    </div>

    <div class="item">
      <img src="resources/images/carousel/bag3.jpg" alt="bag3" style="width: 1100px; height: 400px">>
    </div>
   
    <div class="item">
      <img src="resources/images/carousel/bag5.jpg" alt="bag5" style="width: 1100px; height: 400px">>
    </div>
    
    <div class="item">
      <img src="resources/images/carousel/bag6.jpeg" alt="bag6" style="width: 1100px; height: 400px">>
    </div>
  </div>

  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<c:if test="${pageContext.request.userPrincipal.name==null }">
					<%@ include file="DisplayFeatured.jsp"%>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<security:authorize access="hasRole('ROLE_USER')">
					<%@ include file="DisplayFeatured.jsp"%>
					</security:authorize>
					</c:if>
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