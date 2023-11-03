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
<body>
	<jsp:include page='/WEB-INF/views/toppage.jsp' />
	<!-- 여기부터 시작 -->
	<div class="registgoods-main">
		<div class="registgoods-title">
			상품등록
		</div>		
		<form class="registgoods-container">
			<div class="registgoods-info">				
				<div class="registgoods-container-title">기본정보</div>
				<hr class="hr-bold">

				<div class="registgoods-input-box"><div class="registgoods-input-info">상품명</div><input class="registgoods-input"></div>
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">가격</div><input class="registgoods-input"></div>
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">카테고리</div><input class="registgoods-input"></div>
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">옵션명</div><input class="registgoods-input"></div>
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">수량</div><input class="registgoods-input"></div>
				<hr class="hr-thin">
				<div class="registgoods-input-box"><div class="registgoods-input-info">배송정보</div><input class="registgoods-input"></div>				
				<hr class="hr-thin">
			</div>			
			<div class="registgoods-content">
				<div class="registgoods-container-title">상세페이지</div>
				<hr class="hr-bold">				

				<div class="registgoods-input-box"><div class="registgoods-input-info">내용</div><textarea class="registgoods-textarea"></textarea></div>					
				<hr class="hr-thin">
			</div>			
			<div class="registgoods-info2">
				<div class="registgoods-container-title">상세정보</div>
				<hr class="hr-bold">				

				<div class="registgoods-input-box"><div class="registgoods-input-info">원산지</div><input class="registgoods-input"></div>						
				<hr class="hr-thin">
			</div>
			<div class="registgoodsd-button-box">
				<button class="registgoods-button">상품등록</button>
			</div>
		</form>
	</div>
	<!-- 여기부터 끝 -->
	<jsp:include page='/WEB-INF/views/bottompage.jsp' />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>