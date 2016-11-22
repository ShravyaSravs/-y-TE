<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta charset="ISO-8859-1">
<title>GStotre.com</title>
	<meta charset="utf-8"> 
	<meta name="viewport" content="width=device-width, initial-scale=1"> 
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 

	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
	
	</head>
	
	<body style="background-color:#CCCCCC;">

 <%@include file="Header.jsp"%>
 
 <div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top:-20px;height:200px">
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
        <img  src="http://behemoth.gameovercycles.pl/eng/wp-content/uploads/2013/05/slajd1.jpg" alt="tools" >
      </div>

      <div class="item">
        <img src="https://gaudinporschelv.com/images/dealer_images/486/custom/Porsche-Bikes/a30522d6e92f101c4925de735307c94a.jpg" alt="mobile">
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
<br>
<br>
<br>
	<div class="container">
  <h3>Contact</h3>
  <div class="row">
    <div class="col-md-4">
		<p>Head office</p>
		<p>Hyderabad, Kukatpally</p>
		<p>mail:contact@GStore.co.in </p>
		<p>Mobile Number:+91-9849098490</p>
    </div>
    <div class="col-md-4">
      <p>Branch Office</p>
      <p>Hyderabad, Lakidikapool</p>
	  <p>mail:GStore@lakidikapool.co.in</p>
	  <p>mobile Number:+91-8880008800</p>
    </div>
    <div class="col-md-4">
      <p>Branch Office</p>
	  <p>Bangalore, Belumdhur</p>
	  <p>mail:GStore@Bengaluru.co.in</p>
      <p>Mobile Number:+91-9609609601</p>
    </div>
  </div>
</div>
<br>
<br>

 <%@include file="Footer.jsp"%> 

</body>
</html>














<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contactus page</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
  .jumbotron {
background: #358CCE;
color: #FFF;
border-radius: 0px;
}
.jumbotron-sm { padding-top: 24px;
padding-bottom: 24px; }
.jumbotron small {
color: #FFF;
}
.h1 small {
font-size: 24px;
}
footer {
    
    margin-top: 50px;
    
} 
body {
width:100%;
}

</style>
</head>

<body style="background-color:#CCCCCC;">
 <%@include file="Header.jsp"%> 
<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Contact us <small>Feel free to contact us</small></h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                            Send Message</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>Twitter, Inc.</strong><br>
                795 Folsom Ave, Suite 600<br>
                San Francisco, CA 94107<br>
                <abbr title="Phone">
                    P:</abbr>
                (123) 456-7890
            </address>
            <address>
                <strong>Full Name</strong><br>
                <a href="mailto:#">first.last@example.com</a>
            </address>
            </form>
        </div>
    </div>
    </div>
 <%@include file="Footer.jsp"%> 
</body>
</html> --%>