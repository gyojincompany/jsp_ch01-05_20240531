<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>
	<h1>로그인 정보</h1>
	
	<%
		String memberid = request.getParameter("id");
		String memberpw = request.getParameter("pw");
	%>
	로그인하신 아이디는 <%= memberid %> 이고, 비밀번호는 <%= memberpw %> 입니다!
	
</body>
</html>