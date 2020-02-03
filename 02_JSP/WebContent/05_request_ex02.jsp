<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script>
	function send_go() {
		//alert("send_go() 시작");
		//값체크(회원가입 데이타 확인)
		if (document.frm.name.value == "") {
			alert("이름을 입력하세요");
			document.frm.name.focus();
			return false;
		}
		if (document.frm.id.value == "") {
			alert("아이디를 입력하세요");
			document.frm.id.focus();
			return false;
		}
		
		var vForm = document.frm;
		if (vForm.pwd.value == "") {
			alert("암호를 입력하세요");
			vForm.pwd.focus();
			return false;
		}
		if (vForm.pwd2.value == "") {
			alert("확인암호를 입력하세요");
			vForm.pwd2.focus();
			return false;
		}
		//암호가 같은지 체크
		if (vForm.pwd.value != vForm.pwd2.value) {
			alert("암호가 일치하지 않습니다.\n다시 입력하세요");
			vForm.pwd.value = "";
			vForm.pwd2.value = "";
			vForm.pwd.focus();
			return false;
		}
		alert("모든 데이타 확인완료!! 서버로 전달처리합니다.");
		vForm.action = "ex06_resp.jsp";
		vForm.submit();

	}
</script>
</head>
<body>
	<h1>회원가입</h1>
	<form name="frm">
	<fieldset>
		<legend>회원가입</legend>
		<p>이름: <input type="text" name="name"></p>
		<p>아이디: <input type="text" name="id"></p>
		<p>패스워드: <input type="password" name="pwd"></p>
		<p>패스워드확인: <input type="password" name="pwd2"></p>
		<p>이메일: <input type="text" name="email"></p>
		<p>취미:
			<input type="checkbox" name="hobby" value="운동">운동
			<input type="checkbox" name="hobby" value="게임">게임
			<input type="checkbox" name="hobby" value="영화">영화
			<input type="checkbox" name="hobby" value="독서">독서
		</p>
		
		<input type="button" value="회원가입" onclick="send_go()">
		<input type="reset" value="초기화">
	</fieldset>
	
	</form>
</body>
</html>






















