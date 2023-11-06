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
	<jsp:include page='toppagessg.jsp' />
	<jsp:include page='toppage-nobrand.jsp' />
	<!-- 여기부터 시작 -->
	
	<div id="carouselExampleInterval" class="carousel slide carousel-main"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="3000">
				<div class="carousel-slide">
					<div><img class="carousel-img" src="resources/images/2017080914294880459338041043_788.jpg"></div>
					<div><img class="carousel-img" src="resources/images/2017081013263780463968040496_758.jpg"></div>					
					<div><img class="carousel-img" src="resources/images/2017082217372409091120907212_436.jpg"></div>
				</div>
			</div>
			<div class="carousel-item" data-bs-interval="3000">
				<div class="carousel-slide">
					<div><img class="carousel-img" src="resources/images/2017081013263780463968040496_758.jpg"></div>					
					<div><img class="carousel-img" src="resources/images/2017082217372409091120907212_436.jpg"></div>
					<div><img class="carousel-img" src="resources/images/2017080914294880459338041043_788.jpg"></div>
				</div>
			</div>
			<div class="carousel-item" data-bs-interval="3000">
				<div class="carousel-slide">
					<div><img class="carousel-img" src="resources/images/2017081013263780463968040496_758.jpg"></div>					
					<div><img class="carousel-img" src="resources/images/2017080914294880459338041043_788.jpg"></div>
					<div><img class="carousel-img" src="resources/images/2017082217372409091120907212_436.jpg"></div>
				</div>
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

	<div class="index-content">
		<hr>
		<div class="index-limited">
			<div>
				<img src="resources/images/2022021713341653781759442275_847.png">
			</div>
			<div class="index-limited-items" id="cardContainer">

				<!-- <div class="itemlist4" style="width: 18rem;">
					<div class="card-img-box">
						<a><img src="resources/images/1000517346294_i1_290.jpg"
							class="card-img-top" alt="썸네일"></a>
						<div class="card-img-bag rounded-3">
							<span class="card-img-icon material-symbols-outlined">shopping_bag</span>
						</div>
					</div>
					<div class="card-body">
						<p class="card-text">
						<div class="card-text-trans">
							<img src="resources/images/em.svg"><img
								src="resources/images/ico_crossarrow.svg" style="width: 1rem">새벽배송
							가능
						</div>
						<div>
							<span class="text-bold">노브랜드</span>상품옵션
						</div>
						<div class="card-text-price">
							가격<span class="card-text-won">원</span>
						</div>
						<div class="card-text-score">★ 별점</div>
						</p>
					</div>
				</div> -->

				<!-- <div class="itemlist4" style="width: 18rem;">
					<div class="card-img-box">
						<a><img src="resources/images/1000517346294_i1_290.jpg"
							class="card-img-top" alt="썸네일"></a>
						<div class="card-img-bag rounded-3">
							<span class="material-symbols-outlined">shopping_bag</span>
						</div>
					</div>
					<div class="card-body">
						<p class="card-text">
						<div class="card-text-trans">
							<img src="resources/images/em.svg"><img
								src="resources/images/ico_crossarrow.svg" style="width: 1rem">새벽배송
							가능
						</div>
						<div>
							<span class="text-bold">노브랜드</span>상품옵션
						</div>
						<div class="card-text-price">
							가격<span class="card-text-won">원</span>
						</div>
						<div class="card-text-score">★ 별점</div>
						</p>
					</div>
				</div>
				<div class="itemlist4" style="width: 18rem;">
					<div class="card-img-box">
						<a><img src="resources/images/1000517346294_i1_290.jpg"
							class="card-img-top" alt="썸네일"></a>
						<div class="card-img-bag rounded-3">
							<span class="material-symbols-outlined">shopping_bag</span>
						</div>
					</div>
					<div class="card-body">
						<p class="card-text">
						<div class="card-text-trans">
							<img src="resources/images/em.svg"><img
								src="resources/images/ico_crossarrow.svg" style="width: 1rem">새벽배송
							가능
						</div>
						<div>
							<span class="text-bold">노브랜드</span>상품옵션
						</div>
						<div class="card-text-price">
							가격<span class="card-text-won">원</span>
						</div>
						<div class="card-text-score">★ 별점</div>
						</p>
					</div>
				</div>
				<div class="itemlist4" style="width: 18rem;">
					<div class="card-img-box">
						<a><img src="resources/images/1000517346294_i1_290.jpg"
							class="card-img-top" alt="썸네일"></a>
						<div class="card-img-bag rounded-3">
							<span class="material-symbols-outlined">shopping_bag</span>
						</div>
					</div>
					<div class="card-body">
						<p class="card-text">
						<div class="card-text-trans">
							<img src="resources/images/em.svg"><img
								src="resources/images/ico_crossarrow.svg" style="width: 1rem">새벽배송
							가능
						</div>
						<div>
							<span class="text-bold">노브랜드</span>상품옵션
						</div>
						<div class="card-text-price">
							가격<span class="card-text-won">원</span>
						</div>
						<div class="card-text-score">★ 별점</div>
						</p>
					</div>
				</div> -->

			</div>
			<div class="more-items">
				<button name="moreItems" class="button-more-items">
					<div class="more-items-text">
						더보기<img src="resources/images/ico_moreitem.svg">
					</div>
				</button>
			</div>
		</div>
		<hr>
		<div class="index-hotittem">
			<div>
				<img src="resources/images/2017072512543580447078048707_129.jpg">
			</div>
			<div class="itemlist2">
				<div class="itemlist-item" style="width: 38rem;">
					<div>
						<a><img
							src="resources/images/2017070610423880420878047087_288.jpg"
							class="card-img-top" alt="썸네일"></a>
					</div>
					<div class="itemlist-body">
						<p class="card-text">
						<div class="text-bold">제목</div>
						내용
						</p>
					</div>
				</div>

				<div class="itemlist" style="width: 38rem;">
					<div>
						<a><img
							src="resources/images/2017070610423880420878047087_288.jpg"
							class="card-img-top" alt="썸네일"></a>
					</div>
					<div class="itemlist-body">
						<p class="card-text">
						<div class="text-bold">제목</div>
						내용
						</p>
					</div>
				</div>
			</div>
		</div>
		<hr>
	<div class="index-musthave">
		<div>
			<img src="resources/images/2017072515100880483608043460_44.jpg">
		</div>
		<div class="itemlist3">
			<div class="itemlist-item" style="width: 25rem;">
				<div>
					<a><img
						src="resources/images/2017050210160409676670961767_272.jpg"
						class="card-img-top" alt="썸네일"></a>
				</div>
				<div class="itemlist-body">
					<p class="card-text">
					<div class="text-bold">제목</div>
					내용
					</p>
				</div>
			</div>

			<div class="itemlist" style="width: 25rem;">
				<div>
					<a><img
						src="resources/images/2017050210160409676670961767_272.jpg"
						class="card-img-top" alt="썸네일"></a>
				</div>
				<div class="itemlist-body">
					<p class="card-text">
					<div class="text-bold">제목</div>
					내용
					</p>
				</div>
			</div>

			<div class="itemlist" style="width: 25rem;">
				<div>
					<a><img
						src="resources/images/2017050210160409676670961767_272.jpg"
						class="card-img-top" alt="썸네일"></a>
				</div>
				<div class="itemlist-body">
					<p class="card-text">
					<div class="text-bold">제목</div>
					내용
					</p>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	


	<!-- 여기부터 끝 -->
	<jsp:include page='bottompage.jsp' />
<script>
const goodslist = ${requestScope.list};
console.log(goodslist);
</script>	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
<script src="resources/scripts/home.js"></script>
</body>
</html>