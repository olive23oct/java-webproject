<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ǥ���� Expression</title>
</head>
<body>
	<h2>ǥ���� Expression</h2>
	<p>HTML ���� ����ؼ� Ŭ���̾�Ʈ�� ����</p>

	<hr>
	<h2>out.print ���� ����ؼ� Ŭ���̾�Ʈ�� ����(HTML)</h2>
	<h2>
		<%
			out.print("out.print�� ���");
		%>
	</h2>

	<hr>
	<p><%="ǥ����(Expression)�� ����ؼ� Ŭ���̾�Ʈ�� ����"%></p>

	<hr>
	<p>
		int num1, num2�� ���� ǥ������ ����� �հ� ���
		<%
		int num1 = 200;
		int num2 = 100;
		int sum = num1 + num2;
	%>
	
	<h2>��� �� ���</h2>
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