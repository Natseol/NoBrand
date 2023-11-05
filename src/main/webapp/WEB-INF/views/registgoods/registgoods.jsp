<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/registgoods.css" rel="stylesheet" type="text/css">
<title>제목</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<style>
    #container {
        width: 1100px;        
        margin: 20px auto;
    }
    .ck-editor__editable[role="textbox"] {
        /* editing area */
        min-height: 500px;
        width : 1100px;     
    }
    .ck-content .image {
        /* block images */
        max-width: 80%;
        margin: 20px auto;
    }
</style>
<body>
	<jsp:include page='/WEB-INF/views/toppage.jsp' />
	<!-- 여기부터 시작 -->
	<div class="registgoods-main">
		<div class="registgoods-title">
			상품등록
		</div>		
		<form action="/nobrand/registgoods" method="post" class="registgoods-container">
			<div class="registgoods-info">				
				<div class="registgoods-container-title">기본정보</div>
				<hr class="hr-bold">

				<div class="registgoods-input-box"><div class="registgoods-input-info">상품명</div><input class="registgoods-input" name="goods-name"></div>
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">가격</div><input class="registgoods-input" name="goods-price"></div>
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">카테고리</div><input class="registgoods-input" name="goods-kind"></div>
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">옵션명</div>
					<select>
						<option>베스트</option>
						<option>세일중</option>
						<option>신선식품</option>
						<option>가공식품</option>
						<option>가공식품</option>
						<option>생활용품</option>
						<option>가전/인테리어</option>
						<option>패션잡화</option>
						<option>스포츠/캠핑용품</option>
					</select>			
					<select name="goods-options">
						<option>FAMILY SITE</option>
						<option>신세계그룹</option>
						<option>신세계포인트</option>
						<option>신세계백화점</option>
						<option>이마트</option>
					</select>			
				</div>
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">수량</div><input class="registgoods-input" name="goods-cellcount"></div>
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">배송정보</div><input class="registgoods-input" name="goods-delivery"></div>				
				<hr class="hr-thin">
			</div>			
			<div class="registgoods-content">
				<div class="registgoods-container-title">상세페이지</div>
				<hr class="hr-bold">				

				<div class="registgoods-input-box"><div class="registgoods-input-info">내용</div><textarea id="editor" class="registgoods-textarea" name="goods-content"></textarea></div>					
				<hr class="hr-thin">
			</div>			
			<div class="registgoods-info2">
				<div class="registgoods-container-title">상세정보</div>
				<hr class="hr-bold">				

				<div class="registgoods-input-box"><div class="registgoods-input-info">원산지</div><input class="registgoods-input" name="goods-info"></div>						
				<hr class="hr-thin">
			</div>
			<div class="registgoodsd-button-box">
				<button class="registgoods-button">상품등록</button>
			</div>
		</form>
	</div>
	<!-- 여기부터 끝 -->
	<jsp:include page='/WEB-INF/views/bottompage.jsp' />
<script src="https://cdn.ckeditor.com/ckeditor5/40.0.0/classic/ckeditor.js"></script>
<script>
	ClassicEditor
	.create(document.querySelector('#editor'), {
		ckfinder: {
			uploadUrl : '/nobrand/image/upload'
		}
	})
	.then(editor => {
		console.log('Editor was initialized');
	})
	.catch(error => {
		console.error(error);
	});
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>