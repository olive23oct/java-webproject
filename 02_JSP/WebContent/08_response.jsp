<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	System.out.println(">> 08_response.jsp 실행");

	String site = request.getParameter("site");
	switch(site){
		case "naver": response.sendRedirect("https://naver.com");
		break;
		case "daum": response.sendRedirect("https://daum.net");
		break;
		case "google": response.sendRedirect("https://google.com");
		break;

	}
%>