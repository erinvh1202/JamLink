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
            <h1 class="w3layouts_head"><font face="permanent marker">Update Your Profile! <c:out value="${loggedInUser.firstName}" /></font></h1>
				<div class="w3layouts_main_grid">
					<form:form action="/profile" method="POST" modelAttribute="userLogin" class="w3_form_post">
						
						<form:hidden path="email" value="${userLogin.email}"/>
						<form:hidden path="password" value="${userLogin.password}"/>
						<form:hidden path="profilePic" value="${userLogin.profilePic}"/>
						<form:hidden path="rating" value="${userLogin.rating}"/>
						<form:hidden path="noOfRatings" value="${userLogin.noOfRatings}"/>
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Age</label>
								<form:input type="text" name="Task" required="true" path="age"></form:input>
							</span>
						</div>
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Instruments</label>
					<form:checkbox name="Vocalist" value="vocalist" path="vocalist"/>Vocalist
					<form:checkbox name="electric guitar" value="electric guitar" path="electricguitar"/>Electric Guitar
					<form:checkbox name="bass" value="bass" path="bass"/>Bass
					<form:checkbox name="drums"  path="drums"/>Drums
			<br>
					<form:checkbox name="keyboards" value="keyboards" path="keyboards"/>Keyboards
					<button type="button" class="btn btn-dark" onclick="myFunction()">other</button>

                     <p id="demo"></p>

                      <script>
             function myFunction() {
                 var txt;
            var instrument = prompt("Please enter selection:", "Trombone");
            if (instrument == null || instrument == "") {
             txt = "User cancelled the prompt.";
              } else {
         txt = "You entered " + instrument;
        }
         document.getElementById("demo").innerHTML = txt;
     }
    </script>

								</span>
						</div>
		
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Most Available </label>
								<form:select name="mostavailable" path="mostavailable">
									<form:option value="none" selected="" disabled=""></form:option>
									<form:option value="Morning">Morning</form:option>
									<form:option value="Evening">Evening</form:option>
									<form:option value="Night">Night</form:option>
									</form:select>
								</span>
						</div>
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Level of Commitment</label>
								<form:select name="commitment" path="levelofcommitment">
									<form:option value="none" selected="" disabled=""></form:option>
									<form:option value="Fun">Just for fun</form:option>
									<form:option value="Intermediate">Intermediate</form:option>
									<form:option value="Professional">Professional</form:option>
									</form:select>
								</span>
						
					    <div class="agileits_w3layouts_main_grid w3ls_main_grid">
							<span class="agileinfo_grid">
								<label>Your location</label>
								<div class="agileits_w3layouts_main_gridl">
									<form:input class="text" name="Text" type="text" placeholder="City" required="true" path="city"></form:input>
								</div>
								<div class="agileits_w3layouts_main_gridr">
									<form:input type="text" name="state" placeholder="State " required="true" path="state"></form:input>
								</div>
									<div class="clear"> </div>
			
							</span>
							<div class="agileits_w3layouts_main_grid w3ls_main_grid">
							<span class="agileinfo_grid">
								<label>Seeking</label>
								<div class="agileits_w3layouts_main_gridl">
								<form:textarea name="seeking" path="seeking"></form:textarea>
							</span>
						</div>
					<br>
					<br>
					<div class="w3_main_grid">
						<div class="w3_main_grid_right">
							<center><input type="submit" value="Submit"></center>
							</div>
					</div>
						</form:form>
						
				
			</div>
		</div>
	</div>
	</div>
<!-- //footer -->
</body>
</html>