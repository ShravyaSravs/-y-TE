<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script
		src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js"></script>
	<script>
		var app = angular.module('myApp', []);
		function MyController($scope, $http) {
			$scope.sortType = 'name'; // set the default sort type
			$scope.sortReverse = false; // set the default sort order
			$scope.search = '';
			$scope.getDataFromServer = function() {
				$http({
					method : 'GET',
					url : 'productgson'
				}).success(function(data, status, headers, config) {
					$scope.products = data;// alert(data); 
				}).error(function(data, status, headers, config) {
				});
			};
		};
	</script>
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
     <a class="navbar-brand" style="font-size:15px;"><span class="glyphicon glyphicon-user"></span> WELCOME ADMIN </a>
    </div>
     <ul class="nav navbar-nav navbar-right" style="margin-bottom:0px;">
      
      <li><a href="Admin">HOME</a></li>
      <li><a href="REGISTER">REGISTER</a></li>
     <!--  <li><a href="LOGIN">LOGIN</a></li> -->
	  <li><a href="ABOUTUS">ABOUT US</a></li>
	  <li><a href="CONTACTUS">CONTACT US</a></li>  
	  <li><a href="perform_logout">LOGOUT</a></li>
	  </ul>
   </div>
  </nav>
  
 
 
			<%-- <c:choose>
					<c:when test="${LoggedIn}">

						<br><li style="float: right"><a href="perform_logout"
							class="w3-hover-none">Logout<i class="fa fa-sign-out"></i></a></li>
						<c:choose>	
						<c:when test="${!Administrator}">	
						<br><li style="float: right"><a href="viewcart"
							class="w3-hover-none">ViewCart<i class="fa fa-shopping-cart"></i>(${cartsize})</a></li>
						</c:when>
						</c:choose>

						<br><li style="float: right"><a href="#" class="w3-hover-none">Hi,${name}
						<i	class="fa fa-user"></i> </a></li>
					</c:when>

		 <c:otherwise>
						<br><li style="float: right"><a href="Register"
							class="w3-hover-none">SignUp<i class="fa fa-user-plus"></i></a></li>
						<br><li style="float: right"><a href="login"
							class="w3-hover-none">Login<i class="fa fa-sign-in"></i></a></li>
					</c:otherwise>
				</c:choose> --%>
 
 
 
  <c:url var="addAction" value="addProduct" ></c:url>

<form:form action="${addAction}" modelAttribute="product" id="btn-add" enctype="multipart/form-data">
   <h3>
                    <c:if test="${product.id==0}">
		       
	            </c:if>
	            <c:if test="${!empty product.id}">
		     
		     <%--  <form:hidden path="id"/> --%>
	            </c:if>
         </h3>
          <div class="container">
          <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
          <ul class="nav nav-pills nav-justified">
   <li class="active"><a href="Product">Product</a></li>
    <li><a href="Category">Category</a></li>
     <li><a href="Supplier">Supplier</a></li>
  </ul>
</div>

          
 <!--  <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
  <ul class="nav nav-tabs col-lg-12">
    <li class="active"><a href="Product">Product</a></li>
    <li><a href="Category">Category</a></li>
     <li><a href="Supplier">Supplier</a></li>
  </ul>
  </div> --> 
  <br>
 <div class="clearfix"></div>
            <form class="form-horizontal">
 
  <br>
<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
 <c:if test="${product.id!=0}">
      <label class="col-md-4 form-group"  for="id">Id</label>
      <div class="col-md-6">
        <form:input type="text" placeholder="product id" class="form-control name" path="id"/>
      </div>
     </c:if>
         </div>
    
    <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="name">Name</label>
      <div class="col-md-6">
        <form:input type="text" placeholder="product name" class="form-control name" path="name"/>
      </div>
    </div>

<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="category_id">Category Name</label>
      <div class="col-md-6">
         <form:select  class="form-control product-type" path="category_id">
         <c:forEach items="${allCategory}" var="category">
         <form:option class="input1" value="${category.id}">${category.name}</form:option>
         </c:forEach>
		</form:select>
       </div>
    </div>
    
<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3"> 
      <label class="col-md-4 form-group"  for="supplier_id">Supplier Name</label>
      <div class="col-md-6">
 <form:select  class="form-control product-type" path="supplier_id">
         <c:forEach items="${allSupplier}" var="supplier">
         <form:option class="input1" value="${supplier.id}">${supplier.name}</form:option>
         </c:forEach>
		</form:select>
                  </div>
    </div>

<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="price">price</label>
      <div class="col-md-6 ">
        <form:input type="text"  placeholder="product price" class="form-control name" path="price"/>
      </div>
    </div>
    

<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="stock">Stock</label>
      <div class="col-md-6">
        <form:input type="text" placeholder="product stock" class="form-control name" path="stock"/>
      </div>
    </div>    
    <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    <label class="col-md-4 form-group" for="image">Image</label>
			<div class="col-md-6">		
			<form:input type="file" class=" btn btn-default btn-block form-control" path="image" required="true" />
				</div>
				</div>
				
					
					<!-- <br>
					<td><input type="submit" class="btn btn-primary" value="Save" /></td>  -->
    
    
    <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    <div class="col-md-4 ">
    	        <c:if test="${product.id==0}">
			      <input type="submit" value="Add" class="btn btn-primary"> 
	         </c:if>
	         <c:if test="${product.id!=0}">
			      <input type="submit" value="Update" class="btn btn-primary"> 
	         </c:if>
	</div>
    </div>
    
    </form>
    </div>
      <br>
    
    <div class="container" data-ng-app="myApp"
			data-ng-controller="MyController" data-ng-init="getDataFromServer()"
			style="overflow: auto; height: 400px; width: 70%">
			<form>
				<input data-ng-model="search" type="text"
					placeholder=" Search Product" style="width: 20%">
			</form>
    <br>
    <div class="container">
 <div align="center">
<table style="width:80%" class="table table-hover" >
<thead style="background-color:rgb(128,128,128)">
<tr>
<th>Product ID</th>
<th>Product Name</th>
<th>Category ID</th>
<th>Supplier ID</th>
<th>Price</th>
<th>Stock</th>
<th>Image</th>
<th>Delete</th>
<th>Edit</th>

</tr>
</thead>
<tbody>

<%-- <c:forEach items="${allProduct}" var ="product"> --%>
<tr data-ng-repeat="product in products | orderBy:sortType:sortReverse | filter:search">
<td>{{product.id}}</td>
<td>{{product.name}}</td>
<td>{{product.category_id}}</td>
<td>{{product.supplier_id}}</td>
<td>{{product.price}}</td>
<td>{{product.stock}}</td>
 <td><div class="thumbnail"><img height="50px" width="50px" alt="{{product.id }}" src="<c:url value="/resources/images/product/{{product.id }}.jpg"></c:url>">
</div> 
<td><a href="ProductDeleteById/{{product.id}}"> <button type="button" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-remove"></span>Delete</button></a>
<td><a href="ProductEditById/{{product.id}}">  <button type="button" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-pencil"></span>Edit</button></a>

</tr>



<%-- 
</c:forEach> --%>
</tbody>
</table>
</div>	
</div>
</div>
 </form:form>
 <%@include file="Footer.jsp"%> 
  </body>
  </html>
  






<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    


<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="category_id">Category Id</label>
      <div class="col-md-6">
         <form:select id="category_id" name="category_id" class="form-control product-type" path="categoryid">
         <c:forEach items="${categoryList}" var="category">
         <form:option class="input1" value="${category.id}">${category.name}</form:option>
         </c:forEach>
		</form:select>
       </div>
    </div>
    
<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3"> 
      <label class="col-md-4 form-group"  for="supplier_id">Supplier Id</label>
      <div class="col-md-6">
 <select id="supplier_id" name="supplier_id" class="form-control product-type">
            <option value="0">-Select-</option>
          </select>    
            </div>
    </div>

<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="stock">Stock</label>
      <div class="col-md-6">
        <form:input type="text" id="stock" name="stock" placeholder="product stock" class="form-control name" path="stock"/>
      </div>
    </div>
	</form>
	
	</div>
	</div>
	</div>

 --%>