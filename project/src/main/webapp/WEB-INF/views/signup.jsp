<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <!--  폰트 적용  -->
<style>
	@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;1,100;1,200&family=Noto+Sans+KR:wght@100;300&display=swap');
</style>
<!--폰트 적용 끝-->
<script src="https://kit.fontawesome.com/c21d7630fc.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>
<link rel="stylesheet" href="resources/js_css/signup.css" />
<link rel="stylesheet" href="resources/js_css/tos.css" />

<script type="text/javascript">
    $(function(){
        $("#date1").datepicker();
    });
    </script>

<title>Sign up ㅣ CharCha</title>

</head>
<body>
   
    <!-- <div data-include-path="header.html"></div> -->

<div class="signform">
    <div class="signtitle">
        <h1> 회원가입 </h1>
     </div>
<form action="signup" method="post">  
    <div class="signtop">
            <!-- 백엔드와 연결부분 action -->
             
            <fieldset>
                <legend class="require">[필수 입력]</legend>
                <div class="signdetail">
                <p>
                <label class="detop" for="userid">아이디</label>
                <br>
                <br>
                <input type ="text" name="userid" id="userid" placeholder=' 아이디를 입력하세요.(2자 이상)'/ required minlength="2">
            </p>
            <p>
                <br>
                <label class="detop" for="userpw">비밀번호</label>
                <br>
                <br>
                <input type ="password" name="userpw" id="userpw" required>
            </p>
            <p>
                <br>
                <label class="detop" for="usernick">이름</label>
                <br>
                <br>
                <input type ="text" name="usernick" id="usenick" required>
            </p>
            <p>
                <br>

                
                <label class="detop" for="useremail">이메일</label>
                <br>
                <br>
                <div class="deemail">
                    <div class="emailblank">
                        <input type ="text" name="useremail" id="useremail"  required>
                    </div>
                    <div class="emaildot"><p>@</p></div>

                    <div class="emmailput"> 
                        <select id="emailchoose" name="user_address">
                            
                               <option value="네이버">naver.com</option>  
                               <option value="e다음">daum.net</option>  
                               <option value="한메일">hanmail.net</option>  
                               <option value="지메일">gmail.com</option>  
                               <option value="핫메일">hotmail.com</option>  
                               <option value="네이트">nate.com</option>  
                            
                           </select>


                    </div>
                </div>
            </p>
            <br>
            <br>
               </div>
            </fieldset>
            
    </div>

    <div class="signbottom">
    
       <fieldset>
           <legend class="require">[선택 입력]</legend>
           <div class="signlast">

            <div class="lastleft">
           <p>
                <label  id="birth"for="birthdate"> 생년월일 </label>
                <br>
                <br>
                <input type="text" class="birthput" name="date" name="date" id="date1" size="12" />

              
           </p>
          </div>
          <div class="lastright">
           <p>
               <span class="detop">거주 지역 </span>
               <br>
               <br>
               <select class="birthput" name="user_address">
                <option value="" disabled> 거주 지역을 선택해주세요</option>  
                   <option value="서울특별시">서울특별시</option>  
                   <option value="부산광역시">부산광역시</option>  
                   <option value="대구광역시">대구광역시</option>  
                   <option value="인천광역시">인천광역시</option>  
                   <option value="광주광역시">광주광역시</option>  
                   <option value="대전광역시">대전광역시</option>  
                   <option value="울산광역시">울산광역시</option>  
                   <option value="세종특별시">세종특별자치시</option>  
                   <option value="경기도">경기도</option>  
                   <option value="강원도">강원도</option>  
                   <option value="충청북도">충청북도</option>  
                   <option value="전라북도">전라북도</option>  
                   <option value="전라남도">전라남도</option>  
                   <option value="경상북도">경상북도</option>  
                   <option value="경상남도">경상남도</option>  
                   <option value="제주특별자치도">제주특별자치도</option>  
               </select>
           </p>
        </div>
        </div>
        
        </fieldset>
    </div>

	<div id="signupresult">
		<c:if test="${signupresult == \"no\"}">
				중복된 아이디입니다.
		</c:if>
	</div>

    <div class="lastbutton">
        <div class="lastbtleft">
       <input class="tosbt" type="button" value="취소" onclick="location.href='main.jsp'">
        </div>
        <div class="lastbtrigth">
       <input class="tosbt" type="submit" value="가입하기">
       </div>
      </div>

    </form>
</div>
    <script>
        includeHTML();
        </script>

</body>
</body>
</html>

<%@ include file="footer.jsp" %>