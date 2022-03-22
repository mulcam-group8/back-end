<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login ㅣ CharCha</title>
<!--  폰트 적용  -->
<style>
	@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;1,100;1,200&family=Noto+Sans+KR:wght@100;300&display=swap');
</style>
<!--폰트 적용 끝-->
<script src="resources/jquery-3.6.0.min.js"></script>
<style>
.login_wrapper{
    /*display: block;
	relative;
    width: 100%;
    min-height: 300px;
    height: auto;*/
    max-width: 960px;
    margin: 0 auto;
    padding: 60px 16px 70px;
   	text-align : center;
}

span.title {
	font-size: 25px;
	font-weight : bold;
    /*line-height: 32px;*/
}

label{
	font-size : 20px;
	margin-bottom : 12px;
}

input[type=text], input[type=password]{
	font-size : 14px;
	width : 60%;
	height : 45px;
	border : 1px solid gray;
	padding : 10px 15px;
	margin-top : 15px;
	margin-bottom: 20px;
}

.loginBtn{
	font-size : 15px;
    display: inline-block;
    width: 40%;
    height: 60px;
    padding: 12px 20px;
    /*white-space: nowrap;
    line-height: 1.25;*/
    cursor: pointer;
    
    color: #ffffff !important;
    background-color: #222222 !important;
    border-color: #222222 !important;
}
 
</style>
</head>
<body>

	<div class="login_wrapper">
			<div class="headertext">
			<span class="title">로그인</span>
			</div>
		<br>
		<div class = "text_body">
			<form>
			<label for="loginId" class="title">아이디</label>
			<br>
			<input id="loginId" type="text" name="id" autofocus required="required">
			<br>
			<label for="loginPwd" class="title">비밀번호</label>
			<br>
			<input id="loginPwd" type="password" name="pwd" autofocus required="required">
			<br><br>
			<input id="loginBtn" type= "button" class="loginBtn" value="로그인">
			</form>
		</div>
		
	</div>
	
<script>
$('input:button').on("click",function(){
	
	var idlist = ["java","test","charcha","yul_2","multi"];
	var pwdlist = ["1234","test","charcha","asdf","0000"];
	var empty_input = "";
	var id = document.getElementById("loginId").value;
	var pwd = document.getElementById("loginPwd").value;
	
	var check_id = false;
	var check_pwd = false;
	for(var i =0; i<idlist.length;i++){
		if(id==idlist[i]){
			check_id = true;
		}
	}
	for(var i=0;i<pwdlist.length;i++){
		if(pwd==pwdlist[i]){
			check_pwd = true;
		}
	}
	
	if(id==empty_input){
		alert("아이디를 입력하세요");
	}else if(pwd == empty_input){
		alert("비밀번호를 입력하세요");
	}
	else if(check_id == true && check_pwd == true){  // 해당 아이디가 있을 때
		location.href="./main.jsp?username="+id;
	}else if(check_id == false){                // 해당 아이디가 없을 때
		var confirmmsg = confirm("해당하는 아이디가 없습니다.");
		if(confirmmsg){  // 확인버튼 클릭
			location.href = "./login.jsp";     // 회원가입 링크로 변경! 
		}else{  // 취소버튼 클릭
			location.href = "./main.jsp";
		}
	}else if(check_pwd == false){               // 비밀번호가 다를때
		var confirmmsg = confirm("비밀번호가 다릅니다");
		if(confirmmsg){  // 확인버튼 클릭
			location.href = "./login.jsp";
		}else{  // 취소버튼 클릭
			location.href = "./main.jsp";
		}
	}
	
});
</script>
</body>
</html>