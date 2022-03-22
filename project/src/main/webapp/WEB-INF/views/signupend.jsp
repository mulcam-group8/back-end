<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="./signupend.css" />
    <script src="js/jquery-3.6.0.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome ㅣ CharCha</title>
    <script>
    $(document).ready(function(){
        $("#headers").load("header.html");

    });
    </script>

</head>

<body class="body">
    <div id="headers"></div>

    
        <div class = "endmain" >
            <img src="img/welcome.png" width="700" >
        </div>

        <div class="endbt">
        <input id="endbutton" type="button" value="확인" onclick="location.href='main.html'">
        </div> 
     

</body>
</html>