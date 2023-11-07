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
		<div class="category-delivery-box">
			<div class="category-main">
				<div class="list best block">
					<a class="category-main-anchor" href="/nobrand/sub"><div>베스트</div></a>
				</div>
				<div class="list sale block">
					<a class="category-main-anchor" href="/nobrand/sub?category=세일중"><div>세일중</div></a>
				</div>
				<div class="list fresh block">
					<a class="category-main-anchor" href="/nobrand/sub?category=신선식품"><div>신선식품</div></a>
				</div>
				<div class="list made block">
					<a class="category-main-anchor" href="/nobrand/sub?category=가공식품"><div>가공식품</div></a>
				</div>
				<div class="list house-goods block">
					<a class="category-main-anchor" href="/nobrand/sub?category=생활용품"><div>생활용품</div></a>
				</div>
				<div class="list interior block">
					<a class="category-main-anchor" href="/nobrand/sub?category=가전인테리어"><div>가전/인테리어</div></a>
				</div>
				<div class="list fashion block">
					<a class="category-main-anchor" href="/nobrand/sub?category=패션잡화"><div>패션잡화</div></a>
				</div>
				<div class="list sports block">
					<a class="category-main-anchor" href="/nobrand/sub?category=스포츠캠핑용품"><div>스포츠/캠핑용품</div></a>
				</div>
			</div>
		</div>
	</div>