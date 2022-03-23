<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>     
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--  폰트 적용  -->
<style>
	@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;1,100;1,200&family=Noto+Sans+KR:wght@100;300&display=swap');
</style>
<!--폰트 적용 끝-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="resources/js_css/signupend.css" />
   <script src="resources/jquery-3.6.0.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome ㅣ CharCha</title>

</head>

<body class="body">
    <div id="headers"></div>

    
        <div class = "endmain" >
            <img src="resources/images/buy.png" width="700" >
        </div>

        <div class="endbt">
        <input id="endbutton" type="button" value="확인" onclick="location.href='/charcha/'">
        </div> 
     

</body>
</html>

<%@ include file="footer.jsp" %>