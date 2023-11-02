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
					<div class="sub-title-number">숫자
						<span class="sub-title-goods">개의 상품이 있습니다</span>
					</div>					
				</div>
			</div>
			<div class="sub-title-line"></div>

			<!--내용-->
			<div>
				<!--카테고리-->
				<div>

					<div>
						<div class="category">
							<ul>
							  <li class="menu-item">메뉴 1
								<ul class="category-sub">
								  <li>서브메뉴 1-1</li>
								  <li>서브메뉴 1-2</li>
								</ul>
							  </li>
							  <li class="menu-item">메뉴 2
								<ul class="category-sub">
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

				</div>
			</div>			
		</div>
	<!-- 여기부터 끝 -->
	<jsp:include page='/WEB-INF/views/bottompage.jsp' />

<script src="resources/scripts/sub.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>