<%@page import="com.javaproject.nobrand.user.domain.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/regitstyle.css" type="text/css">
<meta charset="UTF-8">
<title>로그인. 믿고 사는 즐거움 SSG.COM - Chrome</title>
</head>
<body>
<%String name=(String)session.getAttribute("id");
String Temp;
%>
<div id="popup_container" class="popup_container">
	<div class="regit_header"><h1>로그인</h1></div>
<div>
	<form action="/nobrand/rogin" method="post">
		<div class="cmem_sec" style="display: inline-block;vertical-align: top;">
			<div>
				<input type="hidden">
					<div>
						<div class="regit_txt" style="margin-bottom: 9px;" >
							<input type="text" name ="USERID" id="USERID" placeholder="아이디"maxlength="20">
						</div>
				<span aria-live="polite">
						<em class="usable_value"></em>
				</span>
			</div>
		</div>
			<div>
				<input type="hidden">
					<div>
						<div class="regit_txt">
							<input type="text" name ="PASSWORD" id="PASSWORD" placeholder="비밀번호" maxlength="20">
						</div>
					<span aria-live="polite">
						<em class="usable_value"></em>
					</span>
				</div>
			</div>
		<div class="cmem_login_support">
			<span class="cmem_chk">
				<input type="checkbox" id="keed_id" name="keed_id">
				<label for="keed_id">아이디 저장</label>
			</span>
		<span class="c"></span>
		</div>
			<button class="regitButton_output">로그인</button>
		</div>
	<div class="cmem_sec advertising" style="display: inline-block; margin-left: 35px;">
		<div class="advertising">
			<a href="">
				<img alt="2단계 인증을 설정해보세요" src="resources/images/login-adimg.avif">
			</a>
		</div>
	</div>

</form>
</div>
</div>
</body>
</html>
		