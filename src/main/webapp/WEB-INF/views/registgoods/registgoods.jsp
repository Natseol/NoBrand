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
	#thumbnail-box>div>div>.ck-editor__editable {
		width: 350px;
		height: 300px;
	}

	#thumbnail-box>div>div>div>div>.ck-toolbar {
		width: 350px;
	}

    #container {
        width: 300px;
        margin: 20px auto;
    }
    #content-box>div>div>.ck-editor__editable {
        /* editing area */        
        width : 1100px;
		min-height: 500px;
    }
    .ck-content .image {
        /* block images */
        max-width: 80%;
        margin: 5px auto;
    }
</style>
<body>
	<jsp:include page='../toppagessg.jsp' />
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
				<div class="registgoods-input-box"><div class="registgoods-input-info">가격</div><input class="registgoods-input" name="goods-price" onkeypress="keyEventFunc(event)" placeholder="숫자만 입력"></div>
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">카테고리</div>
				<select class="registgoods-input-select" id="registgoods-category" onchange="updateOptions()" name="goods-category" >
					<option>신선식품</option>
					<option>가공식품</option>
					<option>생활용품</option>
					<option>가전인테리어</option>
					<option>패션잡화</option>
					<option>스포츠캠핑용품</option>
				</select>
				<select class="registgoods-input-select" id="registgoods-kind" name="goods-kind">
					<option>과일채소양곡</option>
					<option>축산수산건식품</option>
					<option>과자초콜릿</option>
					<option>라면통조림</option>
					<option>조미료장류</option>
					<option>생수음료</option>
					<option>커피차</option>
					<option>냉동냉장HMR</option>
					<option>유제품</option>
					<option>화장지위생용품</option>
					<option>헤어바디구강용품</option>
					<option>화장품</option>
					<option>세제</option>
					<option>주방용품일회용품</option>
					<option>청소욕실용품</option>>
					<option>생활디지털가전</option>
					<option>문구완구</option>
					<option>가구홈데코</option>
					<option>조명공구</option>
					<option>침구수예</option>
					<option>자동차용품</option>
					<option>애완</option>
					<option>잡화</option>
					<option>스포츠캠핑용품</option>
				</select>
				</div>
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">옵션명</div><input class="registgoods-input" name="goods-options"></div>
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">수량</div><input class="registgoods-input" name="goods-cellcount" onkeypress="keyEventFunc(event)" placeholder="숫자만 입력"></div>
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">배송정보</div><input class="registgoods-input" name="goods-delivery"></div>				
				<hr class="hr-thin">
			</div>			
			<div class="registgoods-content">
				<div class="registgoods-container-title">상세페이지</div>
				<hr class="hr-bold">				
				
				<div class="registgoods-input-box"><div class="registgoods-input-info">썸네일</div><div id="thumbnail-box"><textarea id="thumbnail" class="registgoods-textarea" name="goods-thumbnail"></textarea></div></div>					
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">내용</div><div id="content-box"><textarea id="editor" class="registgoods-textarea" name="goods-content"></textarea></div></div>					
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

<script src="resources/scripts/UploadAdapter.js"></script>
<script src="resources/ckeditor5/build/ckeditor.js"></script>
<!-- <script src="https://cdn.ckeditor.com/ckeditor5/40.0.0/balloon-block/ckeditor.js"></script> -->
<!-- <script src="https://cdn.ckeditor.com/ckeditor5/40.0.0/classic/ckeditor.js"></script> -->

<script>
	function MyCustomUploadAdapterPlugin(editor) {
		editor.plugins.get('FileRepository').createUploadAdapter = (loader) => {
			return new UploadAdapter(loader)
		}
	}

	ClassicEditor.create(document.querySelector('#thumbnail'), {		
		extraPlugins: [MyCustomUploadAdapterPlugin]
	}).then(editor => {
		window.editor = editor;
	}).catch( error => {
		console.error( error );
	});

	ClassicEditor.create(document.querySelector('#editor'), {		
		extraPlugins: [MyCustomUploadAdapterPlugin]
	}).then(editor => {
		window.editor = editor;
	}).catch( error => {
		console.error( error );
	});
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="/nobrand/resources/scripts/registgoods.js"></script>
</body>
</html>