<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>JamLink</title>
<meta name="description"
	content="Scarica gratis il nostro Template HTML/CSS GARAGE. Se avete bisogno di un design per il vostro sito web GARAGE può fare per voi. Web Domus Italia">
<meta name="author" content="Web Domus Italia">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="jamlinkmain/bootstrap-3.3.6-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="jamlinkmain/bootstrap-3.3.6-dist/css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css"
	href="jamlinkmain/bootstrap-3.3.6-dist/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css"
	href="jamlinkmain/bootstrap-3.3.6-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="jamlinkmain/font-awesome-4.5.0/css/font-awesome.css">
<link rel="stylesheet" type="text/css"
	href="jamlinkmain/font-awesome-4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="jamlinkmain/contactstyle.css">
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
				<li><a href="/displayProfile?email=${loggedInUser.email}">My Account</a></li>
				<li><a href="/"><span class="register">Signout</span></a></li>
			</ul>
		</div>

		<!-- Navbar Up -->

		<nav class="topnavbar navbar-default topnav">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed toggle-costume"
					data-toggle="collapse" data-target="#upmenu" aria-expanded="false">
					<span class="sr-only"> Toggle navigaion</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
		</div>
		<div class="collapse navbar-collapse" id="upmenu">
			<ul class="nav navbar-nav" id="navbarontop">
				<li class="dropdown"><a href="/index">HOME</a></li>
				<li class="dropdown"><a href="/browse">Browse</span></a></li>
				<li class="dropdown"><a
					href="/displayProfile?email=${loggedInUser.email}">My Account</a></li>
				<li><a href="/forum">Forum</a></li>

			</ul>
		</div>
		</nav>
	</div>
	<center>

		<h1>
			<font face="permanent marker">Forum</font>
		</h1>
		<h4>
			<font face="permanent marker">JamLink forum is a destination
				to post about upcoming gigs and anything related to rocking out!</font>
		</h4>
		<div class="panel panel-default text-left">
			<div class="panel-body">
				<form:form method="POST" modelAttribute="post" action="/forum">
					<form:input type="text" path="message" class="form-control"
						placeholder=""></form:input>

					<form:input type="hidden" path="email"
						value="${loggedInUser.email}" class="form-control"></form:input>
					<br>
					<center>
						<form:button type="submit" class="popbutton">

							<span class="glyphicon"></span>Post
		
		</form:button>
					</center>
				</form:form>


			</div>
		</div>
	</center>

	<c:forEach var="post" items="${posts}">
		<div class="col-sm-9">
			<div class="well">
				<p>
					<strong><font face="Palatino"><c:out  value="${post.message}" /></font></strong>
					<font face="permanent marker"><a href="displayProfile?email=${post.email}">${post.email}</a></font>
				</p>
			</div>
		</div>
	</c:forEach>
	<!-- ______________________________________________________Bottom Menu ______________________________-->
	<div class="bottommenu">
		<div class="bottomlogo">
			<span class="dotlogo"></span><a href="/"><img src="img\2.png"
				alt="logo1"></a><span class="dotlogo"></span>
		</div>
		<ul class="nav nav-tabs bottomlinks">
			<li role="presentation"><a href="/index" role="button">Home</a></li>
			<li role="presentation"><a href="/browse">Browse</a></li>
			<li role="presentation"><a
				href="/displayProfile?email=${loggedInUser.email}">My Account</a></li>
			<li role="presentation"><a href="/forum">Forum</a></li>
			<li role="presentation"><a href="#/">Contact Us</a></li>
		</ul>


		<div class="bottomsocial">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i
				class="fa fa-google-plus"></i></a> <a href="#"><i
				class="fa fa-pinterest"></i></a>
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