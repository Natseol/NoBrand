<%@page import="com.javaproject.nobrand.user.domain.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
<%String name=(String)session.getAttribute("id");
String Temp;
System.out.println(name);
%>
<h1>
	<%if(name!=null) {Temp="안녕하세요,"+name+"님";}
		else{Temp="아이디와 비밀번호를 입력해주세요";}%>
	<%= Temp %>

</h1>
<form action="/nobrand/login" method="post">
	<label for="USERID">ID:
		<input type="text" name ="USERID" id="USERID">
	</label>
		<label for="PASSWORD">password:
		<input type="text" name ="PASSWORD" id="PASSWORD">
	</label>
	<button>로그인</button>
</form>
<form action="/nobrand/logout" method="post">
	<button>로그아웃</button>
</form>

</body>
</html>