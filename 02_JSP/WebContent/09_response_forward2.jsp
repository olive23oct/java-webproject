<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Response - forward</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pwd");
%>
	<h2>Response forward2</h2>
	<h2>ID: <%=id %></h2>
	<h2>PW: <%=pw %></h2>
</body>
</html>