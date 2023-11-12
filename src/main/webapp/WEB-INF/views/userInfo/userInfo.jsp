<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/userinfo.css" rel="stylesheet" type="text/css">
<title>내 정보 확인</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<body>
	<jsp:include page='../toppagessg.jsp' />
	<!-- 여기부터 시작 -->

        <!-- Modal -->
    <div class="modal fade" id="reviewModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel" style="font-weight: bold;">리뷰 작성</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form>
                <div class="modal-body">
                    <div class="buylist-review-box">
                        <div class="buylist-review-option" id="buylist-review-option">옵션</div>
                        <div class="buylist-review-radio">
                            <div><input type="radio" name="radio"><span>1</span></div>
                            <div><input type="radio" name="radio"><span>2</span></div>
                            <div><input type="radio" name="radio"><span>3</span></div>
                            <div><input type="radio" name="radio"><span>4</span></div>
                            <div><input type="radio" name="radio"><span>5</span></div>
                        </div>
                        <div class="buylist-review-textarea-box"><textarea class="buylist-review-textarea"></textarea></div>
                        <input class="goods-id" type="hidden">
                        <input class="user-id" type="hidden">
                    </div>
                    
                </div>
                <div class="modal-footer">            
                <button type="button" class="">Save changes</button>
                </div>
            </form>    
        </div>
        </div>
    </div>

    <div class="info-body">
        <div class="info-main-container">
            <div class="info-name-box info-box">
                <div class="info-name-title info-title" id="info-item-name">이름</div>
                <div class="info-item"></div>
            </div>
            <div class="info-email-box info-box">
                <div class="info-email-title info-title">이메일</div>
                <div class="info-item" id="info-item-email">이메일주소</div>
            </div>
            <div class="info-phone-box info-box">
                <div class="info-phone-title info-title">전화번호</div>
                <div class="info-item" id="info-item-phone">000-0000-0000</div>
            </div>
            <div class="info-address-box info-box">
                <div class="info-address-title info-title">주소</div>
                <div class="info-item" id="info-item-address">하늘 아래에 어딘가 있겠지</div>
            </div>
        </div>
        <hr class="hr-bold">
        <div class="info-buylist-container">
            <div class="info-buylist-title">구매목록</div>
            <hr class="hr-thin">
            <div class="info-buylist-content" id="info-buylist-content">
                <!-- buyList 자바스크립트 -->
            </div>
        </div>
    </div>
    

	<!-- 여기부터 끝 -->
	<jsp:include page='/WEB-INF/views/bottompage.jsp' />

<script src="resources/scripts/UploadAdapter.js"></script>
<!-- <script src="https://cdn.ckeditor.com/ckeditor5/40.0.0/balloon/ckeditor.js"></script> -->
<script>
	let userInfo = ${requestScope.userInfo};
    let buyList = ${requestScope.buyList};
    let goodsList = ${requestScope.goodsList};
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="/nobrand/resources/scripts/userinfo.js"></script>
</body>
</html>