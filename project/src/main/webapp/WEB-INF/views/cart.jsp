<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


<script>
$(function(){
$("#btnList").click(function(){
    location.href="${path}/shop/product/list.do";
});

$("#btnDelete").click(function(){
    if(confirm("장바구니를 비우시겠습니까?")){
        location.href="${path}/shop/cart/deleteAll.do";
    }
});
});
</script>

</head>
<body>
	<h2>장바구니</h2>
	<c:choose>
		<c:when test="${map.count == 0 }">
     장바구니가 비었습니다.
    </c:when>

		<c:otherwise>
			<form id="form1" name="form1" method="post"
				action="${path}/shop/cart/update.do">
				<table border="1" width="400px">
					<tr>
						<th>상품명</th>
						<th>단가</th>
						<th>수량</th>
						<th>금액</th>
					</tr>
					<c:forEach var="row" items="${map.list}">
						<tr align="center">
							<td>${row.productName}</td>

							<td>${row.productPrice}원</td>

							<td><input type="number" name="productCount" style="width: 30px;"
								value="${row.productCount}">


								<input type="hidden" name="cartId" value="${row.cartId}">


							</td>
							<td>${row.money}원</td>
							
						</tr>
					</c:forEach>
					<tr>
						<td colspan="5" align="right">장바구니 금액 합계 :
								${map.sum}원<br> 
								배송료 :${map.fee}원<br> 
								총합계 : ${map.totalsum}원
						</td>
					</tr>
				</table>
				<button type="button" id="btnDelete">장바구니 비우기</button>
				
			</form>
		</c:otherwise>
	</c:choose>
	<button type="button" id="btnList">상품목록</button>
</body>
</html>

<%@ include file="footer.jsp" %>