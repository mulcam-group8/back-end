<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.util.Date"%>

	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>





<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart | Charcha</title>
<!-- 폰트 적용 -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;1,100;1,200&family=Noto+Sans+KR:wght@100;300&display=swap')
	;
</style>
<script src="resources/jquery-3.6.0.min.js"></script>
 <link rel="stylesheet" href="resources/js_css/notice.css" />
 <link rel="stylesheet" href="resources/js_css/tos.css" />

<script>
$(function(){
$("#btnList").click(function(){
    location.href="product";
});

$("#btnDelete").click(function(){
    if(confirm("상품을 구매하시겠습니까")){
        location.href="deleteAll.do";
    }
});
});
</script>
<style>
.empty{
margin:0px auto;
margin-bottom:100px;
}
</style>
</head>
	<c:choose>
		<c:when test="${map.count == 0 }">
     <h2 class="empty">장바구니가 비었습니다.</h2>
    </c:when>

		<c:otherwise>
			<form id="form1" name="form1" method="post"
				action="buy">
				<table width="400px" style="text-align: center; border: 1px solid #dddddd">
					<tr>
						<th>상품명</th>
						<th>단가</th>
						<th>수량</th>
						<th>금액</th>
						<th>삭제</th>
					</tr>
					<c:forEach var="row" items="${map.list}">
						<tr align="center">
							<td>${row.productName}</td>

							<td>${row.productPrice}원</td>

							<td><input type="number" name="productCount" style="width: 30px;"

								value="${row.productCount}" onclick="changedb()">


								<input type="hidden" name="cartId" value="${row.cartId}">


							</td>
							<td>${row.money}원</td>
							<td><a href="deleteproduct">삭제</a></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="5" align="right" style="font-weight:bold">장바구니 금액 합계 :
								${map.sum}원<br> 
								배송료 :${map.fee}원<br> 
								<span style="font-size:25px">총합계 : ${map.totalsum}원</span>
						<%-- 	<c:forEach var="member" items="${map.member}">
						<tr  align="center">
							<td colspan="5">${member.memberId }님의 생일은 ${member.birth}</td>
							</tr>							
							<c:if test="${member.birth} === ${date}">생일 축하합니다</c:if>
							</c:forEach> --%>
						</td>
					</tr>
				</table>

				
			</form>
		</c:otherwise>
	</c:choose>
	<div class="tosbutton">
            <div class="tosbtleft">
            <button type="button" class="tosbt" id="btnDelete">구매하기</button>
            </div>
            <div class="tosbtrigth">
              <button type="button" class="tosbt" id="btnList">쇼핑하기</button>
          </div>
          </div>
	
	<script>
	function changedb() {
		const count = document.getElementById('productCount').value;
		
	}
	
	</script>
</body>
</html>

<%@ include file="footer.jsp" %>