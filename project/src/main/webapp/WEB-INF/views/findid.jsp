<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FindInfo ㅣ CharCha</title>
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
	font-size: 32px;
	font-weight : bold;
    /*line-height: 32px;*/
}

label{
	font-size : 20px;
	margin-bottom : 12px;
}

input[type=text]{
	font-size : 14px;
	width : 60%;
	height : 45px;
	border : 1px solid gray;
	padding : 10px 15px;
	margin-top : 15px;
	margin-bottom: 20px;
}

.findBtn{
	font-size : 20px;
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
 
#findresult{
	color : red;
} 

.modal_wrap{
	display:none;
	width:400px;
	height:200px;
	pading:20px 60px;
	background-color : #fefefe;
	border : 1px solid #888;
	border-redius:3px;
}

.modal_wrap .modal_closeBtn{
	position : absolute;
	top : 10px;
	right:10px;
}

.modal_context{
	display :flex;
}

.modal_c{
font-size: 32px;
    margin-top : 80px;
}

</style>
</head>
<body>

	<div class="login_wrapper">
			<div class="headertext">
			<span class="title">아이디/비밀번호 찾기</span>
			</div>
		<br>
		<div class="text_body">
			<input type="radio" id="search1" name="findid" onclick="search(1)" checked="checked">
			<label for="search1" class="title">아이디 찾기</label>
			<input type="radio" id="search2" name="findid" onclick="search(2)">
			<label for="search2" class="title">비밀번호 찾기</label>
		</div>
		<br>
		<br>
		<div class = "text_body">
			<div id="searchId">
				<form action="findid" method="post">
				<div class="form-group">
					<label for="findName" class="title">이름</label>
					<br>
					<input id="findName" type="text" name="name" autofocus required="required">
				</div>
					<br>
				<div class="form-group">
					<label for="findEmail" class="title">이메일</label>
					<br>
					<input id="findName" type="text" name="email" autofocus required="required">
				</div>
					<br>
				<div id="findresult">
				<c:if test="${findresult[0] == \"no\"}">
					일치하는 회원정보가 없습니다.
				</c:if>
				</div>
				<br>
				<input id="findBtn" type= "submit" class="findBtn" value="아이디 찾기">
				</form>
			</div>
			
			<div id="searchPw" style="display:none;">
				<form action="findpw" method="post">
				<div class="form-group">
					<label for="findId" class="title">아이디</label>
					<br>
					<input id="findId" type="text" name="id" autofocus required="required">
				</div>
				<div class="form-group">
					<label for="findName" class="title">이름</label>
					<br>
					<input id="findName" type="text" name="name" autofocus required="required">
				</div>
					<br>
				<div class="form-group">
					<label for="findEmail" class="title">이메일</label>
					<br>
					<input id="findName" type="text" name="email" autofocus required="required">
				</div>
					<br>
				<div id="findresult">
				<c:if test="${findresult2 == \"no\"}">
					일치하는 회원정보가 없습니다.
				</c:if>
				</div>
				<br>
				<input id="findBtn" type= "submit" class="findBtn" value="비밀번호 찾기">
				</form>
			</div>
			
			<div class="modal_wrap" id="my_modal">
				<div class="modal_content">
					<div class="modal_c">
						아이디는 ${findresult[1] } 입니다.
					</div>
					<div class="modal_closeBtn"><a href="/charcha/login">확인</a></div>
				</div>
			</div>
			<div class="modal_wrap" id="my_modal2">
				<div class="modal_content">
					<div class="modal_c">
						이메일로 임시 비밀번호를 <br>전송하였습니다.
					</div>
					<div class="modal_closeBtn"><a href="/charcha/login">확인</a></div>
				</div>
			</div>
			
		</div>
		
	</div>
	<script>
	function search(num) {
		if (num == '1') {
			document.getElementById("searchPw").style.display = "none";
			document.getElementById("searchId").style.display = "";	
		} else {
			document.getElementById("searchId").style.display = "none";
			document.getElementById("searchPw").style.display = "";
		}
	}
	
    function modal(id) {
        var zIndex = 9999;
        var modal = document.getElementById(id);

        // 모달 div 뒤에 희끄무레한 레이어
        var bg = document.createElement('div');
        bg.setStyle({
            position: 'fixed',
            zIndex: zIndex,
            left: '0px',
            top: '0px',
            width: '100%',
            height: '100%',
            overflow: 'auto',
            // 레이어 색갈은 여기서 바꾸면 됨
            backgroundColor: 'rgba(0,0,0,0.4)'
        });
        document.body.append(bg);

        // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
        modal.querySelector('.modal_closeBtn').addEventListener('click', function() {
            bg.remove();
            modal.style.display = 'none';
        });

        modal.setStyle({
            position: 'fixed',
            display: 'block',
            boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

            // 시꺼먼 레이어 보다 한칸 위에 보이기
            zIndex: zIndex + 1,

            // div center 정렬
            top: '50%',
            left: '50%',
            transform: 'translate(-50%, -50%)',
            msTransform: 'translate(-50%, -50%)',
            webkitTransform: 'translate(-50%, -50%)'
        });
    }

    // Element 에 style 한번에 오브젝트로 설정하는 함수 추가
    Element.prototype.setStyle = function(styles) {
        for (var k in styles) this.style[k] = styles[k];
        return this;
    };

    if(${findresult[0] == "yes"}){
    	modal('my_modal');
    }

    if(${findresult2 == "yes"}){
    	modal('my_modal2');
    }
    
    if(${findresult2 == "no"}){
    	search(2);
    	document.getElementById('search2').checked=true;
    	document.getElementById('search1').checked=false;
    }
	
	</script>
	
</body>
</html>

<%@ include file="footer.jsp" %>