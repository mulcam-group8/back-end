<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %> 
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Main ㅣ CharCha</title>
<!--  폰트 적용  -->
<style>
	@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;1,100;1,200&family=Noto+Sans+KR:wght@100;300&display=swap');
</style>
<!--폰트 적용 끝-->
<script src="resources/jquery-3.6.0.min.js"></script>

<style type=text/css>
 @import url("resources/js_css/details.css");
</style>
</head>
<body>
	<div class="containerouter">
		<div class="imgcontainer">
			<div class="imginner">
				<img src="resources/images/1.jpg">

			</div>
			<div class="imginner">
				<img src="resources/images/4.jpg">
			</div>
			<div class="imginner">
				<img src="resources/images/3.png">
			</div>

		</div>
		
		<div class="imgbutton">
			<button class="imgbutton1" onclick="imgButtonClick1()"></button>
			<button class="imgbutton2" onclick="imgButtonClick2()"></button>
			<button class="imgbutton3" onclick="imgButtonClick3()"></button> 
			
		</div>
		
	</div>


</body>
</html>

<%@ include file="footer.jsp" %>