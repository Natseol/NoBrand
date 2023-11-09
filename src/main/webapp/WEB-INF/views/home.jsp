<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/main.css" rel="stylesheet" type="text/css">
<link href="resources/css/index.css" rel="stylesheet" type="text/css">
<title>SSG - 노브랜드</title>
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
	<div class="home-body">
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
	<div id="admin-area"></div>
	<div class="index-content">
		<hr>
		<div class="index-limited">
			<div>
				<img src="resources/images/2022021713341653781759442275_847.png">
			</div>
			<div class="index-limited-items" id="cardContainer">
				<!-- 카드 추가 스크립트 -->
			</div>
			<div class="more-items" id="more-items">
				<button name="moreItems" class="button-more-items" onclick='createCardMore()'>
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
	

	</div>
	<!-- 여기부터 끝 -->
<jsp:include page='bottompage.jsp' />
<script>
const userId = '<%=(String)session.getAttribute("ID")%>';
console.log(userId);
const goodslist = ${requestScope.list};
console.log(goodslist);
</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<script src="/nobrand/resources/scripts/home.js"></script>
</body>
</html>