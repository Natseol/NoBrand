<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<!-- 회원가입 페이지 임시주소(연결요망) -->
<form action="/regist" method="post">
	<label for="USERID">USERID:
		<input type="text" name ="USERID" id="USERID">
	</label>
	
	<label for="PASSWORD">PASSWORD:
		<input type="text" name ="PASSWORD" id="PASSWORD">
	</label>
	
	<label for="NAME">NAME:
		<input type="text" name ="NAME" id="NAME">
	</label>
	
	<label for="PHONENUMBER">PHONENUMBER:
		<input type="text" name ="PHONENUMBER" id="PHONENUMBER">
	</label>
	
	<label for="EMAILADDRESS">EMAILADDRESS:
		<input type="text" name ="EMAILADDRESS" id="EMAILADDRESS">
	</label>
	<label for="ADDRESS">ADDRESS:
		<input type="text" name ="ADDRESS" id="ADDRESS">
	</label>
	
	<button>회원가입</button>
</form>

</body>
</html>