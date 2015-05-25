<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<%@include file="header/header.jsp" %>
	
	<!-- Calm Breeze -->
	<link rel="stylesheet" href="css/style.css">
	
	<style>
		.navbar-brand
		{
		    position: absolute;
		    width: 100%;
		    left: 0;
		    text-align: center;
		    margin: auto;
		}
		
		.dropdown-menu li:hover .sub-menu {
		    visibility: visible;
		}
		
		.dropdown:hover .dropdown-menu {
		    display: block;
		}
		
	</style>
</head>
<body>
	<%@include file="header/menu_login.jsp" %>
	
	<div class="container" role='main' style='margin-top:70px;'>
	
	<!-- put your code here -->
	
	<div class="wrapper">
	<div class="container">
		<h1>Welcome</h1>
		
		<form class="form">
			<input type="text" placeholder="Username">
			<input type="password" placeholder="Password">
			<button type="submit" id="login-button">Login</button>
		</form>
	</div>
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

     <script src="js/index.js"></script>
	
</div>

<!-- about -->
      <div class="" id="about">
        <div class="container">
          <div class="row">
            <div class="col-md-6" style="color: black; font-size:12;">
              <h3>About our software</h3>
              <p>Creative digital agency for sleek and sophisticated solutions for mobile, websites and software designs, lead by passionate and uber progressive team that lives and breathes design. Creative digital agency for sleek and sophisticated solutions for mobile, websites and software designs.</p>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
              <!--<a href="#"><img src="images/app-store.png"></a> <a href="#"><img src="images/google-play.png"></a>-->
            </div>
           <!--   <div class="col-md-6 text-center"><a href="http://socialsteak.com/" target="_blank" title="credit www.socialsteak.com"><img src="images/iphone.png" class="img-responsive wowload fadeInUp" alt="http://socialsteak.com/"></a></div> -->
          </div>
        </div>
      </div>
      <!-- about -->
	
    
</body>
</html>