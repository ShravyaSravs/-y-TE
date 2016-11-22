
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Admin page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
 
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width:100%;
	  height:400px;
      margin: auto;
  }
  
footer {
    
    margin-top: 50px;
    
} 
body {
width:100%;
}
  .center-pills{ 
  display: inline-block; 
  }

  </style>

</head>
<body  style="background-color:#CCCCCC;">


 <div class="text-center" >
  <h1 style="font-family:Georgia; font-size:40px;"><i>GStore</i>
    <!-- <img  src="https://www.sitewelder.com/art2012/logo-big-shopping.png" alt="logo" width="60px" height="60px" align="left" > -->
  
   <img  src="https://egybikers.com/images/dealershowroom/facebook%20profile%20pic.jpg" alt="logo" width="60px" height="60px" align="left"" >
  <img  src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/768px-F_icon.svg.png" alt="fb" width="30px" height="30px" align="right" >
  <img  src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Twitter_bird_logo_2012.svg/1259px-Twitter_bird_logo_2012.svg.png" alt="twitter" width="30px" height="30px" align="right" >
  <img  src="http://icons.iconarchive.com/icons/danleech/simple/1024/linkedin-icon.png" alt="linkedin" width="30px" height="30px" align="right" >
  </h1>
  
  </div>
  
  <nav class="navbar navbar-inverse">
  <div class="container-fluid"> 
  <div class="navbar-header" class=" pull-left">
     <a class="navbar-brand" style="font-size:15px;" href="#"><span class="glyphicon glyphicon-user"></span> WELCOME ADMIN </a>
    </div>
     <ul class="nav navbar-nav navbar-right" style="margin-bottom:0px;">
      
      <li><a href="Admin">HOME</a></li>
      <li><a href="REGISTER">REGISTER</a></li>
      <!-- <li><a href="LOGIN">LOGIN</a></li> -->
	  <li><a href="ABOUTUS">ABOUT US</a></li>
	  <li><a href="CONTACTUS">CONTACT US</a></li>
	  <li><a href="perform_logout">LOGOUT</a></li>
    </ul>
   </div>
  </nav>
 <!--  <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
  <ul class="nav nav-tabs col-lg-12">
    <li class="active"><a href="Product">Product</a></li>
    <li><a href="Category">Category</a></li>
     <li><a href="Supplier">Supplier</a></li>
  </ul>
  </div> --> 
  
  
  <div class="container">
          <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
          <ul class="nav nav-pills nav-justified">
     <li><a href="Product">Product</a></li>
     <li><a href="Category">Category</a></li>
     <li><a href="Supplier">Supplier</a></li>
  </ul>
</div>
</div>

<br>
<c:choose>
<c:when test="${userclickedproduct}">
<c:import url="/WEB-INF/views/Product.jsp"/>
</c:when>
</c:choose>
  <c:choose>
<c:when test="${userclickedsupplier}">
<c:import url="/WEB-INF/views/Supplier.jsp"/>
</c:when>
</c:choose>
<c:choose>
<c:when test="${userclickedcategory}">
<c:import url="/WEB-INF/views/Category.jsp"/>
</c:when>
</c:choose>
<c:choose>
<c:when test="${userclickedhome}">
<c:import url="/WEB-INF/views/HOME.jsp"/>
</c:when>
</c:choose>
   
  <div class="container-fluid">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item">
        <img  src="http://www.gannetdesign.com/wp-content/uploads/cropped-G-titel-1.jpg" alt="bike" >
      </div>
    

	<div class="item active">
        <img  src="http://laidlawantiqueautorestoration.com/wp-content/uploads/2015/05/1914-Lozier-Model84-Meadowbrook07-1600x400.jpg" alt="car">
      </div>

     
      <div class="item">
        <img  src="http://behemoth.gameovercycles.pl/eng/wp-content/uploads/2013/05/slajd1.jpg" alt="tool" >
      </div>

      <div class="item">
        <img src="https://gaudinporschelv.com/images/dealer_images/486/custom/Porsche-Bikes/a30522d6e92f101c4925de735307c94a.jpg" alt="cycle">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
 <%@include file="Footer.jsp"%> 
 
</body>
</html>