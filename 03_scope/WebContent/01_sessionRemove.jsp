<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 세션에 설정된 속성 삭제 --%>
<%
	//속성을 삭제(attr_age);
	//session.removeAttribute("attr_age"); //속성 자체를 삭제
	
	//속성(attr_age) 값을 빈문자열로 초기화("" 설정)
	//session.setAttribute("attr_age", ""); //속성값 초기화
	
	//---------
	//속성을 삭제(attr_name)
	session.removeAttribute("attr_name"); //속성 자체를 삭제
	
	//ex01_session.jsp 재요청 처리
	response.sendRedirect("01_session.jsp");
	

%>
