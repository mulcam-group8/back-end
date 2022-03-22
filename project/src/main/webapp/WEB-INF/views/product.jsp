<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="js/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#headers").load("header.html");

        });
    </script>
    <style type=text/css>
        @import url("css/style.css");

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
            width: 900px;
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
    <div id="headers"></div>

    
    <!--이미지 호버 제이쿼리-->
    <script>
        $(document).ready(function () {
            $(".hover1").mouseover(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/tea1.jpg", "./img/h1.jpg"));
            });
            $(".hover1").mouseout(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/h1.jpg", "./img/tea1.jpg"));
            });
            $(".hover2").mouseover(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/tea2.jpg", "./img/h2.jpg"));
            });
            $(".hover2").mouseout(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/h2.jpg", "./img/tea2.jpg"));
            });
            $(".hover3").mouseover(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/tea3.jpg", "./img/h3.jpg"));
            });
            $(".hover3").mouseout(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/h3.jpg", "./img/tea3.jpg"));
            });
            $(".hover4").mouseover(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/tea4.jpg", "./img/h4.jpg"));
            });
            $(".hover4").mouseout(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/h4.jpg", "./img/tea4.jpg"));
            });
            $(".hover5").mouseover(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/tea5.jpg", "./img/h5.jpg"));
            });
            $(".hover5").mouseout(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/h5.jpg", "./img/tea5.jpg"));
            });
            $(".hover6").mouseover(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/tea6.jpg", "./img/h6.jpg"));
            });
            $(".hover6").mouseout(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/h6.jpg", "./img/tea6.jpg"));
            });
            $(".hover7").mouseover(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/tea7.jpg", "./img/h7.jpg"));
            });
            $(".hover7").mouseout(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/h7.jpg", "./img/tea7.jpg"));
            });
            $(".hover8").mouseover(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/tea8.jpg", "./img/h8.jpg"));
            });
            $(".hover8").mouseout(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/h8.jpg", "./img/tea8.jpg"));
            });
            $(".hover9").mouseover(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/tea9.jpg", "./img/h9.jpg"));
            });
            $(".hover9").mouseout(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/h9.jpg", "./img/tea9.jpg"));
            });
            $(".hover10").mouseover(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/tea10.jpg", "./img/h10.jpg"));
            });
            $(".hover10").mouseout(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/h10.jpg", "./img/tea10.jpg"));
            });
            $(".hover11").mouseover(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/tea11.jpg", "./img/h11.jpg"));
            });
            $(".hover11").mouseout(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/h11.jpg", "./img/tea11.jpg"));
            });
            $(".hover12").mouseover(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/tea12.jpg", "./img/h12.jpg"));
            });
            $(".hover12").mouseout(function () {
                $(this).attr("src", $(this).attr("src").replace("./img/h12.jpg", "./img/tea12.jpg"));
            });
        });
    </script>
    <!--이미지 호버 제이쿼리 끝-->

    
    <div id="main-page" text-align:center;>
        <p style="color:black">PRODUCT</p>
        <hr width="30px" border-color="black">
        <h3>Good Day With Charcha</h3>
        <div id="product list">
            <div class="line">
                <div class="box" id="p1">

                    <img class="hover1" src="./img/tea1.jpg" width="220px" heigt="220px"><br>
                    <ul class="list">
                        <li>
                            
[에디션 덴마크] 커피티포트
                        </li>
                        <li class="money">
                            23,000원
                        </li>
                    </ul>

                </div>
                <div class="box" id="p2">
                    <img class="hover2" src="./img/tea2.jpg" width="220px" heigt="220px"><br>
                    <ul class="list">
                        <li>
                            [HOT] 차차 클래식
                        </li>
                        <li class="money">
                            12,800원
                        </li>
                    </ul>
                </div>
                <div class="box" id="p3">
                    <img class="hover3" src="./img/tea3.jpg" width="220px" heigt="220px"><br>
                    <ul class="list">
                        <li>
                            [NEW] 클랙식틴
                        </li>
                        <li class="money">
                            15,600원
                        </li>
                    </ul>
                </div>
                <div class="box" id="p4">

                    <img class="hover4" src="./img/tea4.jpg" width="220px" heigt="220px"><br>
                    <ul class="list">
                        <li>
                            [HOT] 차차 오리지날
                        </li>
                        <li class="money">
                            11,300원
                        </li>
                    </ul>

                </div>
            </div>
            <div class="line">
                <div class="box" id="p5">

                    <img class="hover5" src="./img/tea5.jpg" width="220px" heigt="220px"><br>
                    <ul class="list">
                        <li>
                            [SET] 다기 세트
                        </li>
                        <li class="money">
                            42,000원
                        </li>
                    </ul>

                </div>
                <div class="box" id="p6">

                    <img class="hover6" src="./img/tea6.jpg" width="220px" heigt="220px"><br>
                    <ul class="list">
                        <li>
                            [티핸들] 프레젠트 박스
                        </li>
                        <li class="money">
                            22,500원
                        </li>
                    </ul>

                </div>
                <div class="box" id="p7">

                    <img class="hover7" src="./img/tea7.jpg" width="220px" heigt="220px"><br>
                    <ul class="list">
                        <li>
                            [에디션 덴마크] 글라스 3종
                        </li>
                        <li class="money">
                            29,000원
                        </li>
                    </ul>

                </div>
                <div class="box" id="p8">

                    <img class="hover8" src="./img/tea8.jpg" width="220px" heigt="220px"><br>
                    <ul class="list">
                        <li>
                            [티핸들] 그린루바브
                        </li>
                        <li class="money">
                            21,300원
                        </li>
                    </ul>

                </div>
            </div>
            <div class="line">
                <div class="box" id="p9">

                    <img class="hover9" src="./img/tea9.jpg" width="220px" heigt="220px"><br>
                    <ul class="list">
                        <li>
                            [캔들] 미니틴세트
                        </li>
                        <li class="money">
                            23,000원
                        </li>
                    </ul>

                </div>
                <div class="box" id="p10">

                    <img class="hover10" src="./img/tea10.jpg" width="220px" heigt="220px"><br>
                    <ul class="list">
                        <li>
                            [에디션 덴마크] 머그컵 세트
                        </li>
                        <li class="money">
                            34,000원
                        </li>
                    </ul>

                </div>
                <div class="box" id="p11">

                    <img class="hover11" src="./img/tea11.jpg" width="220px" heigt="220px"><br>
                    <ul class="list">
                        <li>
                            [TOOLS] 타임모어 저울
                        </li>
                        <li class="money">
                            48,000원
                        </li>
                    </ul>

                </div>
                <div class="box" id="p12">

                    <img class="hover12" src="./img/tea12.jpg" width="220px" heigt="220px"><br>
                    <ul class="list">
                        <li>
                            [에디션 덴마크] 차차 커피
                        </li>
                        <li class="money">
                            24,000원
                        </li>
                    </ul>

                </div>
            </div>
            <hr>
            <footer id="footer">
                <p class="" style="text-align: center; font-size: 16px;">
                    누구나 쉽게 삶 속에서 차를 즐길 수 있길 바라는 마음을 담았습니다.</p>
                <h3>CHARCHA차차</h3>
            </footer>
        </div>
    </div>

	<script src="script.js"></script>
</body>