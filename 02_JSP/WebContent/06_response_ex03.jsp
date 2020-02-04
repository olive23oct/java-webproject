<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//(실습) 전달받은 값을 사용해서 평가결과 출력
	//1. 전달받은 값 추출(name, kor, eng, math)
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	
	//2. 계산처리(tot, avg)
	int tot = kor + eng + math;
	double avg = tot * 100 / 3 / 100.0;
	
	//3. 평균점수에 따른 평가
	//평가: 90이상-A, 80이상-B, 70이상-C, 60이상-D, 60미만-F
	String result = "";
	if (avg >= 90) result = "A";
	else if (avg >= 80) result = "B";
	else if (avg >= 70) result = "C";
	else if (avg >= 60) result = "D";
	else result = "F"; 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>성적처리 결과</h1>
	<%--평가결과 출력 형식
	이름 : 홍길동
	총점 : 271
	평균 : 90.33
	평가결과(A~F) : A
	--%>
	<ul>
		<li>이름: <%=name %></li>
		<li>총점: <%=tot %></li>
		<li>평균: <%=avg %></li>
		<li>평가결과: <%=result %></li>
	</ul>
	
</body>
</html>