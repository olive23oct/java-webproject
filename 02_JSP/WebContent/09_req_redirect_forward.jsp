<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Redirect - forward</title>
</head>
<body>
	<form>
		아이디: <input type="text" name="id"><br>
		패스워드: <input type="text" name="pwd"><br>
		<input type="button" value="리다이렉트(redirect)"
			onclick="send_redirect(this.form)">
		<input type="button" value="포워딩(forward)"
			onclick="send_forward(this.form)">
	</form>
	<script>
		// redirect
		function send_redirect(frm) {
			frm.action = "09_response_redirect.jsp";
			frm.submit();
		}
		
		// forward
		function send_forward(frm){
			frm.action = "09_response_forward.jsp";
			frm.submit();
		}
		
	</script>
</body>
</html>