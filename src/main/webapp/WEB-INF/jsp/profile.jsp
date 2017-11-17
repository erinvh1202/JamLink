<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>JamLink</title>
<meta name="description"
	content="Scarica gratis il nostro Template HTML/CSS GARAGE. Se avete bisogno di un design per il vostro sito web GARAGE può fare per voi. Web Domus Italia">
<meta name="author" content="Web Domus Italia">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<style>
	body{
	  
	  background-color:;
	
	}
	</style>
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
			<ul class="logreg">
				<li><a href="/updateprofile?email=${loggedInUser.email}">Update
						Profile</a></li>
				<li><a href="/index"><span class="register">Signout</span></a></li>
			</ul>
		</div>

		<!-- Navbar Up -->
		<nav class="topnavbar navbar-default topnav">
			<div class="container">
				<div class="navbar-header">
					<button type="button"
						class="navbar-toggle collapsed toggle-costume"
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
						href="/displayProfile?email=${userLogin.email}">My Account</a></li>
					<li><a href="/forum">Forum</a></li>

				</ul>
			</div>
		</nav>
	</div>
	<form method="POST" action="/upload" enctype="multipart/form-data">
    <input class="btn btn-secondary" type="file" name="file" style=" position: absolute; left: 175px; top: 270px;"/><br /> <br /> 
    <input type="submit" class="btn btn-secondary btn-xs" value="Submit" style=" position: absolute; left: 190px; top: 300px;" />
	</form>
						
	<form:form action="/profile" method="POST" modelAttribute="userLogin">
						<form:hidden path="email" value="${userLogin.email}"/>
						<form:hidden path="password" value="${userLogin.password}"/>
						<form:hidden path="profilePic" value="${userLogin.profilePic}"/>
						<form:hidden path="rating" value="${userLogin.rating}"/>
						<form:hidden path="noOfRatings" value="${userLogin.noOfRatings}"/>
					
		<table>
			<tr>
				<td width="42%"
					style="padding-left: 50px; background-image: url('img/jamlinkpc6.jpg');">
					<header id="header">

						 
						 <img
							src="data:image/jpg;base64,${userLogin.showPicture()}"
							class="img-circle" height="100" width="100" alt="Avatar">
 --%>
								<br>
								<br>
			

						<div class="inner">
							<h1>
								<font face="permanent marker" color="white"><c:out
										value="${userLogin.firstName} ${userLogin.lastName}"></c:out></font>
							</h1>
							<br><br><br>
							<h3>
								<font face="permanent marker" color="white"><strong>About
										Me</strong></font>
							</h3>
							<br>
							<br>
							<h4>
								<font color="white" face="permanent marker"><strong>Age:</strong></font>
							</h4>
							<h4>
								<font color="white" face="permanent marker"><c:out
										value="${userLogin.age}"></c:out></font>
							</h4>
							<br><br><br>
							<h4>
								<font color="white" face="permanent marker"><strong>Instruments:</strong></font>
							</h4>
							<c:if test="${userLogin.keyboards}">
								<h4>
									<font color="white" face="permanent marker">Keyboards</font>
								</h4>
							</c:if>
							<c:if test="${userLogin.drums}">
								<h4>
									<font color="white" face="permanent marker">Drums</font>
								</h4>
							</c:if>
							<c:if test="${userLogin.electricguitar}">
								<h4>
									<font color="white" face="permanent marker">Electric
										guitar</font>
								</h4>
							</c:if>
							<c:if test="${userLogin.vocalist}">
								<h4>
									<font color="white" face="permanent marker">Vocalist</font>
								</h4>
							</c:if>
							<c:if test="${userLogin.bass}">
								<h4>
									<font color="white" face="permanent marker">Bass</font>
								</h4>
							</c:if>
							<br><br><br>
							<h4>
								<font color="white" face="permanent marker"><strong>Level
										of Commitment:</strong></font>
							</h4>
							<h4>
								<font color="white" face="permanent marker"><c:out
										value="${userLogin.levelofcommitment}"></c:out></font>
							</h4>
							<br><br><br>
							<h4>
								<font color="white" face="permanent marker"><strong>Most
										Available:</strong></font>
							</h4>
							<h4>
								<font color="white" face="permanent marker"><c:out
										value="${userLogin.mostavailable}"></c:out></font>
							</h4>
							<br><br><br>
							<h4>
								<font color="white" face="permanent marker"><strong>Location:</strong></font>
							</h4>
							<h4>
								<font color="white" face="permanent marker"><c:out
										value="${userLogin.city}, ${userLogin.state}"></c:out></font>
							</h4>
							<div style="padding-right: 100px"></div>
					</header>
				</td>
				<td>
					<section id="one">
						<header class="major">
							<h2>
								<font color="black" face="permanent marker">Seeking<br /></font>
							</h2>

						</header>
					</section> <font color="black" class="values"><strong><c:out
								value="${userLogin.seeking}"></c:out></strong></font> <br> <br> <br>
					<br>  <!-- Two -->
					<section id="two">
						<header class="major">
							<h2>
								<font color="black" face="permanent marker">Upload Songs and Videos</font>
								<br><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/KI1ARBdi84w" frameborder="0" allowfullscreen></iframe>
							</h2>
						</header>
					</section> <br>

					<!-- Three -->
					<section id="three">
						<header class="major">
							<h2>
								<font color="black" face="permanent marker">User Rating</font>
							</h2>
							<br> <br>
							<div class="" style="padding-left: 50px">
								<c:forEach begin="1" end="5" varStatus="loop">
									<c:choose>
										<c:when test="${avgRating >= loop.index}">
										<a href="/rate?rating=${loop.index}"><span
											id="${loop.index}" class="fa fa-star checked"
											onclick="rating(this)"></span></a>
										</c:when>
										<c:otherwise>
										<a href="/rate?rating=${loop.index}"><span
											id="${loop.index}" class="fa fa-star"
											onclick="rating(this)"></span></a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								
							</div>

						</header>
					</section>
				</td>
			</tr>
		</table>
	</form:form>
	<br>
	<br>
	<br>
<div id="tlkio" data-channel="JamLink" data-theme="theme--minimal" style="width:100%;height:300px;"></div><script async src="http://tlk.io/embed.js" type="text/javascript"></script>	<!-- ______________________________________________________Bottom Menu ______________________________-->
	<div class="bottommenu">
		<div class="bottomlogo">
		<span class="dotlogo"></span><a href="/"><img src="img\2.png" alt="logo1"></a><span class="dotlogo"></span>
		</div>
		<ul class="nav nav-tabs bottomlinks">
			<li role="presentation" ><a href="/index" role="button">Home</a></li>
			<li role="presentation"><a href="/search">Browse</a></li>
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


<script type="text/javascript" src="jamlinkmain/JS/js1/jquery.js"></script>
<script type="text/javascript" src="jamlinkmain/JS/js2/isotope.js"></script>
<script type="text/javascript" src="jamlinkmain/JS/js2/myscript.js"></script> 
<script type="text/javascript" src="jamlinkmain/JS/js1/jquery.1.11.js"></script>
<script type="text/javascript" src="jamlinkmain/JS/js1/bootstrap.js"></script>

<script type="text/javascript">
	
    function rating(obj){
    	var id = $(obj).attr('id');
        $(obj).addClass('checked');
    }

</script>




</body>
</html>