<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/nobrand/resources/css/sub.css" rel="stylesheet" type="text/css">
<link href="/nobrand/resources/css/index.css" rel="stylesheet" type="text/css">
<link href="/nobrand/resources/css/main.css" rel="stylesheet" type="text/css">
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
				<div class="category-container">
					<div class="category-title">카테고리</div>
					<form action="sub" method="get">
					<div class="category">
						<ul class="category-item">
							<a href="sub" class="menu-item-anchor"><li class="menu-item">베스트</li></a>
							<a href="sub?category=세일중" class="menu-item-anchor"><li class="menu-item">세일중</li></a>
							<li class="menu-item">신선식품
								<ul class="dropdown">
									<li><button class="category-button" name="kind" value="과일채소양곡">과일/채소/양곡</button></li>
									<li><button class="category-button" name="kind" value="축산수산건식품">축산/수산/건식품</button></li>
								</ul>
							</li>
							<li class="menu-item">가공식품
								<ul class="dropdown">
									<li><button class="category-button" name="kind" value="과자초콜릿">과자/초콜릿</button></li>
									<li><button class="category-button" name="kind" value="라면통조림">라면/통조림</button></li>
									<li><button class="category-button" name="kind" value="조미료장류">조미료/장류</button></li>
									<li><button class="category-button" name="kind" value="생수음료">생수/음료</button></li>
									<li><button class="category-button" name="kind" value="커피차">커피/차</button></li>
									<li><button class="category-button" name="kind" value="냉동냉장HMR">냉동냉장/HMR</button></li>
									<li><button class="category-button" name="kind" value="유제품">유제품</button></li>
								</ul>
							</li>
							<li class="menu-item">생활용품
								<ul class="dropdown">
									<li><button class="category-button" name="kind" value="화장지위생용품">화장지/위생용품</button></li>
									<li><button class="category-button" name="kind" value="헤어바디구강용품">헤어/바디/구강용품</button></li>
									<li><button class="category-button" name="kind" value="화장품">화장품</button></li>
									<li><button class="category-button" name="kind" value="세제">세제</button></li>
									<li><button class="category-button" name="kind" value="주방용품일회용품">주방용품/일회용품</button></li>
									<li><button class="category-button" name="kind" value="청소욕실용품">청소/욕실용품</button></li>
								</ul>
							</li>
							<li class="menu-item"><div>가전/인테리어</div>
								<ul class="dropdown">
									<li><button class="category-button" name="kind" value="생활디지털가전">생활/디지털가전</button></li>
									<li><button class="category-button" name="kind" value="문구완구">문구/완구</button></li>
									<li><button class="category-button" name="kind" value="가구홈데코">가구/홈데코</button></li>
									<li><button class="category-button" name="kind" value="조명공구">조명/공구</button></li>
									<li><button class="category-button" name="kind" value="침구수예">침구/수예</button></li>
									<li><button class="category-button" name="kind" value="자동차용품">자동차용품</button></li>
									<li><button class="category-button" name="kind" value="애완">애완</button></li>
								</ul>
							</li>
							<li class="menu-item">패션잡화
								<ul class="dropdown">
									<li><button class="category-button" name="kind" value="잡화">잡화</button></li>									
								</ul>
							</li>
							<li class="menu-item">스포츠/캠핑용품
								<ul class="dropdown">
									<li><button class="category-button" name="kind" value="스포츠캠핑용품">스포츠/캠핑용품</button></li>									
								</ul>
							</li>
						</ul>
					</div>
					</form>
				</div>
			</div>

			<!--상품-->
			<div class="sub-list-area">
				<div class="sub-list-container" id="cardContainer"></div>				

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