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
<%-- 임시로 설정해둔 값이니 푸후 스크립트로 교체하기 --%>
<script type="text/javascript">
	var count = 0;
	var cash = 0;
	var discount = 0;
	var delivery = 0;
	var total = 0;
</script>

<body>
	<div id="root">
		<div class="nullgoods-script">
			<div class="cart-img">
				<div class="cart-img-box">
					<div class="cartimg"></div>
					<div class="null-goods-script"><h5>장바구니 담긴 상품이 없습니다.</h5></div>
					<div class="login"><button>로그인</button></div>
				</div>
			</div>
		</div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>