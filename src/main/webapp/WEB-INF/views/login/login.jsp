<%@page import="com.javaproject.nobrand.user.domain.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script>
		reload();
	</script>
<link rel="stylesheet" href="resources/css/regitstyle.css" type="text/css">
<meta charset="UTF-8">
<title>로그인. 믿고 사는 즐거움 SSG.COM - Chrome</title>
<style type="text/css">
	.support_pannel {
	cursor:pointer;
    display: inline-block;
    position: relative;
    text-decoration: none;
    font-size: 0;
    padding: 0 6px;
    font-size: 11px;
    color: #4a4a4a;
    }
    .cmem_login_support{
    margin-top:10px;
    }
    .regitButton_output{
    margin-top: 30px;
    }
    .cmem_sns_login {
    text-align:center;
    display: flex;
    width:330px;
    height:72px;
    margin-top: 30px;
    vertical-align: top;
	}
	.sp_cmem_sns {
	
    display: inline-block;
    vertical-align: top;
	}
	.icon-img_naver{
	cursor:pointer;
	margit-left:2px;
	margin-right:19px;
	background-image:url(/nobrand/resources/images/naver.png);
	background-size:cover;
	width: 62px;
    height: 62px;
	}
	.icon-img_kakao{
	cursor:pointer;
	margin-right:19px;
	background-image:url(/nobrand/resources/images/kakao.png);
	background-size:cover;
	width: 62px;
    height: 62px;
	}
	.icon-img_toss{
	cursor:pointer;
	margin-right:19px;
	background-image:url(/nobrand/resources/images/toss.jpg);
	background-size:cover;
	width: 62px;
    height: 62px;
	}
	.icon-img_apple{
	cursor:pointer;
	margin-right:19px;
	background-image:url(/nobrand/resources/images/apple-logo.png);
	background-size:cover;
	width: 62px;
    height: 62px;
	}


</style>
</head>
<body>
<%String name=(String)session.getAttribute("ID");
System.out.println(name);
%>
<div id="popup_container" class="popup_container">
	<div class="regit_header"><h1>로그인</h1></div>
<div style="display: flex;">
	<form action="/nobrand/login" style="width: 330px" method="post">
	<div>
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
							<input type="password" name ="PASSWORD" id="PASSWORD" placeholder="비밀번호" maxlength="20">
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
			<div class="login_support_pannel">
			<span class="support_pannel">
				<a>아이디 찾기
				</a>
				<a>비밀번호 찾기
				</a>
				<a id="regit-box">회원가입
				</a>
			</span>
			</div>
		</div>
			<button class="regitButton_output">로그인</button>
		</div>
		<div class="cmem_sns_login">
			<div>
				<div class="icon-img_naver">
				</div>
				<div class="icon-name">
				</div>
			</div>
			<div>
				<div class="icon-img_kakao">
					
				</div>
				<div class="icon-name">
				
				</div>
			
			</div>
			<div>
				<div class="icon-img_apple">
					
				</div>
				<div class="icon-name">
				
				</div>
			
			</div>
			<div>
				<div class="icon-img_toss">
					
				</div>
				<div class="icon-name">
				
				</div>
			</div>
		</div>
	</div>
</form>
	<div class="cmem_sec advertising" style="display: inline-block; margin-left: 35px;">
		<div class="advertising">
			<a href="">
				<img alt="2단계 인증을 설정해보세요" src="resources/images/login-adimg.avif">
			</a>
		</div>
	</div>
	
	

</div>
</div>
<script type="text/javascript" src="resources/scripts/popup.js"></script>
<script>
	function reload(){
		location.reload();
	}
</script>
</body>
</html>