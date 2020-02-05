<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 세션 데이터 저장 --%>
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	// session scope의 속성명 <- 속성값 저장
	session.setAttribute("attr_name", name);
	session.setAttribute("attr_age", age);
	
	// request scope에 속성 설정
	request.setAttribute("req_name", name);
	request.setAttribute("req_age", age);
	
	String req_name = (String)request.getAttribute("req_name");
	String req_age = (String)request.getAttribute("req_age");
%>
	<h2>이름(param): <%=name %></h2>
	<h2>나이(param): <%=age %></h2>
	<hr>
	
	<h2>이름(req_attr): <%=req_name %></h2>
	<h2>나이(req_attr): <%=req_age %></h2>
	
<%
	response.sendRedirect("01_session.jsp");
%>
	