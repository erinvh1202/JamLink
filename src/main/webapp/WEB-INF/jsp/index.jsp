<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>JamLink </title>
	<meta name="description" content="Scarica gratis il nostro Template HTML/CSS GARAGE. Se avete bisogno di un design per il vostro sito web GARAGE può fare per voi. Web Domus Italia">
	<meta name="author" content="Web Domus Italia">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="jamlinkmain/bootstrap-3.3.6-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="jamlinkmain/bootstrap-3.3.6-dist/css/bootstrap-theme.css">
	<link rel="stylesheet" type="text/css" href="jamlinkmain/bootstrap-3.3.6-dist/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="jamlinkmain/bootstrap-3.3.6-dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="jamlinkmain/font-awesome-4.5.0/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="jamlinkmain/font-awesome-4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="jamlinkmain/contactstyle.css">
    <link rel="stylesheet" type="text/css" href="jamlinkmain/slider.css">
	<link rel="stylesheet" type="text/css" href="jamlinkmain/mystyle.css">
</head>
<body>
<!-- Header -->
<div class="allcontain">
	<div class="header">
			<ul class="socialicon">
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
			</ul>
			<ul class="givusacall">
				
			</ul>
			<ul class="logreg">
				<li><a href="/login">Login </a> </li>
				<li><a href="/signup"><span class="register">Signup</span></a></li>
			</ul>
	</div>
	
	<!-- Navbar Up -->
	<nav class="topnavbar navbar-default topnav">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed toggle-costume" data-toggle="collapse" data-target="#upmenu" aria-expanded="false">
					<span class="sr-only"> Toggle navigaion</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>	 
		</div>
		<div class="collapse navbar-collapse" id="upmenu">
			<ul class="nav navbar-nav" id="navbarontop">
				<li class="dropdown"><a href="/">HOME</a> </li>
				<li class="dropdown">
					<a href="/browse">Browse</span></a>
				</li>
				<li class="dropdown">
						<a href="/displayProfile?email=${loggedInUser.email}">My Account</a>
										</li>
				<li>
					<a href="/signup">Signup</a>
 
				</li>
				
			</ul>
		</div>
	</nav>
</div>
<!--_______________________________________ Carousel__________________________________ -->
<div class="allcontain">
	<div id="carousel-up" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner " role="listbox">
			<div class="item active">
				<img src="img\JamLinkpc3.jpg" alt="band jamming on stage">
				<div class="carousel-caption">
					<h1><font color="white" face="permanent marker">JamLink</font></h1>
					<p><h3 class="subtitle"><font color="#ffb3ff">The modern day musician's networking nirvana!</font></h3></p>
				</div>
			</div>
			<div class="item">
				<img src="img\Jamlinkpc.jpg" alt="instruments laying on stage" height="100%" width="100%">
				<div class="carousel-caption">
					<h1><font color="white" face="permanent marker">JamLink</font></h1>
						<p><h3 class="subtitle"><font color="#ffb3ff">The modern day musician's networking nirvana!</font></h3> </p>
				</div>
			</div>
			<div class="item">
				<img src="img\JamLinkpc7.jpg" alt="crowd at a concert">
				<div class="carousel-caption">
					<h1><font color="white" face="permanent marker">JamLink</font></h1>
					<p><h3 class="subtitle"><font color="#ffb3ff">The modern day musician's networking nirvana!</font></h3></p>
				</div>
			</div>
		
		
	
	    </div>
	</div>
</div>

<!-- ____________________Featured Section ______________________________--> 
<div class="allcontain">
	<div class="feturedsection">
	<br><br>
		<a href="signup"><h1 class="text-center"><font face="permanent marker" color="black">Join Now!</font></h1></a>
	<br><br>
	</div>
	<div class="feturedimage">
		<div class="row firstrow">
			<div class="col-lg-6 costumcol colborder1">
				
				<div class="row costumrow">
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img2colon">
						<img src="img\jamlinkpc2.jpg" alt="guy playing the drums">
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
						<div class="featurecontant">
							<center><h2><font face="permanent marker">About JamLink!!</font></h2></center>
							<br>
							<h4>Whether starting a new band, searching for new talent to add to an existing line up,
							or simply looking to communicate with local talent, JamLink has you covered!
							We provide the tools necessary to help you get in contact with local musicians so you can be ready to rock and roll!
							Sign up today for quick ROCKING results!</h4>
							
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 costumcol colborder2">
				<div class="row costumrow">
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img2colon">
						<img src="img\jamlinkpc5.jpg" alt="guy playing the drums">
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
						<div class="featurecontant">
							<center><h2><font face="permanent marker">Join JamLink!!</font></h2></center>
							<br>
							<h4>Get ready to Jam! 
							JamLink is your go to destination to meet talented musicians in your area! 
							JamLink is here to find the next Jon Bonham,Stevie Nicks,Duane Allman,or Derek Trucks for YOUR band!!</h4>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- ______________________________________________________Bottom Menu ______________________________-->
	<div class="bottommenu">
		<div class="bottomlogo">
		<span class="dotlogo"></span><a href="/"><img src="img\2.png" alt="logo1"></a><span class="dotlogo"></span>
		</div>
		<ul class="nav nav-tabs bottomlinks">
			<li role="presentation" ><a href="/index">Home</a></li>
			<li role="presentation"><a href="/browse">Browse</a></li>
			<li role="presentation"><a href="/displayProfile?email=${loggedInUser.email}">My Account</a></li>
			<li role="presentation"><a href="/signup">Sign up</a></li>
			<li role="presentation"><a href="#/">Contact Us</a></li>
		</ul>
		
		
		 <div class="bottomsocial">
		 	<a href="#"><i class="fa fa-facebook"></i></a>
			<a href="#"><i class="fa fa-twitter"></i></a>
			<a href="#"><i class="fa fa-google-plus"></i></a>
			<a href="#"><i class="fa fa-pinterest"></i></a>
		</div>
	</div>
</div>

<script type="text/javascript" src="jamlinkmain/JS/js1/jquery.js"></script>
<script type="text/javascript" src="jamlinkmain/JS/js2/isotope.js"></script>
<script type="text/javascript" src="jamlinkmain/JS/js2/myscript.js"></script> 
<script type="text/javascript" src="jamlinkmain/JS/js1/jquery.1.11.js"></script>
<script type="text/javascript" src="jamlinkmain/JS/js1/bootstrap.js"></script>
</body>
</html>