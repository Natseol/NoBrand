<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="regitstyle.css" type="text.css">
<title>회원가입 > 정보입력, 믿고 사는 즐거움 SSG.COM</title>
</head>
<body>
<div class="regit_header"><h2>신세계포인트 통합회원 가입</h2></div>

<form action="/nobrand/regist" method="post">
	<div>
		<div>
			<div>
				<h3>회원정보</h3>
			</div>
			<p class="blind">* 표시는 필수입력 항목 이오니 반드시 입력해 주세요.</p>
			<div>
				<dl class="regit_dl" role="presentation">
					<dt class="regit_dt">
				<span>
					<span class="star" aria-hidden="true">*</span>
					<label for="USERID"><span class="blind">필수입력</span>아이디</label>
				</span>
					</dt>
					<dd class="regit_dd">
						<input type="hidden">
								<div>
									<div>
										<input type="text" name ="USERID" id="USERID" placeholder="영어 또는 숫자로 6~20자리로 입력해주세요."maxlength="20">
									</div>
									<button type="button" id="checkDuplicateLoginIdBtn">
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
				<dl class="regit_dl" role="presentation">
					<dt class="regit_dt">
			<span>
				<span class="star" aria-hidden="true">*</span>
				<label for="PASSWORD"><span class="blind">필수입력</span>비밀번호</label>
			</span>
					</dt>
					<dd>
						<div>
							<div>
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
				<dl class="regit_dl" role="presentation">
					<dt class="regit_dt">
				<span class="regit_dt_tit regit_rq_tit">
					<span class="star" aria-hidden="true">*</span>
					<label for="NAME"><span class="blind">필수입력</span>이름</label>
				</span>
					</dt>
					<dd class="regit_dd">
						<input type="text" name ="NAME" id="NAME" placeholder="이름을 입력하세요">
					</dd>
				</dl>

				<dl class="regit_dl" role="presentation">
					<dt class="regit_dt">
			<span>
				<span aria-hidden="true">*</span>
				<label for="ADDRESS"><span class="blind">필수입력</span>주소</label>
			</span>
					</dt>
					<dd>
						<div>
							<div>
								<input type="text" title="우편번호">
							</div>
							<button type="button"><span>우편번호 찾기</span></button>
						</div>
					</dd>
				</dl>
				<dl role="presentation">
					<dt>
			<span>
				<span class="star" aria-hidden="true">*</span>
				<label for="PHONENUMBER"><span class="blind">필수입력</span>휴대폰번호</label>
			</span>
					</dt>
					<dd>
						<input type="text" name ="PHONENUMBER" id="PHONENUMBER" placeholder="휴대폰 번호를 입력하세요">			
					</dd>
				</dl>
	</div>
	<button>회원가입</button>
</form>

</body>
</html>