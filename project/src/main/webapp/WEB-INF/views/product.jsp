<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %> 
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Product ㅣ CharCha</title>
    <!--  폰트 적용  -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;1,100;1,200&family=Noto+Sans+KR:wght@100;300&display=swap');
    </style>
    <!--폰트 적용 끝-->
    <!--jquery적용-->
    <script src="resources/jquery-3.6.0.min.js"></script>
    <style type=text/css>
        @import url("resources/js_css/style.css");

        h3 {
            text-align: center;
            color: rgb(167, 167, 167);
            font-style: italic;
        }

        .box {
            display: inline-block;
        }

        .line {
            margin: 0 auto;
            width: 1030px;
        }

        .list {
            padding: 0px 15px 15px 15px;
        }

        .money {
            font-size: 15px;
            color: black;
            font-weight: 600;

        }

        p {
            text-align: center;
            font-size: 25px;
            margin-bottom: 11px;
            letter-spacing: 0.03vh;
        }
    </style>
</head>

<body>

   
    
    <div id="main-page" text-align:center;>
        <p style="color:black">PRODUCT</p>
        <hr width="30px" border-color="black">
        <h3>Good Day With Charcha</h3>
        <div id="product list">
            <div class="line">
                    <c:forEach items="${list }" var="row">
                <div class="box" id="p1">

                    <ul class="list">
                   <li><a href = "details/${row.productId}"> <img class="hover${row.productId} }" src="resources/images/${row.productImg}" width="220px" heigt="220px"></a></li>
                        <br height=1>
                        <li>
                            
                        ${row.productName }
                        </li>
                        <li class="money">
                          ${row.productPrice }원
                        </li>
                    </ul>

                </div>
                    </c:forEach>
            
        </div>
    </div>
    
    <c:forEach items="${list }" var="row">
    <script>
        $(document).ready(function () {
            $(".hover${row.productId}").mouseover(function () {
                $(this).attr("src", $(this).attr("src").replace("resources/images/${row.productImg}", "resources/images/${row.productImg2}"));
            });
            $(".hover${row.productId}").mouseout(function () {
                $(this).attr("src", $(this).attr("src").replace("resources/images/${row.productImg2}", "resources/images/${row.productImg}"));
            });
           
        });
    </script>
     </c:forEach>
   
</body>
</html>
<%@ include file="footer.jsp" %>
