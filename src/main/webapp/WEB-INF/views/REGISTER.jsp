<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script type="text/javascript" src="http://www.clubdesign.at/floatlabels.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  footer {
    
    margin-top: 50px;
    
} 
body {
width:100%;
}
  </style>
</head>
<body style="background-color:#CCCCCC;">
<div class="text-center" >
 <c:choose>
  <c:when test="${!HideOthers }">
  

  <h1 style="font-family:Georgia; font-size:40px;"><i>GStore</i>
   <!--  <img  src="https://www.sitewelder.com/art2012/logo-big-shopping.png" alt="logo" width="60px" height="60px" align="left" > -->
    <img  src="https://egybikers.com/images/dealershowroom/facebook%20profile%20pic.jpg" alt="logo" width="60px" height="60px" align="left"" >
  <img  src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/768px-F_icon.svg.png" alt="fb" width="30px" height="30px" align="right" >
  <img  src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Twitter_bird_logo_2012.svg/1259px-Twitter_bird_logo_2012.svg.png" alt="twitter" width="30px" height="30px" align="right" >
  <img  src="http://icons.iconarchive.com/icons/danleech/simple/1024/linkedin-icon.png" alt="linkedin" width="30px" height="30px" align="right" >
  </h1>
  
  </div>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid"> 
     <ul class="nav navbar-nav navbar-right" style="margin-bottom:0px;">
       <li class="dropdown" >
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Category
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <c:forEach items="${allCategory}" var="category">
				<a href="navproduct/${category.id }"><c:out value="${category.name}" /></a>
							<br>
						
					</c:forEach>
        </ul>
      </li>
      
    
      <li><a href="HOME">HOME</a></li>
       <sec:authorize access="!isAuthenticated()">
      <li><a href="REGISTER">REGISTER</a></li>
      <li><a href="LOGIN">LOGIN</a></li>
      </sec:authorize>
	  <li><a href="ABOUTUS">ABOUT US</a></li>
	  <li><a href="CONTACTUS">CONTACT US</a></li>
   <sec:authorize access="isAuthenticated()">
   <li ><a href="Cart1" ><p>CART <span class="glyphicon glyphicon-shopping-cart"></span></p></a></li>
	<li><a href="<c:url value="/perform_logout" />"><p>LOGOUT<span class="glyphicon glyphicon-log-out"></span></p></a></li>
	<li><a href="">WELCOME<sec:authentication property="principal.username"/></a></li>
</sec:authorize>
	 </c:when>
   </c:choose>
 
  				  
   </ul>
   </div>
  </nav>
  
  
  <c:choose>
  <c:when test="${!HideOthers }">
  
  
    <div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top:-20px;height:200px">
    Indicators
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    Wrapper for slides
    <div class="carousel-inner" role="listbox">
      <div class="item">
        <img  src="http://www.gannetdesign.com/wp-content/uploads/cropped-G-titel-1.jpg" alt="bike" >
      </div>
    

	<div class="item active">
        <img  src="http://laidlawantiqueautorestoration.com/wp-content/uploads/2015/05/1914-Lozier-Model84-Meadowbrook07-1600x400.jpg" alt="car">
      </div>

     
      <div class="item">
        <img  src="http://behemoth.gameovercycles.pl/eng/wp-content/uploads/2013/05/slajd1.jpg" alt="tools" >
      </div>

      <div class="item">
        <img src="https://gaudinporschelv.com/images/dealer_images/486/custom/Porsche-Bikes/a30522d6e92f101c4925de735307c94a.jpg" alt="mobile">
      </div>
    </div>

    Left and right controls
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
  
    </c:when>
   </c:choose>

 
 
 
 
 <section id="content">
			<c:url var="addAction" value="adduser"></c:url>
			<form:form action="${addAction}" commandName="user"
				method="post">
				
 <form class="form-horizontal">
 <div class="row centered-form">
        <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title" style="text-align:center;">Registration Form</h3>
			 			</div>
			 			<div class="panel-body">
			    		 <form role="form">

<br>
<div class="form-group">
  <label class="col-md-4 control-label" for="username">User name</label>  
  <div class="col-md-6">
  <form:input id="username" name="username" type="text" placeholder="user name" class="form-control input-md" 
  path="username" pattern=".{5,10}" required="true" title="minimum length for username is 5" />
    
  </div>
</div>
<br><br>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="password">Password</label>  
  <div class="col-md-6">
  <form:input id="password" name="password" type="password" placeholder="Password" class="form-control input-md" 
  path="password"  pattern=".{3,8}" required="true" title="minimum length for passsword is 3"/>
    
  </div>
</div>
<br><br>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="confirmpassword">Confirm Password</label>  
  <div class="col-md-6">
  <form:input id="confirmpassword" name="confirmpassword" type="password" placeholder="Confirm Password" class="form-control input-md"
   path="confirmpassword"  pattern=".{3,8}" required="true" title="minimum length for passsword is 3"/>
    
  </div>
</div>

<br><br>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Email</label>  
  <div class="col-md-6">
  <form:input id="email" name="email" type="text" placeholder="email address" class="form-control input-md" path="email"/>
    
  </div>
</div>
<br><br>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="phone">Phone Number</label>  
  <div class="col-md-6">
  <form:input id="phone" name="phone" type="text" placeholder="Phone Number" class="form-control input-md" 
  path="phone" pattern="^[789]\d{9}$" required="true" title="Enter valid mobile number"/>
    
  </div>
</div>
<br><br>
</div>

<div class="form-group">
<div class="col-xs-8 col-sm-6 col-md-4 col-sm-offset-2 col-md-offset-4">
<input type="submit" value="Register" class="btn btn-success btn-block">
</div>
</div>
<br><br>
<form>
</div>

</div>
</div>
</form>
</form:form>
 
 
 <%-- <section id="content">
			<c:url var="addAction" value="adduser"></c:url>
			<form:form action="${addAction}" commandName="user"
				method="post"/>
				
 

<form role="form"  >
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">REGISTER fORM </h3>
			 			</div>
			 			<div class="panel-body">
			    		
			    			<div class="row">
			    				<!-- <div class="col-xs-6 col-sm-6 col-md-6"> -->
			    				 <form id="loginForm" method="POST" action="perform_login" novalidate="novalidate">
			    				
			    					<div class="form-group">
			                <input type="text" name="user_name" id="user_name" class="form-control input-sm floatlabel" placeholder="User Name">
			    					<!-- </div> -->
			    				</div>
			    				
			    				<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-sm" placeholder="Confirm Password">
			    					</div>
			    				</div>
			    			</div>
			    				
			    				<!-- <div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="last_name" id="last_name" class="form-control input-sm" placeholder="Last Name">
			    					</div>
			    				</div>
			    			</div> -->

			    			<div class="form-group">
			    				<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address">
			    			</div>
			    			
			    			
			    			<div class="form-group">
			    				<input type="phonenumber" name="phonenumber" id="phonenumber" class="form-control input-sm" placeholder="PhoneNumber" class="form-control input-md" 
  path="phone" pattern="^[789]\d{9}$" required="true" title="Enter valid mobile number"/>
			    			</div>

			    			
			    			
			    			<input type="submit" value="REGISTER" class="btn btn-info btn-block">
			    		
			    		</form>
			    	
			    	 
                     </section>
	    		
 
 
 
 
 
 
  --%>
 
 
 
 
 
 
 
 
 
 
 
 
 
</section>

  <%-- 
	<div class="container">
	
	
	<c:choose>
				<c:when test="${!empty SuccessMessage}">
					<td colspan="2">
						<div class="alert alert-success fade in">
							<a href="login" class="close" data-dismiss="alert" aria-label="close">&times;</a>${SuccessMessage}
						</div>
					</td>
				</c:when>
			</c:choose>
	
	
	
	<section id="content">
			<c:url var="addAction" value="adduser"></c:url>
			<form:form action="${addAction}" commandName="user"
				method="post">
				<h4>Registration</h4>
				<div>
					<form:input path="userid" type="text" placeholder="USERID"
						 required="true" id="userid" name="userid" />
				</div>
				<div>
					<form:input path="username" type="text" placeholder="Username"
					pattern=".{5,10}" required="true" id="username" name="username"
					title="minimum length for username is 5" />
				</div>
				<div>
					<form:input path="password" type="password" placeholder="Password" pattern=".{3,8}"
						required="true" id="password" name="password" title="minimum length for passsword is 3" />
				</div>
				<div>
					<form:input path="confirmpassword" type="password" placeholder="Confirm Password" pattern=".{3,8}"
						required="true" id="confirmpassword" name="confirmpassword" title="minimum length for passsword is 3" />
				</div>
				<div>
					<form:input path="email" type="email" placeholder="Email"
						required="true" id="username" name="username" />
				</div>
				<div>
					<form:input path="phone" type="text" placeholder="Phone"
						pattern="^[789]\d{9}$" required="true" id="phone"
						name="phone" title="Enter valid mobile number" />
				</div>
				<div>
					<input type="submit" value="Register" /><a href="LOGIN">Sign In</a>
				</div>

			</form:form>
			
		</section>
		
	</div>  --%>
	 <%@include file="Footer.jsp"%>		
</body>
</html>