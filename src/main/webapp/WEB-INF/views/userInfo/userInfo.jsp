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
            <div class="info-buylist-content">
                <a>
                    <div class="buylist-card">
                        <div class="buylist-goods-box">
                            <div class="buylist-goods-iamge">사진</div>
                            <div class="buylist-goods-info">
                                <div class="buylist-goods-nobrand">노브랜드</div>
                                <div class="buylist-goods-name">이름</div>
                            </div>
                        </div>
                        <div class="buylist-price-box">
                            <div class="buylist-price-info">
                                <div class="buylist-goods-price">가격</div>
                                <div class="buylist-goods-multi"> X </div>
                                <div class="buylist-goods-count">갯수</div>
                            </div>
                            <div class="buylist-goods-total-price">총가격</div>
                        </div>
                        <div class="buylist-date-box">
                            <div class="buylist-goods-date-title">구매날짜</div>
                            <div class="buylist-goods-date">실제날짜</div>
                        </div>
                    </div>                
                </a>
            </div>
        </div>
    </div>
    

	<!-- 여기부터 끝 -->
	<jsp:include page='/WEB-INF/views/bottompage.jsp' />

<script src="resources/scripts/UploadAdapter.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/40.0.0/balloon/ckeditor.js"></script>
<script>
	let userInfo = ${requestScope.user};
    console.log(userInfo);
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="/nobrand/resources/scripts/userinfo.js"></script>
</body>
</html>