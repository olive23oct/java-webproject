<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1.전달받은 파라미터 값 추출
	//이름, 국어, 영어, 수학
	String name = request.getParameter("name");
	String skor = request.getParameter("kor");
	int kor = Integer.parseInt(skor);
	
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	
	//2. 계산처리(tot, avg)
	int tot = kor + eng + math;
	double avg = tot * 100 / 3 / 100.0;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리결과</title>
<style>
	table { border-collapse: collapse; }
	th, td { border: 1px solid black; }
</style>
</head>
<body>
	<h1>학생성적 처리결과</h1>
	<h2>p태그로 출력</h2>
	<p>이름: <%=name %></p>
	<p>국어: <%=kor %></p>
	<p>영어: <%=eng %></p>
	<p>수학: <%=math %></p>
	<p>---------</p>
	<p>총점: <%=tot %></p>
	<p>평균: <%=avg %></p>
	
	<hr>
	<h2>테이블 형태 출력</h2>
	<table>
		<tr>
			<th>이름</th>
			<td><%=name %></td>
		</tr>
		<tr>
			<th>국어</th>
			<td><%=kor %></td>
		</tr>
		<tr>
			<th>영어</th>
			<td><%=eng %></td>
		</tr>
		<tr>
			<th>수학</th>
			<td><%=math %></td>
		</tr>
		<tr>
			<th>총점</th>
			<td><%=tot %></td>
		</tr>
		<tr>
			<th>평균</th>
			<td><%=avg %></td>
		</tr>
	</table>
	
	
	
	<br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br>
</body>
</html>











