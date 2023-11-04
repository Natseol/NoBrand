<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/sub.css" rel="stylesheet" type="text/css">
<link href="resources/css/main.css" rel="stylesheet" type="text/css">
<link href="resources/css/index.css" rel="stylesheet" type="text/css">
<title>제목</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<body>
	<jsp:include page='/WEB-INF/views/toppage.jsp' />
	<jsp:include page='/WEB-INF/views/toppage-nobrand.jsp' />
	<!-- 여기부터 시작 -->
	<div class="sub-content">
		<!--제목-->
		<div class="sub-title">
			<div class="sub-title-text">베스트</div>
			<div class="sub-title-info">
				<div class="sub-title-number">
					<span id="sub-totalgoods">숫자</span> <span class="sub-title-goods">개의 상품이 있습니다</span>
				</div>
			</div>
		</div>
		<div class="sub-title-line"></div>

		<!--내용-->
		<div class="sub-content-items">
			<!--카테고리-->
			<div>
				<div>
					<div class="category-title">카테고리</div>
					<div class="category">
						<ul class="category-item">
							<li class="menu-item">메뉴 1
								<ul class="dropdown">
									<li>서브메뉴 1-1</li>
									<li>서브메뉴 1-2</li>
								</ul>
							</li>
							<li class="menu-item">메뉴 2
								<ul class="dropdown">
									<li>서브메뉴 2-1</li>
									<li>서브메뉴 2-2</li>
								</ul>
							</li>
							<li class="menu-item">메뉴 3</li>
						</ul>
					</div>
				</div>
			</div>

			<!--상품-->
			<div>

				<div class="sub-list-container">

					<div class="sublist4">
						<div class="card-img-box">
							<a><img src="resources/images/1000014798997_i1_290.jpg"
								class="card-img-top" alt="썸네일"></a>
							<div class="card-img-bag rounded-3">
								<span class="material-symbols-outlined card-img-icon">shopping_bag</span>
							</div>
						</div>
						<div class="card-body">
							<p class="card-text">
							<div class="card-text-trans">
								<img src="resources/images/em.svg"><img
									src="resources/images/ico_crossarrow.svg" style="width: 1em">새벽배송
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

					<div class="sublist4">
						<div class="card-img-box">
							<a><img src="resources/images/1000014798997_i1_290.jpg"
								class="card-img-top" alt="썸네일"></a>
							<div class="card-img-bag rounded-3">
								<span class="material-symbols-outlined card-img-icon">shopping_bag</span>
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
					<div class="sublist4">
						<div class="card-img-box">
							<a><img src="resources/images/1000014798997_i1_290.jpg"
								class="card-img-top" alt="썸네일"></a>
							<div class="card-img-bag rounded-3">
								<span class="material-symbols-outlined card-img-icon">shopping_bag</span>
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
					<div class="sublist4">
						<div class="card-img-box">
							<a><img src="resources/images/1000014798997_i1_290.jpg"
								class="card-img-top" alt="썸네일"></a>
							<div class="card-img-bag rounded-3">
								<span class="material-symbols-outlined card-img-icon">shopping_bag</span>
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
				</div>

			</div>
		</div>
	</div>
	<!-- 여기부터 끝 -->
	<jsp:include page='/WEB-INF/views/bottompage.jsp' />
	<script>
		let goodslist = ${applicationScope.list}.list;
		
		console.log(goodslist);
		let totalcount = document.getElementById("sub-totalgoods");
		totalcount.textContent = goodslist.length;
	</script>
	<script src="resources/scripts/sub.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
</html>