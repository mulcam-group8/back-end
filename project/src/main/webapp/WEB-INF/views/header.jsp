<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<!--  폰트 적용  -->
<style>
	@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;1,100;1,200&family=Noto+Sans+KR:wght@100;300&display=swap');
</style>
<!--폰트 적용 끝-->

<style type=text/css>
header{ 

position: fixed; 
left: 0; 
right: 0; 
top: 0; 
z-index:999;
background:#ffff;
	}
	
body{

padding-top:350px;

}	

.menutap{

    margin: 0 0 0 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
}

	
</style>
</head>
<script src="${pageContext.request.contextPath}/resources/js_css/script.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js_css/style.css">
<body>

<header class="header">
	<div class="menu_wrap">
		<H2 style="font-size:30px"><a href="${pageContext.request.contextPath}/main"><img src="https://see.fontimg.com/api/renderfont4/w1OB8/eyJyIjoiZnMiLCJoIjo2NSwidyI6MTAwMCwiZnMiOjY1LCJmZ2MiOiIjMDAwMDAwIiwiYmdjIjoiI0ZGRkZGRiIsInQiOjF9/Q2hhckNoYQ/millenia-personal-use.png" alt="Cursive fonts"></a>
</a></H2>
		
		
		<!-- <div class="JoinLogin"><a href="tos">회원가입</a>&nbsp;
		<a href="login">로그인</a></div> -->
		
		
		<c:if test="${empty memberId }">
		<div class="JoinLogin"><a href="tos">회원가입</a>&nbsp;
		<a href="${pageContext.request.contextPath}/login">로그인</a></div>
		</c:if>
		
		<c:if test="${!empty memberId }">
		<tr>
		
			<td>${memberId}님 반갑습니다.</td> 
		<div align="right">
				<td class="login"><a href="${pageContext.request.contextPath}/logout" style="text-decoration:none;">로그아웃</a></td>
		
		</div>	
		</tr>
		</c:if>	
		

		
		<HR>
		<ul class="dep1">

			<li><a href="${pageContext.request.contextPath}/about">About</a>
				</li>

			<li><a href="${pageContext.request.contextPath}/product">상품</a>
				</li>

			<li><a href="${pageContext.request.contextPath}/cart">장바구니</a>
				</li>
			<li><a href="${pageContext.request.contextPath}/notice">공지사항</a>
			</li>

		</ul>

	</div>
	</header>

</body>
</html>