<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About ㅣ CharCha</title>
<!--  폰트 적용  -->
<style>
	@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;1,100;1,200&family=Noto+Sans+KR:wght@100;300&display=swap');
</style>
<!--폰트 적용 끝-->
<script src='js/jquery-3.6.0.min.js'></script>
<link rel="stylesheet" href="about.css">

<script>
$(document).ready(function(){
	$("#headers").load("header.html");

});
</script>


</head>
<body>
<div id="headers"></div>


	<section class="about-main-section">
		<div class=about-main-content>
			<img class="about-image" src="img/about-main-image-01.jpg" height=600>
		</div>
		<div class="line">
			<hr style="border: solid 1px black;">
		</div>
		<div class="about-main">
			<section id="section1" class="section" data-orderno="4">
			
				<div data-columno="1" id="section1_column1" class="about-main-title">
					<div class="context-wrapper">
						<h1>
							<br> "차의 세계로 초대합니다." <br>
							
						</h1>
					</div>
				</div>
			
				<div data-columno="2" id="section1_column2" class="about-main-context">
					<div class="context-wrapper">
						<p>에디션덴마크는 덴마크인 요핸 풀스비야(Johan S. Fuglsbjerg)와 이지은 크리에이티브 디렉터가 설립한
							브랜드로 단순함, 최상의 품질, 지속가능성의 세 가지 가치를 지닌 덴마크 제품을 한국에 소개합니다.</p>
						<p>덴마크 왕실차 브랜드인 A.C. 퍼치스 티핸들의 프리미엄 티와, 덴마크 양봉장인이 만든 대니시비키퍼스의 스페셜티
							허니, 덴마크 로스터리 커피콜렉티브의 스페셜티 커피, 사람과 환경의 지속가능성을 생각하는 덴마크 가구 브랜드 스카게락과
							프라마 테이블웨어, 인테리어 디자인 매거진 아크저널을 선보이고 있습니다. 좋은 제품과 더불어, 식탁에서 소중한 사람들과
							식사를 하며 여유를 즐기는 덴마크의 일상의 가치를 전하고자 합니다.</p>
						
						<p>Edition Denmark is a brand founded by the Dane Johan S.
							Fuglsbjerg and creative director Ji Eun Lee, introducing Danish
							products to South Korea with three values in mind: Simplicity,
							Quality and Sustainability.</p>
						
						<p>Edition Denmark presents premium tea by the Danish royal tea
							brand A.C. Perch’s Thehandel, creamy honey by Danish Beekeepers,
							light roasted specialty coffee by Coffee Collective, Danish design
							icons and tableware by Skagerak, and interior design magazines by Ark
							Journal.</p>
						
						<p>In addition to excellent products, Edition Denmark is striving
							to let you experience Danish culture by enjoying excellent products
							around the table with your loved ones.</p>
					</div>
				</div>
			</section>
		</div>

		<div class="line">
			<hr style="border: solid 1px black;">
		</div>
		
		<!-- 가운데 정렬, div나 클래스 또는 섹션나누기? -->
		<div class="about-contact">
		
			<section id="section2" class="section" data-orderno="4">
				
				<div data-columno="1" id="section2_column1" class="about-main-title">
					<div class="context-wrapper">
						<h2>Contact us</h2><br> <!-- bold처리  -->
					</div>
				</div>
					
				<!-- 사이 공백줄  -->
				<div data-columno="2" id="section2_column2" class="about-main-context">
					<div class="context-wrapper">
						<h3>E-mail</h3>
						<p class="contact-text">hello@charcha.kr</p>
						<!-- 사이 공백줄  -->
						<h3>Instagram</h3>
						<p class="contact-text">@charcha<p>
						<!-- 사이 공백줄  -->
						<h3>KaKaoPlus</h3>
						<p class="contact-text">@차차</p>
					</div>
				</div>
			</section>
		</div>
		
	</section>

</body>
</html>