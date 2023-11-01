<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/main.css" rel="stylesheet" type="text/css">
<link href="resources/css/index.css" rel="stylesheet" type="text/css">
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
					<div>베스트</div>
				</div>
				<div class="list sale block">
					<div>세일중</div>
				</div>
				<div class="list fresh block">
					<div>신선식품</div>
				</div>
				<div class="list made block">
					<div>가공식품</div>
				</div>
				<div class="list house-goods block">
					<div>생활용품</div>
				</div>
				<div class="list interior block">
					<div>가전/인테리어</div>
				</div>
				<div class="list fashion block">
					<div>페션잡화</div>
				</div>
				<div class="list sports block">
					<div>스포츠/캠핑용품</div>
				</div>
			</div>
		</div>
	</div>
	<div id="carouselExampleInterval" class="carousel slide carousel-main"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="3000">
				<img src="resources/images/2017081013263780463968040496_758.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="3000">
				<img src="resources/images/2017082217372409091120907212_436.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="3000">
				<img src="resources/images/2017080914294880459338041043_788.jpg" class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<hr>
	<div class="index-content">
		<div class="index-limited">
			<div><img src="resources/images/2022021713341653781759442275_847.png"></div>
			<div class="index-limited-items">
				<div class="card" style="width: 18rem;">
					<img src="resources/images/1000515684316_i1_290.jpg" class="card-img-top" alt="썸네일">
					<div class="card-body">
					  <p class="card-text">
						<div><img src="resources/images/em.svg"><img src="resources/images/ico_crossarrow.svg">새벽배송 가능</div>
						<div><span class="text-bold">노브랜드</span>상품옵션</div>
						<div class="text-bold">가격<span>원</span></div>
						<div class="text-gray">별점</div>						
					</p>
					</div>
				  </div>
				  <div class="card" style="width: 18rem;">
					<img src="..." class="card-img-top" alt="썸네일">
					<div class="card-body">
					  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					</div>
				  </div>
				  <div class="card" style="width: 18rem;">
					<img src="..." class="card-img-top" alt="...">
					<div class="card-body">
					  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					</div>
				  </div>
				  <div class="card" style="width: 18rem;">
					<img src="..." class="card-img-top" alt="...">
					<div class="card-body">
					  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					</div>
				  </div>
			</div>
		</div>
		<div class="index-hotittem">
			<div><img src="resources/images/2017072512543580447078048707_129.jpg"></div>
			<div>
				<div>
					요즘 대세 노브랜드 식품
				</div>
				<div>
					노브랜드 디지털/가전
				</div>
			</div>
		</div>
		<div class="index-musthave">
			<div><img src="resources/images/2017072515100880483608043460_44.jpg"></div>
			<div>
				<div>
					노브랜드 떡볶이
				</div>
				<div>
					노브랜드 치즈케익
				</div>
			</div>
		</div>
	</div>
	
	<!-- 여기부터 끝 -->
	<jsp:include page='bottompage.jsp' />
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
</html>