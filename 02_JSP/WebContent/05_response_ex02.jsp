<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//요청정보(request)로 부터 파라미터 값 추출
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	//String hobby = request.getParameter("hobby");
	String[] hobbies = request.getParameterValues("hobby");
	//System.out.println("hobbies : " + hobbies);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 데이타</title>
</head>
<body>
	<h1>회원가입 정보</h1>
	<ul>
		<li>이름: <%=name %></li>
		<li>아이디: <%=id %></li>
		<li>암호: <%=pwd %></li>
		<li>이메일: <%=email %></li>
		<li>취미: 
		<%
		for (String hobby : hobbies) {
			out.print(hobby + " ");
		}
		%>
		</li>
	</ul>
	
	<hr>
	<h2>표현식 사용해서 취미 출력</h2>
	<p>취미: 
	<%-- 스크립트 내에 표현식(expression) 사용 못함 --%>
	<%
	for (String hobby : hobbies) {%>
		<%=hobby + " " %>
	<%
	}
	%>
	</p>
</body>
</html>










