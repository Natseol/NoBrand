<%@ page language="java" contentType="text/html; charset=UTF-8"
	errorPage="./exception.jsp" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/main.css" rel="stylesheet">
 <meta charset="UTF-8">
<title>top</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
</head>
<body>
	<div id="root">
		<div class="top">
			<div class="top-main">
				<div class="title">
					<div class="block title-main">
						<img class="title-img" alt="ssg_logo" src="resources/img/ssg_logo.svg">
						<img class="title_menu" alt="ssg_logo" src="resources/img/title_menu.svg">
					</div>
					<div class="block title-searchbox">
						<input type="text" placeholder="" /> 
						<div id="recommend" class="invisible">
							<div class="item">
								<span class="text">
								</span>
							</div>
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
						<a href="/nobrand/cart"><img alt="장바구니" src="resources/img/menu/cart.svg"></a>
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
						<div class="block emart-searchbox">
							<input class="emart-searchbox" type="text" placeholder="" /> 
							<div id="recommend" class="invisible">
							<div class="item"><span class="text"></span></div>
						</div>
					</div>
					<div class="block emart-delivery">
						<img alt="emart" src="resources/img/location.svg">
							로그인 후 배송시간을 확인해보세요
						<img class="img_down" alt="down" src="resources/img/ico_arrow.png">
					</div>
				</div>
			</div>
				<div class="category-delivery">
					<div class="category-box">
						<div class="delivery all-categori">
							<h5>전체 카테고리</h5>
						</div>
						<div class="delivery">
							<img class="delivery-img" alt="ssg_delivery" src="resources/img/delivery/ssg_delivery.svg">
								<h5 class="block">쓱배송</h5>
							</div>
							<div class="delivery">
								<img class="delivery-img" alt="ssg_delivery" src="resources/img/delivery/morning.svg">
								<h5 class="block">새벽배송</h5>
							</div>
							<div class="delivery">
							<img class="delivery-img" alt="ssg_delivery" src="resources/img/delivery/ssg_oneday.svg">
								<h5 class="block">쓱1DAY배송</h5>
							</div>
							<div class="delivery">
							<img class="delivery-img" alt="ssg_delivery" src="resources/img/delivery/trade.svg">
								<h5 class="block">트레이더스</h5>
							</div>
							<div class="delivery">
								<h5>자주구매</h5>
							</div>
							<div class="delivery">
								<h5>세일중</h5>
							</div>
							<div class="delivery">
								<h5>오반장</h5>
							</div>
							<div class="delivery">
								<h5>베스트</h5>
							</div>
							<div class="delivery">
								<h5>신상품</h5>
							</div>
							<div class="delivery">
								<h5>프리미엄식품관</h5>
							</div>
							<div class="delivery">
								<h5>이벤트</h5>
							</div>
							<div class="delivery">
								<h5>공식스토어</h5>
							</div>
						</div>
					</div>
					<div class="midle">
						<div class="nobrand-logo-block">
							<img class="title-nobrand" alt="nobrand_logo" src="resources/img/nobrand_logo.png">
							<div class="block nobrand-search-box">
								<input class="nobrand-searchbox" type="text" placeholder="노브랜드 상품 검색" /> 
								<div id="recommend" class="invisible">
								<div class="item"><span class="text"></span></div>
							</div>
							<div class="icon-box">
								<img class="search-icon" alt="icon" src="resources/img/search-icon.svg">
							</div>
							<div class="tools">
								<img class="search-tool" alt="관심있는 상품" src="resources/img/search_tool1.svg">
								<span class="material-symbols-outlined">
									share_windows
								</span>
							</div>
						</div>
					</div>
					<div class="category-delivery-box">
						<div class="category-main">
							<div class="list best block">
								<h5>베스트</h5>
							</div>
							<div class="list sale block">
								<h5>세일중</h5>
							</div>
							<div class="list fresh block">
								<h5>신선식품</h5>
							</div>
							<div class="list made block">
								<h5>가공식품</h5>
							</div>
							<div class="list house-goods block">
								<h5>생활용품</h5>
							</div>
							<div class="list interior block">
								<h5>가전/인테리어</h5>
							</div>
							<div class="list fashion block">
								<h5>페션잡화</h5>
							</div>
							<div class="list sports block">
								<h5>스포츠/캠핑용품</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
