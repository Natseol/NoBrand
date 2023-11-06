<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/sub.css" rel="stylesheet" type="text/css">
<link href="resources/css/index.css" rel="stylesheet" type="text/css">
<link href="resources/css/main.css" rel="stylesheet" type="text/css">
<title>제목</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<body>
	<jsp:include page='/WEB-INF/views/toppagessg.jsp' />
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
					<form action="sub" method="get">
					<div class="category">
						<ul class="category-item">
							<li class="menu-item">베스트</button></li>
							<li class="menu-item">세일중</li>
							<li class="menu-item">신선식품
								<ul class="dropdown">
									<li><button name="category" value="과일채소양곡">과일/채소/양곡</button></li>
									<li>축산/수산/건식품</li>
								</ul>
							</li>
							<li class="menu-item">가공식품
								<ul class="dropdown">
									<li>과자/초콜릿</li>
									<li>라면/통조림</li>
									<li>조미료/장류</li>
									<li>생수/음료</li>
									<li>커피/차</li>
									<li>냉동냉장/HMR</li>
									<li>유제품</li>
								</ul>
							</li>
							<li class="menu-item">생활용품
								<ul class="dropdown">
									<li>화장지/위생용품</li>
									<li>헤어/바디/구강용품</li>
									<li>화장품</li>
									<li>세제</li>
									<li>주방용품/일회용품</li>
									<li>청소/욕실용품</li>
								</ul>
							</li>
							<li class="menu-item"><div>가전/인테리어</div>
								<ul class="dropdown">
									<li>생활/디지털가전</li>
									<li>문구/완구</li>
									<li>가구/홈데코</li>
									<li>조명/공구</li>
									<li>침구/수예</li>
									<li>자동차용품</li>
									<li>애완</li>
								</ul>
							</li>
							<li class="menu-item">패션잡화
								<ul class="dropdown">
									<li>잡화</li>									
								</ul>
							</li>
							<li class="menu-item">스포츠/캠핑용품
								<ul class="dropdown">
									<li>스포츠/캠핑용품</li>									
								</ul>
							</li>
						</ul>
					</div>
					</form>
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
		let goodslist = ${requestScope.list};
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