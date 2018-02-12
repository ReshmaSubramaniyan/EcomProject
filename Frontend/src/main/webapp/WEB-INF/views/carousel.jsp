<%@include file="/WEB-INF/views/Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <style>
  .container {
  padding-left:0px;
  padding-right:0px;
  }
  .carousel-inner{
  width:100%;
  max-height: 450px !important;
}
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
	   width:100%;
       max-height: 450px;
      margin: auto;
  }
  
  .fnt{
   font-family: "Times New Roman", Times, serif;
  }
  </style>
</head>
<body>
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
    
     <div class="item ">
      <img src="resources/images/carousel/bag5.jpg" alt="bag5" style="width: 1100px; height: 400px">>
    </div>
    
    <div class="item">
      <img src="resources/images/carousel/bag6.jpeg" alt="bag6" style="width: 1100px; height: 400px">>
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
</body>
</html>