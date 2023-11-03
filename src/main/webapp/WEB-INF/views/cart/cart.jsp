<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제목</title>
<link href="resources/css/cart.css" rel="stylesheet" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<%-- 임시로 설정해둔 값이니 푸후 스크립트로 교체하기 --%>
<script type="text/javascript">
	var goodscount = 0;
	var cash = 0;
	var discount = 0;
	var delivery = 0;
	var total = 0;
</script>
<body>
	<jsp:include page='../toppagessg.jsp' />
	<!-- 여기부터 시작 -->
	<div id="root">
		<div class="main">
			<div class="main-box-cart">
				<div class="cart-tip">
					<div class="cart-tip-box">
						<div class="cart-string">
							<div class="cart-name font-size-4">장바구니</div>
							<div class="tip-btn-box">
								<button class="tip-btn button">이용TIP</button>
							</div>
						</div>
					</div>
				</div>
				<div class="container-box">
					<div class="order">
						<div id="scroll-responsive-buy-menu">
							<div class="menu-box">
								<div class="login-box">
									<div>
										<div class="login-script font-size-6">
											<img class="login-location" alt="" src="resources/images/loginlocation.svg">로그인을 해보세요.
										</div>
										<div class="font-size-6">로그인을 하시면 지금 보고있는 상품을 나중에도 확인하실 수 있습니다.</div>
									</div>
								<div class="login-btn font-size-7 login-script"><button class="login-right">로그인하기</button></div>
								</div>
								<div class="genelization">
									<div class="genelization-box">
										<div class="all-goods">
											<div class="goods-script">
												<div class="bag">
													<img class="bag-img" alt="" src="resources/images/bag.png">
												</div>
												<div class="font-size-6">전체상품</div>
												<div class="text-gray font-size-6"> : </div>
												<div id="goodscount" class="font-size-6">
													<script type="text/javascript">
														document.getElementById("goodscount").innerHTML = goodscount;
													</script>개
												</div>
												
											</div>
										</div>
										<div class="total">
											<div class="cash">
												<div class="cash-box">
													<div class="list-script">
														<div class="font-size-6">주문금액</div>
													</div>
													<div class="won"><div id="cash" class="side font-size-6">
														<script type="text/javascript">
															document.getElementById("cash").innerHTML = cash;
														</script>원
													</div>
												</div>
											</div>
										</div>
										<div class="discount">
											<div class="discount-box">
												<div class="list-script"><div class="font-size-6">상품할인</div></div>
												<div class="won">
													<div id="discount" class="side font-size-6">
													<script type="text/javascript">
															document.getElementById("discount").innerHTML = "-"+discount;
													</script>원
												</div>
											</div>
										</div>
									</div>
									<div class="delivery">
										<div class="delivery-box">
											<div class="list-script"><div class="font-size-6">배송비</div></div>
											<div class="won">
												<div id="delivery" class="side font-size-6">
													<script type="text/javascript">
															document.getElementById("delivery").innerHTML = "+"+delivery;
													</script>원
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="line"></div>
								<div class="order-box">
									<div class="total-cash">
										<div class="total-script">
											<div class="total-script-box">
											 	<div class="font-size-6 font-if-buy">결제예정금액</div>
												 	<div class="won">
												 		<div id="total" class="side font-buy font-if-buy">
												 			<div class="total-size">
													 			<script type="text/javascript">
																	document.getElementById("total").innerHTML = total;
																</script>
															</div>원
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="order-btn-box">
											<div class="order-btn-box">
												<button class="order-btn">
													<div class="font-size-5">주문하기</div>
												</button>
											</div>
											<div class="present-btn-box">
												<button class="present-btn">
													<div class="font-size-6">선물하기</div>
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>	
				</div>
				</div>
				<!-- 여기서 목록에 따라 include -->
				<jsp:include page='goodsexist.jsp' />
				
				<div class="footer">

				</div>
			</div>
		</div>
	</div>
	<!-- 여기부터 끝 -->
	<jsp:include page='../bottompage.jsp' />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>