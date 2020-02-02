<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>표현식 Expression</title>
</head>
<body>
	<h2>표현식 Expression</h2>
	<p>HTML 문을 사용해서 클라이언트에 전달</p>

	<hr>
	<h2>out.print 문을 사용해서 클라이언트에 전달(HTML)</h2>
	<h2>
		<%
			out.print("out.print문 사용");
		%>
	</h2>

	<hr>
	<p><%="표현식(Expression)을 사용해서 클라이언트에 전달"%></p>

	<hr>
	<p>
		int num1, num2의 값을 표현식을 사용해 합계 출력
		<%
		int num1 = 200;
		int num2 = 100;
		int sum = num1 + num2;
	%>
	
	<h2>계산 후 출력</h2>
	<%=num1%>
	+
	<%=num2%>
	=
	<%=sum%><br>
	<%=num1 + " + " + num2 + " \n=     " + sum%><br>
	<%=num1 + " + " + num2 + " <br>=     " + sum%><br> 200 + 100 = 300
	<%
		System.out.println(num1 + " + " + num2 + " \n=     " + sum);
	%>

</body>
</html>