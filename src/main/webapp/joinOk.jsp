<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 정보</title>
</head>
<body>
	<h2>회원 가입 정보</h2>
	<hr>
	<%
		String memberId = request.getParameter("id");
		String memberPw = request.getParameter("pw");
		String memberName = request.getParameter("name");
		String telecom = request.getParameter("telecom");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String gender = request.getParameter("gender");
		String intro = request.getParameter("intro");
		
		String[] hobbys = request.getParameterValues("hobby"); //체크박스->배열로 반환됨
	
	%>
	아이디 : <%= memberId %>
	<br> 
	비밀번호 : <%= memberPw %>
	<br>
	이름 : <%= memberName %>
	<br>
	연락처 : <%= telecom %> <%= phone1 %> - <%= phone2 %> - <%= phone3 %>
	<br> 
	성별 : <%= gender %> 
	<br>
	취미 :
	<%
		if(hobbys != null) {
			for(int i=0;i<hobbys.length;i++) {
				//System.out.println(hobbys[i]); //콘솔창에 출력
				out.println(hobbys[i]); //웹 상에 출력
			}	
		} else {
			out.println("취미 선택 없음");
		}
	%>
	
	
	<br>
	자기소개 : <%= intro %>
	<br>
</body>
</html>