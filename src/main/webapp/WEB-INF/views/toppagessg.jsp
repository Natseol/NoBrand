<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href="resources/css/toppagessg.css" rel="stylesheet">
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
	<div id="root">
		<div class="top-banner">
			<div class="service-box" style="z-index: 998;cursor: pointer;">
				<div class="user-service top-common"><div class="font-logo" id="login-box">
				로그인 ·
				</div></div>
				<div class="user-service top-common"><div class="font-logo" id="regit-box">회원가입 ·</div></div>
				<div class="user-service top-common"><div class="font-logo" id="center">고객센터 |</div></div>
				<form action="/nobrand/logout" method="post">
				<button class="user-heart top-img-margin" id="logout" name="logout"><img class="top-img-size" alt="관심있는 상품" src="resources/images/heart.svg"></button>
				</form>
				<!--  <div class="user-heart top-img-margin"><img class="top-img-size" alt="관심있는 상품" src="resources/images/heart.svg"></div>-->
				<div class="user-user top-img-margin"><img class="top-img-size" alt="유저정보" src="resources/images/user.svg"></div>
				<div class="user-delivery top-img-margin"><img class="top-img-size" alt="배송정보" src="resources/images/delivery.svg"></div>
				<div class="user-cart top-img-margin">
					<a href="/nobrand/cart"><img alt="장바구니" src="resources/images/cart.svg"></a>
				</div>
			</div>
			<div class="main-box">
				<div class="logo-box">
					<div class="ssg-logo">
						<img alt="" src="resources/images/ssg_logo.svg">
						<div class="logo-script">
							<div class="font-weight font-logo">믿고 사는 즐거움</div>
						</div>
					</div>
					<div class="logo-menu">
						<img class="menu-img" alt="ssg_logo" src="resources/images/title_menu.svg">
					</div>
				</div>
				<div class="search-box-area">
					<div class="search-box">
						<div id="ssg-query">
							<div>
								<input class="search-area" type="text" onfocus="this.style.backgraound='none'" autocomplete="off">
							</div>
						</div>
						
						
					</div>
				</div>
				<div class="emall-logo">
					<div class="emart-logo">
						<img class="emart-logo-size" alt="" src="resources/images/oncolored_emart_logo.png">
					</div>
					<div class="text-color font-and">·</div>
					<div class="ssg-mall-logo">
						<div class="font-mall">신세계몰</div>
					</div>
					<div class="text-color font-and">·</div>
					<div class="ssg-mall-logo">
						<div class="font-mall">신세계백화점</div>
					</div>
				</div>
			</div>
		</div>
		<div class="line"></div>


	</div>
	<script type="text/javascript" src="resources/scripts/searchbox-border.js"></script>
	<script type="text/javascript" src="resources/scripts/popup.js"></script>
	<script>
		let name= <%=(String)session.getAttribute("ID")%>;
		console.log(name);
		const regitboxElem=document.getElementById('regit-box');
		const loginboxElem=document.getElementById('login-box');
		if(name==null){
			loginboxElem.innerHTML="로그인 ·"
		}
		else if(name!=null){
			loginboxElem.innerHTML=name+"님 반갑습니다";
			loginboxElem.id="info-box";
		}
		if(regit-box==null){
			regitboxElem.innerHTML="회원가입 ·"
		}
		else if(name!=null){
			regitboxElem.innerHTML="로그아웃";
			regitboxElem.id="logout";
		}
	</script>
</body>
</html>