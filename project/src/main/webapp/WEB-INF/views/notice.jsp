<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="js/jquery-3.6.0.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notice ㅣ CharCha</title>
    <link rel="stylesheet" href="resources/js_css/notice.css" />
    <script>
        $(document).ready(function(){
            $("#headers").load("header.html");
    
        });
        </script>
    <script type="text/javascript">
        function btn(){
            alert("글 작성 권한이 없습니다.");
        } 
    </script>

</head>

<body>

    <div id="headers"></div>

    <div class = container>
        <div class="row">
            <table class="table" style="text-align: center; border: 1px solid #dddddd">
                <thead>
                    <tr>
                        <th class="num">번호</th>
                        <th class="title">제목</th>
                        <th class="writer">작성자</th>
                        <th class="writeday">작성일</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Notice</td>
                        <td><a href="./notice1.jsp">안녕하세요 Charcha입니다!</a></td>
                        <td>관리자</td>
                        <td>2022-02-01</td>
                    </tr>
                    <tr>
                        <td>Notice</td>
                        <td>CJ택배파업 배송지연 안내</td>
                        <td>관리자</td>
                        <td>2022-02-02</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>배송문의 합니다~</td>
                        <td>김기태</td>
                        <td>2022-02-21</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>안녕하세요 배송문의합니다.</td>
                        <td>김소연</td>
                        <td>2022-02-23</td>
                    </tr>
                </tbody>
            </table>
            <br>
            <div >
                <input type="button" class="writenew" value="글쓰기" onclick="alert('글 작성 권한이 없습니다')">
               </div>

              

        </div>

    </div>


</body>
</html>
