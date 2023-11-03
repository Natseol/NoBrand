<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/toppagessg.css" rel="stylesheet">
<link href="resources/css/main.css" rel="stylesheet" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
	<link rel="stylesheet" href="resources/css/regitstyle.css" type="text/css">
<title>회원가입 > 정보입력, 믿고 사는 즐거움 SSG.COM</title>
</head>
<body>
<jsp:include page='/WEB-INF/views/toppagessg.jsp' />
<div id="container">
	<div class="regit_header"><h1>신세계포인트 통합회원 가입</h1></div>
<form action="/nobrand/regist" method="post">
	<div>
		<div>
			<div>
				<h3 class="bottomlines_regit">회원정보</h3>
			</div>
			<p class="blind"><span style="color: red;">*</span> 표시는 <span style="color:red"><b>필수입력 항목</b></span> 이오니 반드시 입력해 주세요.</p>
			<div>
				<dl class="regit_content_dl" role="presentation">
					<dt class="regit_content_dt">
				<span>
					<span class="star" aria-hidden="true"></span>
					<label for="USERID"><span style="color: red;">*</span>아이디</label>
				</span>
					</dt>
					<dd class="regit_content_dd">
						<input type="hidden">
								<div>
									<div class="regit_txt">
										<input type="text" name ="USERID" id="USERID" placeholder="영어 또는 숫자로 6~20자리로 입력해주세요."maxlength="20">
									</div>
									<button type="button" id="checkDuplicateLoginIdBtn" class="regit_btn">
										<span>중복확인</span>
									</button>
									<span aria-live="polite">
										<em class="usable_value"></em>
									</span>
								</div>
							
						
					</dd>
				</dl>
			</div>
		</div>
				<dl class="regit_content_dl" role="presentation">
					<dt class="regit_content_dt">
			<span>
				<span class="star" aria-hidden="true">  </span>
				<label for="PASSWORD"><span style="color: red;">*</span>비밀번호</label>
			</span>
					</dt>
					<dd class="regit_content_dd">
						<div>
							<div class="regit_txt">
								<input type="password" name ="PASSWORD" id="PASSWORD" placeholder="영문, 숫자 조합 8~20자리로 입력해주세요.">
							</div>
						</div>
					</dd>
				</dl>
				<!-- <dl>
					<dt>
				<span>
					<span aria-hidden="true">*</span>
					<label for="pwd2"><span class="blind">필수입력</span>비밀번호 확인</label>
				</span>
					</dt>
					<dd >
						<div>
							<div>
								<input type="password" placeholder="입력하신 비밀번호를 한 번 더 입력해주세요." id="pwd2" class="translated" maxlength="20"><span class="trans_placeholder blind" data-default-txt="입력하신 비밀번호를 한 번 더 입력해주세요.">입력하신 비밀번호를 한 번 더 입력해주세요.</span>
							</div>
						</div>
					</dd>
				</dl> -->
				<dl class="regit_content_dl" role="presentation">
					<dt class="regit_content_dt">
				<span class="regit_dt_tit regit_rq_tit">
					<span class="star" aria-hidden="true"></span>
					<label for="NAME"><span style="color: red;">*</span>이름</label>
				</span>
					</dt>
					<dd class="regit_content_dd">
					<div class="regit_txt">
						<input type="text" name ="NAME" id="NAME" placeholder="이름을 입력하세요">
					</div>
					</dd>
				</dl>

				<dl class="regit_content_dl" role="presentation">
					<dt class="regit_content_dt">
			<span>
				<span aria-hidden="true"></span>
				<label for="ADDRESS"><span style="color: red;">*</span>주소</label>
			</span>
					</dt>
					<dd class="regit_content_dd">
						<div>
							<div class="regit_txt">
								<input type="text" name="ADDRESS" id="ADDRESS" placeholder="주소를 입력하세요">
							</div>
							<button type="button"class="regit_btn"><span>우편번호 찾기</span></button>
						</div>
					</dd>
				</dl>
				
				
				<dl class="regit_content_dl" role="presentation">
					<dt class="regit_content_dt">
			<span>
				<span class="star" aria-hidden="true"></span>
				<label for="PHONENUMBER"><span style="color: red;">*</span>휴대폰번호</label>
			</span>
					</dt>
					<dd class="regit_content_dd">
					<div class="regit_txt">
						<input type="text" name ="PHONENUMBER" id="PHONENUMBER" placeholder="휴대폰 번호를 입력하세요">			
					</div>
					</dd>
				</dl>
				
				<dl class="regit_content_dl" role="presentation">
					<dt class="regit_content_dt">
			<span>
				<span class="star" aria-hidden="true"></span>
				<label for="PHONENUMBER"><span style="color: red;">*</span>E-mail 주소</label>
			</span>
					</dt>
					<dd class="regit_content_dd">
					<div class="regit_txt">
						<input type="text" name ="EMAILADDRESS" id="EMAILADDRESS" placeholder="이메일 주소를 입력하세요">			
					</div>
					</dd>
				</dl>
	</div>
	<div class="regit_subtit">
		<h4>마케팅 정보 수신 동의</h4>
	</div>
	<div class="regit_sec_cont">
		<div class="regit_terms.ty_left">
			<div class="regit_term_tit">
				<h4>신세계포인트</h4>
			</div>
			<div class="regit_term_box">
				<span class="regit_chk">
					<input type="checkbox" class="checkbox">
					<label for="">
					(선택)
					서비스,이벤트정보 제공 및 분석을 위한 개인정보 수집 및 이용 동의</label>
					<button type="button" class="regit_btn">내용 보기</button>
				</span>
			</div>
			<div class="regit_term_box">
				<span class="regit_chk">
					<input type="checkbox" class="checkbox">
						<label>(선택) 선택 정보 이마트/신세계백화점 공동 개인정보 수집 및 이용 동의</label>
					<button type="button" class="regit_btn">내용 보기</button>
				</span>
			</div>
		</div>

	</div>
	<div class="btnarea">
		<button class="regitButton_output">회원가입</button>
	</div>
		
</form>
</div>
<jsp:include page='/WEB-INF/views/bottompage.jsp' />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>	
</body>
</html>