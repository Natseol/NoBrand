<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/goods.css" rel="stylesheet" type="text/css">
<title>상품</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<script>
	let goodsData = ${requestScope.goodsJson};
</script>
<body>
<% 
	String userId = (String)session.getAttribute("ID"); 
%>
<script type="text/javascript">
	const user = "<%=userId%>";
</script>
	<jsp:include page='/WEB-INF/views/toppagessg.jsp' />
	<jsp:include page='/WEB-INF/views/toppage-nobrand.jsp' />
	<!-- 여기부터 시작 -->
		<div class="goods-root">
			<div class="main">
				<div class="goods-main">
					<div class="goods-category">
						<div class="font-top">HOME</div>
						<div class="center-slash">/</div>
						<div class="font-top">
							<div class="category-top"></div>
							<div class="arrow-down"></div>
							</div>
						</div>
						<div class="center-slash">/</div>
						<div class="font-top">
							<div></div>
							<div class="arrow-down"></div>
						</div>
						<div class="center-slash">/</div>
						<div class="font-top">
							<div class="category-boottom"></div>
							<div class="arrow-down"></div>
						</div>
					</div>
					<div class="main-goods-position">
						<div class="left-img">
							<div class="img-padding">
								<div class="img-frame">
									
								</div>
							</div>
							<div class="nobrand-home"></div>
						</div>
						<div class="right-info">
							<div class="emart">이마트</div>
							<div class="brand">
								<div class="font-nobrand">노브랜드</div>
								<div class="arrow-right">></div>
								<div class="public-store">공식스토어</div>
								<button id="delete-goods">등록된 상품 삭제하기</button>
							</div>
							<div class="goods-name"></div>
							<div class="goods-star">
								<div class="star-img"></div>
								<div class="star-score"></div>
								<div class="star-participants"></div>
							</div>
							<div class="made-in-box">
								<div class="text-made-in">원산지:</div>
								<div class="more-info-text">상세설명참조</div>
							</div>
							<div class="goods-price-box">
								<div class="goods-price"></div>
								<div class="font-won">원</div>
							</div>
							<div class="event-banner">
								<img class="banner-position" src="resources/images/sale-banner.png">
							</div>
							<div class="line"></div>
							<div class="delivery-banner"></div>
							<div class="routine-delivery">
								<div class="font-routine">정기배송</div>
								<div class="font-midle">
									<div class="font-bold">정기배송 신청가능</div>
									<div class="cart-check">장바구니에서 신청하실 수 있습니다.</div>
								</div>
								<div class="font-more-info">정기배송 더 알아보기></div>
							</div>
							<div class="calculate-box">
								<div class="goods-name-info font-cal"></div>
								<div class="calculate-position">
									<div class="calculator">
										<div class="counter">
											<input class="minus" type="button" value="-"/>
											<div id="result" class="count-position">1</div>
											<input class="plus" type="button" value="+"/>
										</div>
									</div>
									<div class="price-positoin">
										<div class="total-order"></div>
										<div class="font-total-goods">원</div>
									</div>
								</div>
							</div>
							<div class="total-price-box">
								<div class="font-total">합계&nbsp;</div>
								<div class="total-order-second font-price-bold"></div>
								<div class="font-total-goods-bold">원</div>
							</div>
							<div class="buy-btn-box">
								<div class="like-img">
									<img class="like-ico" alt="관심있는 상품" src="resources/images/heart.svg">
								</div>
								<button class="cart-btn" onclick="createCookie(goodsData.id, 30)">장바구니</button>
								<button class="buy-btn" onclick="createCookieBuy(goodsData.id, 30), location.href='/nobrand/buy'">
									<div class="logo-s">
										<div>S</div>
									</div>
									<div>바로구매</div>
								</button>
								<div class="go-cart">장바구니로 이동하시겠습니까?<button class="border-none" onclick="location.href='/nobrand/cart'">이동</button></div>
							</div>
						</div>
					</div>
				</div>	
				<img class="card-event-box" alt="" src="resources/images/card-banner.png">
				<div class="goods-sub">
					<div class="container-box">
						<div class="goods-img">
							<div class="goods-img-box-content">
							</div>
						</div>
						<jsp:include page='/WEB-INF/views/goods/goodsinfo.jsp' />
						<jsp:include page='/WEB-INF/views/goods/review.jsp' />
						<div class="exchange">
							<div class="exchange-info">
								<div class="title-goods">교환 및 반품 안내</div>
								<div class="line-bold"></div>
								<div class="form-content">
									<div class="content">교환/반품 신청기간</div>
									<div class="sub-title-box">단순변심 및 사이즈/색상 불만에 관련된 교환/반품 신청은 배송완료 후 7일 이내에 가능합니다.
										상품이 표기/광고내용과 다르거나 계약내용과 다른 경우 상품을 받으신 날부터 3개월 이내,
										또는 사실을 알게된 날(알 수 있었던 날)부터 30일 이내에 신청 가능합니다.
									</div>
								</div>
								<div class="info-line"></div>
								<div class="form-content">
									<div class="content">교환/반품 회수(배송)비용</div>
									<div class="sub-title-box">
										<div class="font-content">상품의 불량/하자 또는 표시광고 및 계약 내용과 다른 경우 해당 상품의 회수(배송)비용은 무료이나, 고객님의 단순변심 및 사이즈/색상 불만에 관련된 교환/반품의 경우 택배비는 고객님 부담입니다.
											※ 구매 시 선택한 옵션과 수량 또는 프로모션 적용 여부에 따라 반품/교환 배송비가 변경될 수 있습니다. 자세한 반품/교환 배송비는 MY SSG에서 반품/교환 시 확인 가능합니다.
										</div>
										<div class="font-content-bold">
											<div>반품 배송비: 3,000원 (최초 배송비가 무료인 경우, 6,000원 부과)</div>
											<div>교환 배송비: 6,000원</div>
										</div>
										<div class="font-content">제주/도서산간 지역은 추가 운임이 발생할 수 있습니다. 단, 반품/교환 비용은 상품 및 반품/교환 사유에 따라 변경될 수 있으므로
											반품/교환 신청 화면에서 확인 부탁드립니다.
										</div>
									</div>
								</div>
								<div class="info-line"></div>
								<div class="impossible form-content">
									<div class="content">교환/반품 불가 안내</div>
									<div class="sub-title-box">
										<div class="font-content-bold">전자상거래 등에서 소비자보호에 관한 법률에 따라 다음의 경우 청약철회가 제한될 수 있습니다.
										</div>
										<div>고객님이 상품 포장을 개봉하여 사용 또는 설치 완료되어 상품의 가치가 훼손된 경우
											(단, 내용 확인을 위한 포장 개봉의 경우는 예외)
											고객님의 단순변심으로 인한 교환/반품 신청이 상품 수령한 날로부터 7일이 경과한 경우
											신선식품(냉장/냉동 포함)을 단순변심/주문착오로 교환/반품 신청하는 경우
											고객님의 사용 또는 일부 소비에 의해 상품의 가치가 훼손된 경우
											시간 경과에 따라 상품 등의 가치가 현저히 감소하여 재판매가 불가능한 경우
											복제가 가능한 재화 등의 포장을 훼손한 경우(DVD, CD, 도서 등 복제 가능한 상품)
											고객님이 이상 여부를 확인한 후 설치가 완료된 상품의 경우(가전, 가구, 헬스기구 등)
											고객님의 요청에 따라 개별적으로 주문제작되는 상품으로 재판매가 불가능한 경우(이니셜 표시상품, 사이즈 맞춤상품 등)
											구매한 상품의 구성품이 누락된 경우(화장품 세트, 의류부착 악세서리, 가전제품 부속품, 사은품 등)
											기타, 상품의 교환, 환불 및 상품 결함 등의 보상은 소비자분쟁해결기준(공정거래위원회 고시)에 의함
										</div>
									</div>
								</div>
								<div class="info-line"></div>
								<div class="bootom-text">
									<div>※ 자세한 내용은 고객센터로 문의 부탁드립니다. (A/S 문의는 제조사로 먼저 문의 시 빠르게 처리 가능합니다.)</div>
									<div>※ 전자상거래 등에서의 소비자 보호에 관한 법률에 의한 반품규정이 판매자가 상품상세 페이지 등에서 개별적으로 고지 또는 지정한 반품조건보다 우선합니다.</div>
								</div>
							</div>
						</div>
					</div>
					<div class="float-menu"></div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="resources/scripts/goods-count.js"></script>
		<script type="text/javascript" src="resources/scripts/goods-frame.js"></script>
	<!-- 여기부터 끝 -->
	<jsp:include page='/WEB-INF/views/bottompage.jsp' />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>