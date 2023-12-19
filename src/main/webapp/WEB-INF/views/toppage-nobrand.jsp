<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/nobrand/resources/css/label.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">

    <div class="midle background-color nobrand-title">
		<div class="nobrand-logo-block">
			<div class="title-nobrand-box">
                <a href="/nobrand"><img class="title-nobrand" alt="nobrand_logo"
				src="/nobrand/resources/images/nobrand_logo.png"></a>
            </div>
            <form class="nobrand-search" action="/nobrand/sub" method="GET">
                <div class="nobrand-search-box">
					<input class="nobrand-search-input" type="text"
						placeholder="노브랜드 상품 검색" name="target" />
					<button class="nobrand-serach-button"><img class="search-icon" alt="icon"
						src="/nobrand/resources/images/search-icon.svg"></button>
				</div>						
				<div class="tools">
					<img class="search-tool" alt="관심있는 상품" src="/nobrand/resources/images/search_tool1.svg">
					<span class="material-symbols-outlined share_windows">share_windows </span>
				</div>                
            </form>
		</div>
		<div class="category-delivery-box" id="categoryDeliveryBox">
			<div class="category-main">
				<div class="list best block">
					<a class="category-main-anchor" href="/nobrand/sub"><div>베스트</div></a>
				</div>
				<div class="list sale block">
					<a class="category-main-anchor" href="/nobrand/sub?category=세일중"><div>세일중</div></a>
				</div>
				<div class="list fresh block" id="freshFood">
					<a class="category-main-anchor category-menu-display" href="/nobrand/sub?category=신선식품"><div>신선식품</div></a>

				</div>
				<div class="list made block" id="madeFood">
					<a class="category-main-anchor category-menu-display" href="/nobrand/sub?category=가공식품"><div>가공식품</div></a>
				</div>
				<div class="list house-goods block" id="houseGoods">
					<a class="category-main-anchor category-menu-display" href="/nobrand/sub?category=생활용품"><div>생활용품</div></a>
				</div>
				<div class="list interior block" id="interiorGoods">
					<a class="category-main-anchor category-menu-display" href="/nobrand/sub?category=가전인테리어"><div>가전/인테리어</div></a>
				</div>
				<div class="list fashion block" id="fashionGoods">
					<a class="category-main-anchor category-menu-display" href="/nobrand/sub?category=패션잡화"><div>패션잡화</div></a>
				</div>
				<div class="list sports block" id="sportsGoods">
					<a class="category-main-anchor category-menu-display" href="/nobrand/sub?category=스포츠캠핑용품"><div>스포츠/캠핑용품</div></a>
				</div>
			</div>
			
			<form actioin="/nobrand/sub" method="GET" class="category-submenu">
				<div  class="category-submenu-box">
					<ui class="submenu-dropdown" id="dropdown1">
						<li class="submenu-list"><button class="category-button" name="kind" value="과일채소양곡">과일/채소/양곡</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="축산수산건식품">축산/수산/건식품</button></li>
					</ui>
					<ul class="submenu-dropdown" id="dropdown2">
						<li class="submenu-list"><button class="category-button" name="kind" value="과자초콜릿">과자/초콜릿</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="라면통조림">라면/통조림</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="조미료장류">조미료/장류</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="생수음료">생수/음료</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="커피차">커피/차</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="냉동냉장HMR">냉동냉장/HMR</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="유제품">유제품</button></li>
					</ul>
					<ul class="submenu-dropdown" id="dropdown3">
						<li class="submenu-list"><button class="category-button" name="kind" value="화장지위생용품">화장지/위생용품</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="헤어바디구강용품">헤어/바디/구강용품</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="화장품">화장품</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="세제">세제</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="주방용품일회용품">주방용품/일회용품</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="청소욕실용품">청소/욕실용품</button></li>
					</ul>
					<ul class="submenu-dropdown" id="dropdown4">
						<li class="submenu-list"><button class="category-button" name="kind" value="생활디지털가전">생활/디지털가전</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="문구완구">문구/완구</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="가구홈데코">가구/홈데코</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="조명공구">조명/공구</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="침구수예">침구/수예</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="자동차용품">자동차용품</button></li>
						<li class="submenu-list"><button class="category-button" name="kind" value="애완">애완</button></li>
					</ul>
					<ul class="submenu-dropdown" id="dropdown5">
						<li class="submenu-list"><button class="category-button" name="kind" value="잡화">잡화</button></li>									
					</ul>
					<ul class="submenu-dropdown" id="dropdown6">
						<li class="submenu-list"><button class="category-button" name="kind" value="스포츠캠핑용품">스포츠/캠핑용품</button></li>									
					</ul>
				</div>
			</form>
		</div>
	</div>
<script src="/nobrand/resources/scripts/label.js"></script>