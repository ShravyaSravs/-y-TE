<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>category page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js"></script>

<style>
footer {
    
    margin-top: 50px;
    
} 
body {
width:100%;
}

  </style>
  
<script>
	var app = angular.module('myApp', []);
	function MyController($scope, $http) {
		$scope.sortType = 'name'; // set the default sort type
		$scope.sortReverse = false; // set the default sort order
		$scope.search = '';
		$scope.getDataFromServer = function() {
			$http({
				method : 'GET',
				url : 'categorygson'
			}).success(function(data, status, headers, config) {
				$scope.categories = data;// alert(data); 
			}).error(function(data, status, headers, config) {
			});
		};
	};
</script>
   
</head>
<body style="background-color:#CCCCCC;">
 <div class="text-center" >
  <h1 style="font-family:Georgia; font-size:40px;"><i>GStore </i>
  
   <!--  <img  src="https://www.sitewelder.com/art2012/logo-big-shopping.png" alt="logo" width="60px" height="60px" align="left" > -->
  <img  src="https://egybikers.com/images/dealershowroom/facebook%20profile%20pic.jpg" alt="logo" width="60px" height="60px" align="left"" >
  <img  src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/768px-F_icon.svg.png" alt="fb" width="30px" height="30px" align="right" >
  <img  src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Twitter_bird_logo_2012.svg/1259px-Twitter_bird_logo_2012.svg.png" alt="twitter" width="30px" height="30px" align="right" >
  <img  src="http://icons.iconarchive.com/icons/danleech/simple/1024/linkedin-icon.png" alt="linkedin" width="30px" height="30px" align="right" >
  </h1>
  
  </div>
  
   <nav class="navbar navbar-inverse">
  <div class="container-fluid"> 
  <div class="navbar-header" class=" pull-left">
     <a class="navbar-brand" style="font-size:15px;"><span class="glyphicon glyphicon-user"></span> WELCOME ADMIN </a>
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
  
  
  <c:url var="addAction" value="addCategory" ></c:url>

<form:form action="${addAction}" modelAttribute="category" id="btn-add">
   <h3>
                    <c:if test="${category.id==0}">
		      
	            </c:if>
	            <c:if test="${!empty category.id}">
		     
		     <%--  <form:hidden path="id"/> --%>
	            </c:if>
         </h3>
          <div class="container">
          <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
          <ul class="nav nav-pills nav-justified">
     <li><a href="Product">Product</a></li>
    <li class="active"><a href="Category">Category</a></li>
     <li><a href="Supplier">Supplier</a></li>
  </ul>
</div>

  <br>
<div class="clearfix"></div>
            <form class="form-horizontal">
 
  <br>
<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
 <c:if test="${category.id!=0}">
      <label class="col-md-4 form-group"  for="id">Id</label>
      <div class="col-md-6">
        <form:input type="text" placeholder="product id" class="form-control name" path="id"/>
      </div>
     </c:if>
         </div>
    
    <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="name">Name</label>
      <div class="col-md-6">
        <form:input type="text" placeholder="category name" class="form-control name" path="name"/>
      </div>
    </div>
<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="description">description</label>
      <div class="col-md-6 ">
        <form:input type="text" placeholder="description" class="form-control name" path="description"/>
      </div>
    </div>


    <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    <div class="col-md-6 ">
    	        <c:if test="${category.id==0}">
			      <input type="submit" value="Add" class="btn btn-primary"> 
	         </c:if>
	         <c:if test="${category.id!=0}">
			      <input type="submit" value="Update" class="btn btn-primary"> 
	         </c:if>
	</div>
    </div>
    </form>
    </div>
   
    
    <div class="container" data-ng-app="myApp"
				data-ng-controller="MyController" data-ng-init="getDataFromServer()"
				style="overflow: auto; height: 400px; width: 70%">
				<form>
					<input
					
						data-ng-model="search" type="text" placeholder=" Search Category"
						style="width: 20%">
				</form>
				<br>
    
 <div class="container-fluid">
 <div align="center">
<table style="width:80%" class="table table-hover" >
<thead style="background-color:rgb(128,128,128)">
<tr>
<th>Category Id</th>
<th>Category Name</th>
<th> Description</th>
<th>Delete</th>
<th>Edit</th>
</tr>
</thead>

<%-- <c:forEach items="${allCategory}" var ="category"> --%>
 <tr data-ng-repeat="category in categories | orderBy:sortType:sortReverse | filter:search">
 
<td>{{category.id}}</td>
<td>{{category.name}}</td>
<td>{{category.description}}</td>

<td><a href="CategoryDeleteById/{{category.id}}"><button type="button" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-remove"></span>Delete</button></a>
<td><a href="CategoryEditById/{{category.id}}"><button type="button" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-pencil"></span>Edit</button></a>
</tr>
<%-- </c:forEach> --%>

</table>
</div>	
</div>
</div>

 </form:form>
 <%-- <script src="${pageContext.request.contextPath}/app-resources/js/lib/jquery-2.2.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/app-resources/js/myapp.js"></script>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app-resources/css/style.css"/>  --%>
   <%@include file="Footer.jsp"%>
  </body>
  </html>

