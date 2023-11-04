<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/main.css" rel="stylesheet" type="text/css">
<title>제목</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<body>
	<jsp:include page='/WEB-INF/views/toppage.jsp' />
	<!-- 여기부터 시작 -->
		<div class="goods-root">
			<div class="main">
				<div class="goods-main">
					<div class="goods-category">
						<div class="font-top">HOME</div>
						<div class="center-slash">/</div>
						<div class="font-top">
							<div>우유/유제폼</div>
							<div class="arrow-down"></div>
							</div>
						</div>
						<div class="center-slash">/</div>
						<div class="font-top">
							<div>우유</div>
							<div class="arrow-down"></div>
						</div>
						<div class="center-slash">/</div>
						<div class="font-top">
							<div>휜우유</div>
							<div class="arrow-down"></div>
						</div>
					</div>
					<div class="left-img">
						<div class="img-padding"></div>
						<div class="nobrand-home"></div>
					</div>
					<div class="right-info">
						<div class="emart">이마트</div>
						<div class="brand">
							<div class="font-nobrand"></div>
							<div class="arrow-right"></div>
							<div class="public-store"></div>
						</div>
						<div class="goods-name"></div>
						<div class="goods-star">
							<div class="star-img"></div>
							<div class="star-score"></div>
							<div class="star-participants"></div>
						</div>
						<div class="made-in">
							<div class="text-made-in">원산지:</div>
							<div class="text-info"></div>
						</div>
					</div>
				</div>
				<div class="goods-sub">
					<div class="container-box">
						<div clss="goods-img"></div>
						<div class="goods-info"></div>
						<div class="review"></div>
						<div class="exchange"></div>
					</div>
					<div class="float-menu"></div>
				</div>
			</div>
		</div>
	<!-- 여기부터 끝 -->
	<jsp:include page='/WEB-INF/views/bottompage.jsp' />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>