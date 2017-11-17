<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="jamlinkmain/mystyle.css">

<title>Insert title here</title>
</head>
<body>

	<section id="three"> <header class="major">
	<h2>
		<font face="permanent marker">User Rating</font>
	</h2>
	<br>
	<br>
	<div class="" style="padding-left: 50px">
		<c:forEach begin="1" end="5" varStatus="loop">
			<a><span id="${loop.index}" class="fa fa-star"
				 onclick="rating(this)"></span></a>

		</c:forEach>


	</div>
	
	
	

	</header> </section>

	<script type="text/javascript">
	
    function rating(obj){
    	var id = $(obj).attr('id');
        alert(id);
        
        $(obj).addClass('checked');
    }

</script>

</body>
</html>