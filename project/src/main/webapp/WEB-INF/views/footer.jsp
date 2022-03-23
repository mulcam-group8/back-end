<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <!--  폰트 적용  -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;1,100;1,200&family=Noto+Sans+KR:wght@100;300&display=swap');
    </style>
    <!--폰트 적용 끝-->
<title>Insert title here</title>
<script src="resources/jquery-3.6.0.min.js"></script>
    <style type=text/css>
      
        footer {
			position: absolute;
			bottom: -999;
			left: 0;
			right: 0;
		}

        .footername {
            text-align: center;
            color: rgb(167, 167, 167);
            font-style: italic;
        }

       
        icon {
            font-size: 25px;
            margin-bottom: 11px;
            letter-spacing: 0.03vh;
        }
    </style>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

</head>
<body>

  <footer class="footer">
  <br>
<br>

<hr>
<br>
<br>
                <p class="" style="text-align: center; font-size: 16px;">
                    누구나 쉽게 삶 속에서 차를 즐길 수 있길 바라는 마음을 담았습니다.</p>
                <h3 class="footername">CHARCHA차차</h3>
                
                 <div id="go_top">
			<div class="icon" align="right">
				<a href="#"><img src="${pageContext.request.contextPath}/resources/images/tealeaf.png" alt="상단으로 가기"
					width="50" /></a>
					
					
		</div>
   </footer>
                
               
</body>
</html>