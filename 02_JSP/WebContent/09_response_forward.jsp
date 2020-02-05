<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Response</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pwd");
%>
	<h2>Response forward</h2>
	ID: <%=id %><br>
	PW: <%=pw %>
<%
// forward(위임)
// RequestDispatcher rd = request.getRequestDispatcher("이동위치");
// rd.forward(request, response);

	request.getRequestDispatcher("09_response_forward2.jsp")
			.forward(request, response);
%>	
	
</body>
</html>