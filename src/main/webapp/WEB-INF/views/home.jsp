<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/main.css" rel="stylesheet" type="text/css">
<title>top</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<body>
	<jsp:include page='toppage.jsp' />
	<!-- 여기부터 시작 -->
	<div class="midle background-color">
		<div class="nobrand-logo-block">
			<img class="title-nobrand" alt="nobrand_logo"
				src="resources/img/nobrand_logo.png">
			<div class="block nobrand-search-box">
				<input class="nobrand-searchbox" type="text"
					placeholder="노브랜드 상품 검색" />
				<div id="recommend" class="invisible">
					<div class="item">
						<span class="text"></span>
					</div>
				</div>
				<div class="icon-box">
					<img class="search-icon" alt="icon"
						src="resources/img/search-icon.svg">
				</div>
				<div class="tools">
					<img class="search-tool" alt="관심있는 상품"
						src="resources/img/search_tool1.svg"> <span
						class="material-symbols-outlined"> share_windows </span>
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
	<!-- 여기부터 끝 -->
	<jsp:include page='bottompage.jsp' />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>