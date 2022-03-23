<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<!--  폰트 적용  -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;1,100;1,200&family=Noto+Sans+KR:wght@100;300&display=swap')
	;
</style>
<!--폰트 적용 끝-->
<script
	src="${pageContext.request.contextPath}/resources/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/js_css/details_final.css" />

<script>
	function display1() {
		alert('장바구니에 먼저 넣어주세요.');
		/* document.write('<h1>결제창입니다.</h1>'); */
	}

</script>

<title>Details ㅣ CharCha</title>
</head>
<body>

	<div class="detailmain">


		<div class="detailtop">
			<div class="topleft">
				<img
					src="${pageContext.request.contextPath}/resources/images/${dto.productImg}"
					alt="">
			</div>


			<div class="topright">

				<div class="productname">
					<h3>${dto.productName }</h3>

				</div>

				<form name="form1" method="post"
					action="${pageContext.request.contextPath}/insert.do">
					<input type="hidden" name="productId" value="${dto.productId }">

					<h4>> 상품정보</h4>
					<div class="detailinfo">
						<div class="produccode">
							<div class="codeleft">상품 코드</div>
							<div class="coderight">${dto.productId }</div>

						</div>
						<div class="productcount">
							<div class="countleft">구매수량</div>
							<div class="ccountright">
								<select name="productCount">

									<c:forEach begin="1" end="10" var="i">
										<option value="${i}">${i}</option>
										<!-- 장바구니에  10개 까지 담을수 있다.-->
									</c:forEach>
								</select>
							</div>

						</div>
						<div class="productcoupon">
							<div class="couponleft">사용가능 쿠폰</div>
							<div class="couponright">0개</div>

						</div>
						<hr>
						<br>
						<div class="optionchoose">
							<div class="optionleft">옵션선택</div>
							<div class="optionright">
								<select id="oprg">
									<option>티백 10개입</option>
									<option>미니틴 35G</option>
									<option>클래식틴 100G</option>
									<option>빅 라운드 틴 175G</option>
								</select>
							</div>

						</div>

						<div class="shipping">
							<div class="shipleft">배송비</div>
							<div class="shipright">2500원</div>
						</div>


						<div class="totalprice">
							<div class="totalleft">결제금액</div>
							<div class="totalright">${dto.productPrice } 원</div>

						</div>

						<div class="orderbutton">
							<div class="orderleft">
								<input type="button" id='purschase' value='구매하기'
									onclick="display1()">
							</div>
							<div class="orderright">
								<input type='submit' id='cart' value='장바구니에 담기'>
							</div>
						</div>

					</div>
				</form>

			</div>
		</div>

		<div class="bar">
			<hr>
		</div>


		<div class="detailmiddle">

			<div class='intro'>

				<h2>${dto.productContents}</h2>
				<br> <br>
				<h1>${dto.productName }</h1>

				<img
					src="${pageContext.request.contextPath}/resources/images/${dto.productImg2}"
					alt="">

				<P class='intro_p'>
					${dto.productContents } 바다에 불어오는 바람이라는 뜻의 씨브리즈는 이름만큼이나 청량한 느낌이 매력적인
					티입니다. <br> 그린 루이보스의 부드러움에 비타민 열매라고 불리우는 씨벅톤 열매와 파인애플 조각으로 새콤함을
					더해 <br> 화사한 향과 대비되는 톡톡 쏘는 맛으로 몸도 마음도 산뜻하게 깨워줄 거예요.
				</P>


				<h2>BLENDING</h2>
				<h4>그린루이보스, 비타민나무열매(Sea Buckthorn), 파인애플, 당근, 천수국 꽃잎, 천연향</h4>
				<br> <br> <br>

			</div>
		</div>

		<div class="detailbottom">
			<!-- 타입구분 -->
			<div class="types">
				<h2>TYPES</h2>
				<hr class="bar">
			</div>



			<!-- 타입 1  -->

			<div class="type_1">
				<h1>1. TEA BAG</h1>
				<p>티백 10개입 (3g*10티백) 18,000</p>

				<img
					src="${pageContext.request.contextPath}/resources/images/details-page-image-02.jpg"
					alt="">
				<!-- 이미지 사이 간격  -->
				<img
					src="${pageContext.request.contextPath}/resources/images/details-page-image-03.jpg"
					alt="">

				<h4 id='seabreeze'>
					씨브리즈 티백 <br> 개별포장으로 언제 어디서나 간편하게 즐길 수 있는 씨브리즈 티백 10개가 한상자에
					들어있어요. <br> 집이나 사무실, 혹은 야외에서 컵이나 물병에 넣기만 하면 새콤하고 청량한 씨브리즈를 마실
					수 있답니다. <br> 씨브리즈를 처음 드셔보시거나 가벼운 선물로 구입하는 분에게 추천드려요. <br>
				</h4>

				<h4>
					구성품<br> 유기농 씨브리즈 티백 10개 (3g*10), 종이 상자
				</h4>
				<hr class="bar">
			</div>



			<!-- 타입 2  -->
			<div class="type_2">
				<h1>2. MINI TIN</h1>
				<p>미니틴 35g (잎차) 19,000</p>

				<img
					src="${pageContext.request.contextPath}/resources/images/details-type2-01.jpg"
					alt="">

				<h4 id='seabreeze'>
					씨브리즈 미니틴 <br> 청사과를 연상하게 하는 연두색 미니틴 안에 씨브리즈 티 35g이 들어있어요. <br>

					조약돌같이 동그랗고 매끄러운 틴 케이스는 티를 다 마신 후에는 작은 소품을 담아두는 등 다양한 용도로 사용할 수도 있고,
					<br> 여러개를 모아두면 더욱 귀여워서 선물용으로도 인기가 좋습니다. 10-15잔 정도 드실 수 있어서
					부담스럽지 않은 양이예요.
				</h4>

				<h4>
					구성품<br> 씨브리즈 잎차 35g, 미니틴, 종이상자, 제품카드, 브랜드카드
				</h4>

				<hr class="bar">
			</div>


			<!-- 타입 3  -->
			<div class="type_3">
				<h1>3. CLASSIC TIN</h1>
				<p>클래식틴 100g (잎차) 34,000</p>

				<img
					src="${pageContext.request.contextPath}/resources/images/details-type3-01.jpg"
					alt="">
				<!-- 이미지 사이 간격  -->
				<img
					src="${pageContext.request.contextPath}/resources/images/details-type3-02.jpg"
					alt="">

				<h4 id='seabreeze'>
					씨브리즈 클래식틴 <br> 클래식한 사각형의 틴케이스 안에 에코페이퍼로 포장된 씨브리즈 100g이 들어있어요.
					<br> 30-40잔 정도 드실 수 있는 양으로, 씨브리즈의 비타민 같은 새콤함을 오래 즐기고 싶은 분들에게
					추천드립니다.<br> 덴마크 전통 끈과 우든 핸들로 구성된 포장은 선물하기에도 좋아요. <br>
				</h4>

				<h4>
					구성품<br> 씨브리즈 잎차 100g(에코페이퍼 이중포장), 클래식틴, 제품카드, 브랜드카드
				</h4>
				<hr class="bar">
			</div>

		</div>

	</div>


	<a href="${pageContext.request.contextPath}/product">상품목록</a>

</body>
</html>

<%@ include file="footer.jsp"%>