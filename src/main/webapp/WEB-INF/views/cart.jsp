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
	<jsp:include page='toppagessg.jsp' />
	<!-- 여기부터 시작 -->
	<div id="root">
		<div class="nullgoods-script">
			<div class="cart-tip">
				<div class="cart-tip-box">
					<div class="cart-string"><h4>장바구니</h4></div>
					<div class="tip"></div>
				</div>
			</div>
			
		<div class="card-event">
			<div class="card-event-box">
				<div class="card-first">
					카드 이벤트 라벨 이미지 1
				</div>
				<div class="card-seconnd">
					카드 이벤트 라벨 이미지 2
				</div>
			</div>
		</div>
		<div class="info">
			<div class="info-script-box">
				<div class="info-script">
					<h6>장바구니 상품 안내</h6>
					<ul>
						<li><h6>장바구니에 담은 상품은 최대 150개까지 보관됩니다.</h6>
						<li><h6>상품 우측의 '계속 담아두기'를 설정해 두시면 시간이 지나고 상품이 삭제되지 않습니다.</h6>
					</ul>
				</div>
			</div>
		</div>
		<div class="order">
			<div id="scroll-responsive-buy-menu">
				<div class="menu-box">
					<div class="login-box">
						<div class="login-script"><h6>로그인을 해보세요.</h6><br><h6>로그인을 하시면 지금 보고있는 상품을 나중에도 확인하실 수 있습니다.</h6></div>
						<div class="login-btn"><button>로그인하기</button></div>
					</div>
					<div class="genelization">
						<div class="genelization-box">
							<div class="all-goods">
								<div class="bag-img"></div>
								<div class="goods-script"><h6>전체상품</h6><h6 class="text-gray">:</h6><h6>${count }개</h6></div>
							</div>
							<div class="total">
								<div class="cash">
									<div class="cash-box">
										<div class="list-script"><h6>주문금액</h6></div>
										<div class="won">${cash }<h6>원</h6></div>
									</div>
								</div>
								<div class="discount">
									<div class="discount-box">
										<div class="list-script"><h6>상품할인</h6></div>
										<div class="won"><h6>-</h6>${discount }<h6>원</h6></div>
									</div>
								</div>
								<div class="delivery">
									<div class="delivery-box">
										<div class="list-script"><h6>배송비</h6></div>
										<div class="won"><h6>+</h6>${delivery }<h6>원</h6></div>
									</div>
								</div>
							</div>
							<div class="line"></div>
							<div class="order-box">
								<div class="total-cash">
									<div class="total-script">
										<div class="total-script-box">
										 	<h6>결제예정금액</h6>
										</div>
									</div>
								</div>
								<div class="order-btn-box">
									<div class="order-btn">
										<button><h5>주문하기</h5></button>
									</div>
									<div class="present-btn">
										<button><h6>주문하기</h6></button></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 여기부터 끝 -->
	<jsp:include page='bottompage.jsp' />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>