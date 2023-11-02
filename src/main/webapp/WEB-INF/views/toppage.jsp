<%@ page language="java" contentType="text/html; charset=UTF-8"
	errorPage="./exception.jsp" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

	<div id="root">
		<div class="top">
			<div class="top-main">
				<div class="title">
					<div class="block title-main">
						<img class="title-img" alt="ssg_logo"
							src="resources/img/ssg_logo.svg"> <img class="title_menu"
							alt="ssg_logo" src="resources/images/title_menu.svg">
					</div>
					<div class="block title-searchbox">
						<input type="text" placeholder="" />
						<div id="recommend" class="invisible">
							<div class="item">
								<span class="text"> </span>
							</div>
						</div>
					</div>
					<div class="event-u block">이미지+유니버스 클럽 가입하고, 최대 11만원 해택 받기</div>
					<div class="login block">로그인</div>
					<div class="regist block">회원가입</div>
					<div class="service-center block">고객센터 |</div>
					<div class="etc block">
						<img alt="관심있는 상품" src="resources/img/menu/heart.svg"> 
						<img alt="유저정보" src="resources/images/user.svg"> 
						<img alt="배송정보" src="resources/images/delivery.svg"> 
						<img alt="장바구니" src="resources/images/cart.svg">
						<img alt="최근 본 상품" src="resources/images/recently.svg">
					</div>
				</div>
			</div>
			<div class="event">
				<div class="banner">
					<div class="banner-box">
						<div class="block emart">
							<img alt="emart" src="resources/images/em_logo.png">
						</div>
						<div class="block emart-searchbox">
							<input class="emart-searchbox" type="text" placeholder="" />
							<div id="recommend" class="invisible">
								<div class="item">
									<span class="text"></span>
								</div>
							</div>
						</div>
						<div class="block emart-delivery">
							<img alt="emart" src="resources/images/location.svg"> 로그인 후
							배송시간을 확인해보세요 <img class="img_down" alt="down"
								src="resources/images/ico_arrow.png">
						</div>
					</div>
				</div>
				<div class="category-delivery">
					<div class="category-box">
						<div class="delivery all-categori">
							<div>전체 카테고리</div>
						</div>
						<div class="delivery">
							<img class="delivery-img" alt="ssg_delivery"
								src="resources/images/ssg_delivery.svg">
							<div class="block">쓱배송</div>
						</div>
						<div class="delivery">
							<img class="delivery-img" alt="ssg_delivery"
								src="resources/images/morning.svg">
							<div class="block">새벽배송</div>
						</div>
						<div class="delivery">
							<img class="delivery-img" alt="ssg_delivery"
								src="resources/images/ssg_oneday.svg">
							<div class="block">쓱1DAY배송</div>
						</div>
						<div class="delivery">
							<img class="delivery-img" alt="ssg_delivery"
								src="resources/images/trade.svg">
							<div class="block">트레이더스</div>
						</div>
						<div class="delivery">
							<div>자주구매</div>
						</div>
						<div class="delivery">
							<div>세일중</div>
						</div>
						<div class="delivery">
							<div>오반장</div>
						</div>
						<div class="delivery">
							<div>베스트</div>
						</div>
						<div class="delivery">
							<div>신상품</div>
						</div>
						<div class="delivery">
							<div>프리미엄식품관</div>
						</div>
						<div class="delivery">
							<div>이벤트</div>
						</div>
						<div class="delivery">
							<div>공식스토어</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
