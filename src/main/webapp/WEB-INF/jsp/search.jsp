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
				<li><a href="/displayProfile?email=${loggedInUser.email}">My Account</a> </li>
				<li><a href="/index"><span class="register">Signout</span></a></li>
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
				<li class="dropdown"><a href="/index">HOME</a> </li>
				<li class="dropdown">
					<a href="/browse">Browse</span></a>
				</li>
				<li class="dropdown">
						<a href="/displayProfile?email=${loggedInUser.email}">My Account</a>
										</li>
				<li>
					<a href="/forum">Forum</a>
 
				</li>
				
			</ul>
		</div>
	</nav>
</div>
<center><form:form style="padding-right:290px" modelAttribute="searchQuery" action="/search" method="POST">
		<font color="black" face="permanent marker">Instrument:</font><form:input type="text" name="text" value="" path="instrument"></form:input>
		<font color="black" face="permanent marker">City:</font><form:input type="text" name="text" value="" path="location"></form:input>
		<input type="submit" value="Search">
		</form:form>
		</center>
<br>
<br>
<br>
<center><h1><font face="permanent marker" style="padding-right:250px">Here are your Search Results!</font></h1></center>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<c:if test="${not empty userList }">
<table class="table table-hover">
  <thead>
   <tr>
      <th scope="col">Name</th>
      <th scope="col">Location</th>
      <th scope="col">Instrument</th>
      
    </tr>
  </thead>
   <tbody>
 <c:forEach items="${userList}" var="user">
   <tr>
      <td scope="col"><a href="/displayProfile?email=${user.email}"><c:out value="${user.firstName} ${user.lastName}"></c:out></a></td>
      <td scope="col"><strong><c:out value="${user.city}"></c:out></strong></td>
      <td scope="col"><strong><c:if test="${user.electricguitar}">Electric Guitar</c:if></strong>
       					<strong><c:if test="${user.bass}">Bass</c:if></strong>
       					<strong><c:if test="${user.keyboards}">Keyboards</c:if></strong>
       					<strong><c:if test="${user.vocalist}">Vocalist</c:if></strong>
       					<strong><c:if test="${user.drums}">Drums</c:if></strong>
       					
      </td>      
    </tr>
  </c:forEach>
	</tbody>
</table>
</c:if>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<!-- ______________________________________________________Bottom Menu ______________________________-->
	<div class="bottommenu">
		<div class="bottomlogo">
		<span class="dotlogo"></span><a href="/"><img src="img\2.png" alt="logo1"></a><span class="dotlogo"></span>
		</div>
		<ul class="nav nav-tabs bottomlinks">
			<li role="presentation" ><a href="/index" role="button">Home</a></li>
			<li role="presentation"><a href="/browse">Browse</a></li>
			<li role="presentation"><a href="/displayProfile?email=${loggedInUser.email}">My Account</a></li>
			<li role="presentation"><a href="/forum">Forum</a></li>
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