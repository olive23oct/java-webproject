<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Response - redirect</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pwd");
	System.out.println("ID: " + id + " PW: " + pw);
%>
	<h1>Response - redirect</h1>
	<hr>
	<h2>ID: <%=id %></h2>
	<h2>PW: <%=pw %></h2>
<%
	// redirect 
	response.sendRedirect("09_response_redirect2.jsp");
%>	
	
</body>
</html>