<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="resources/css/goodsexist.css" rel="stylesheet" type="text/css">
	<div id="root-goods">
		<div class="left-box">
			<div class="list-box">
				<div class="goods-select-box">
					<div class="select-all-delete">
						<div class="check-box font-select-delete">
							<script>
									function selectAll(selectAll){
										const checkboxes = document.getElementsByName('check-box');
										checkboxes.forEach((checkbox) => {
											checkbox.checked = selectAll.checked;

										});
									}
							</script>
							<input type="checkbox" id="check1" name="check-box" onclick="selectAll(this)">
							 <label for="check1"></label>
							 전체선택
						</div>
						<div class="set-delete">
							<button class="delete-sold-out font-select-delete">품절상품삭제</button>
							<div class="font-line font-select-delete">|</div>
							<!-- <script>
								function deleteSelectEvent(){
											alert("실행");
											const checkboxes = document.getElementsByName('check-box');
											for (let index = 0; index < checkboxes.length; index++) {
												if(checkboxes[index].checked == true){
													document.cookie = idList[index] + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
												}
											}
											alert("선택한 상품이 삭제되었습니다.");
											location.reload(true);
										}
							</script> -->
							<button id="delete-selector" class="delete-select font-select-delete" onclick="deleteSelectEvent()">선택삭제</button>
						</div>	
					</div>
					<div class="line-bold"></div>
					<div class="delivery-goods-box">
						<div class="delivery-goods">
							<div class="delivery-position">
								<div class="delivery-script font-delivery">
									<input type="checkbox">
										새벽배송/쓱배송 상품:&nbsp;
								</div>
								<div id="goods" class="goods-count font-delivery">
								</div>
								<div class="delivery-script font-delivery">개</div>
							</div>
							<div class="list-open-close">
								<div class="close-img">
									<img class="ico-arrow" alt="" src="resources/images/ico_arrow.png">
								</div>
								<div>
									<img class="delivery-banner" alt="" src="resources/images/deliverybanner.png">
								</div>
								<div class="goods-list-box">
									<div class="goods-list">
									<!-- 여기에 상품 리스트 출력된다. -->
										<div class="total-banner-box">
											<div class="total-banner">
												<div class="total-box">
													<div class="total-order font-total"></div>
													<div class="font-total">원+</div>
													<div class="font-total">배송비</div>
													<div class="cost-plus font-total">
							
													</div>
													<div class="font-total">=</div>
													<div class="result-cost font-total">
													</div>
													<div class="font-total-notbold">(4만원이상 무료배송)</div>
												</div>
												<div class="delivery-save-box">
													<div class="delivery-save font-total">배송비SAVE 상품보기 <img class="arrow-size" alt="" src="resources/images/right_arrow.svg"> </div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="card-event">
									<div class="card-event-box">
										<div class="card-first">
											<img class="card-event-banner" alt="" src="resources/images/cardevent1.png">
										</div>
										<div class="card-seconnd">
											<img class="card-event-banner" alt="" src="resources/images/cardevent2.png">
										</div>
									</div>
								</div>
								<div class="cart-bottom">
									<div class="info">
										<div class="info-script-box">
											<div class="info-script">
												<div class="font-size-6">장바구니 상품 안내</div>
												<ul class="">
													<li><div class="font-size-6">장바구니에 담은 상품은 최대 150개까지 보관됩니다.</div>
													<li><div class="font-size-6">상품 우측의 '계속 담아두기'를 설정해 두시면 시간이 지나고 상품이 삭제되지 않습니다.</div>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="resources/scripts/goodslist.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
