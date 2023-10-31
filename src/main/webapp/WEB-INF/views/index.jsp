<%@ page language="java" contentType="text/html; charset=UTF-8"
	errorPage="./exception.jsp" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="resources/css/main.css" />" rel="stylesheet">
 <meta charset="UTF-8">
<title>top</title>
</head>
<body>
	<div id="root">
		<div class="top">
			<div class="top-main">
				<div class="title">
					<div class="block title-main">
						<img alt="ssg_logo" src="resources/img/ssg_logo.svg">
					</div>
					<div class="block title-searchbox">
						<input type="text" placeholder="" /> 
						<div id="recommend" class="invisible">
							<div class="item"><span class="text"></span></div>
						</div>
					</div>
					<div class="event-u block">이미지+유니버스 클럽 가입하고, 최대 11만원 해택 받기</div>
					<div class="login block">로그인</div>
					<div class="regist block">회원가입</div>
					<div class="service-center block">고객센터 |</div>
					<div class="etc block">
							<img alt="관심있는 상품" src="resources/img/menu/heart.svg">
							<img alt="유저정보" src="resources/img/menu/user.svg">
							<img alt="배송정보" src="resources/img/menu/delivery.svg">
							<img alt="장바구니" src="resources/img/menu/cart.svg">
							<img alt="최근 본 상품" src="resources/img/menu/recently.svg">
						</div>
				</div>
			</div>
			<div class="event">
				<div class="banner">
					<div class="banner-box">
						<div class="block emart">
							<img alt="emart" src="resources/img/em_logo.png">
						</div>
						<div class="block emart-searchbox">SearchBox</div>
						<div class="block emart-delivery">
							로그인 후 배송시간을 확인해보세요
							<img class="img_down" alt="관심있는 상품" src="resources/img/menu/heart.svg">
						</div>
					</div>
				</div>
				<div class="category-delivery">
					<div class="category-box">
						<div class="delivery all-categori">
							<h6>전체 카테고리</h6>
						</div>
						<div class="delivery">
							<img alt="ssg_delivery" src="resources/img/delivery/ssg_delivery.svg">
							쓱배송
						</div>
						<div class="delivery">
							<img alt="ssg_delivery" src="resources/img/delivery/morning.svg">
							새벽배송
						</div>
						<div class="delivery">
						<img alt="ssg_delivery" src="resources/img/delivery/ssg_oneday.svg">
							쓱1DAY배송
						</div>
						<div class="delivery">
						<img alt="ssg_delivery" src="resources/img/delivery/trade.svg">
							트레이더스
						</div>
						<div class="delivery">
							<h6>자주구매</h6>
						</div>
						<div class="delivery">
							<h6>세일중</h6>
						</div>
						<div class="delivery">
							<h6>오반장</h6>
						</div>
						<div class="delivery">
							<h6>베스트</h6>
						</div>
						<div class="delivery">
							<h6>신상품</h6>
						</div>
						<div class="delivery">
							<h6>프리미엄식품관</h6>
						</div>
						<div class="delivery">
							<h6>이벤트</h6>
						</div>
						<div class="store block">
							<h6>공식스토어</h6>
						</div>
					</div>
				</div>

				<div class="midle">
					<div class="block title-nobrand">
						<img alt="nobrand_logo" src="resources/img/nobrand_logo.png">
					</div>
					<div class="block search">
						<h3>Search</h3>
					</div>
				</div>
				<div class="category-main">
					<div class="list best block">
						<h6>베스트</h6>
					</div>
					<div class="list sale block">
						<h6>세일중</h6>
					</div>
					<div class="list fresh block">
						<h6>신선식품</h6>
					</div>
					<div class="list made block">
						<h6>가공식품</h6>
					</div>
					<div class="list house-goods block">
						<h6>생활용품</h6>
					</div>
					<div class="list interior block">
						<h6>가전/인테리어</h6>
					</div>
					<div class="list fashion block">
						<h6>페션잡화</h6>
					</div>
					<div class="list sports block">
						<h6>스포츠/캠핑용품</h6>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
