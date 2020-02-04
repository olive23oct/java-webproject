<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP - redirect</title>
</head>
<body>
<%-- redirect / forward
1. rediect : response.sendRedirect("이동위치")
	단순한 페이지 전환(새로운 페이지를 다시 요청)
	-> request, response 객체가 다시 생성 됨
	-> 최초 요청된 요청 파라미터 값을 전달할 수 없음
	-> 요청 URL이 변경됨
	
2. forward : 전달(위임)
	2-1. RequestDispatcher rd = request.getRequestDispatcher("이동위치")
		 rd.forward(request, response);
	2-2. request.getRequestDispatcher("이동위치").forward(request, response);
	 	-> 최초 요청 request, response 객체를 전달할 수 있음
	 	-> 최초 요청 시 전달된 파라미터 값 전달 가능(위임받은 곳에서 사용 가능)
	 	-> 요청 URL 변경 없음(최초 요청 주소 그대로 표시)
	

 --%>
</body>
</html>