<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="resources/js_css/notice1.css" />
    <script src="js/jquery-3.6.0.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notice ㅣ CharCha</title>
    <script>
        window.addEventListener('load', function() {
            var allElements = document.getElementsByTagName('*');
            Array.prototype.forEach.call(allElements, function(el) {
                var includePath = el.dataset.includePath;
                if (includePath) {
                    var xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function () {
                        if (this.readyState == 4 && this.status == 200) {
                            el.outerHTML = this.responseText;
                        }
                    };
                    xhttp.open('GET', includePath, true);
                    xhttp.send();
                }
            });
        });

    </script>

    <script>
    $(document).ready(function(){
        $("#headers").load("header.html");

    });
    </script>
    <style>
        h3 {
            text-align: center;
        }

        h4 {
            font-weight: 300;
            text-align: center;
        }
    </style>

</head>

<body class="body">
    <div id="headers"></div>
    <h4>NOTICE</h4>
    <hr width="30px" border-color="black">
    <h3>안녕하세요 Charcha입니다!</h3>
    <br><br><br><br>
    
        <div class = "noticemain" >
            <img src="resources/images/notice.png" width="700" >
        </div>

        <div class="noticetbutton">
        <input id="ntbutton" type="button" value="목록으로" onclick="location.href='notice.jsp'">
        </div> 
     

</body>
</html>