<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 전환</title>
</head>
<body>
	<form action="08_response.jsp">
		<select name="site">
			<option value="naver">NAVER</option>
			<option value="daum">DAUM</option>
			<option value="google">GOOGLE</option>
		</select>
		<input type="submit" value="사이트 이동">
	</form>
</body>
</html>