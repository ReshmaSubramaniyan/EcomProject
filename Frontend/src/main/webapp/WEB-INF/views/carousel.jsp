<%@include file="/WEB-INF/views/Header.jsp" %>
<br><br><br>
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
