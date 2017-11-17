<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>JamLink</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Auditions Registration Form Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- //custom-theme -->
<link href="css/loginsignup.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- font-awesome-icons -->
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Anton&amp;subset=latin-ext,vietnamese" rel="stylesheet">
</head>
<body>
<!-- banner -->
	<div class="center-container">
	<div class="banner-dott">
		<div class="main">
			<h1 class="w3layouts_head"><font face="permanent marker">Login</font></h1>
				<div class="w3layouts_main_grid">
					<form:form modelAttribute="userLogin" action="/logintest" method="POST" class="w3_form_post">
						
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Your Email </label>
								<form:input type="text" name="Task" placeholder="Your Email" required="true" path="email"></form:input>
							</span>
						</div>
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Password </label>
								<form:input type="password" name="Task" placeholder="Password" required="true" path="password"></form:input>
							</span>
						</div>
			
			
						<div class="w3_main_grid">
						<div class="w3_main_grid_right">
			
							<input type="submit" value="Submit">
						</div>
					</div>
				</form:form>
			</div>
			<div class="w3layouts_copy_right">
				<div class="container">
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<p>© 2017 Auditions Registration Form. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts.</a></p>
				</div>
			</div>
		</div>
	</div>
	</div>
<!-- //footer -->
</body>
</html>