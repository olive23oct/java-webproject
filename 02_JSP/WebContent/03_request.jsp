<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// 서블릿에서 사용하는 방법 그대로 사용
	// 전달받은 파라미터 값  추출
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Request</h1>
	<h2>ID: <%=id %></h2>
	<h2>PASSWORD: <%=pw %></h2>
</body>
</html>