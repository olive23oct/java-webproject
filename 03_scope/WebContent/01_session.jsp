<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 범위</title>
<script type="text/javascript">
	// 세션에 속성값 설정
	function sessionSet() {
		 location.href = "01_sessionSet.jsp?name=test&age=30";
	}
	// 세션의 속성값 삭제
	function sessionRemove() {
		location.href = "01_sessionRemove.jsp";
	}
	// 세션 초기화
	function sessionInit() {
		location.href = "01_sessionInvalidate.jsp";
	}
</script>
</head>
<body>
<%
	String name = null;
	String age = null;
	System.out.println("session ID: " + session.getId()
						+ ", new: " + session.isNew());
	System.out.println("session attr_name: " + session.getAttribute("attr_name"));
	System.out.println("session attr_age: " + session.getAttribute("attr_age"));
	
	if (session.getAttribute("attr_name") != null){
		name = (String)session.getAttribute("attr_name")
				+ "-세션 속성 읽은 값";
	} else {
		name = "세션에 속성 없음";
	}
	
	if (session.getAttribute("attr_age") != null) {
		age = (String)session.getAttribute("attr_age")
				+ "-세션 속성 읽은 값";
	} else {
		age = "세션에 속성 없음";
	}
	//=======================================
	String req_name = (String)request.getAttribute("req_name");
	String req_age = (String)request.getAttribute("req_age");
%>
	<h1>Session test</h1>
	<input type="button" value="세션 속성에 저장"
		onclick="sessionSet()">
	<input type="button" value="세션 속성 삭제"
		onclick="sessionRemove()">
	<input type="button" value="세션 초기화"
		onclick="sessionInit()">
	<hr>
	<h1>Session scope</h1>		
	<h2>ID: <%=session.getId() %></h2>	
	<h2>name: <%=name %></h2>
	<h2>age: <%=age %></h2>
	<hr><hr>
	
	<h1>request scope</h1>
	<h2>name: <%=req_name %></h2>
	<h2>age: <%=req_age %></h2>
</body>
</html>