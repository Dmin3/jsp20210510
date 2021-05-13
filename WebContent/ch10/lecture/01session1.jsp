<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<%-- r1과 r2 객체있다고 친다면 서로 공유가 안되있긴때문에
		기본객체 session라는 객체를 이용하여 서로 다른 객체를 공유 시켜줌 --%>
		<h1>session1</h1>
		
		<%
		request.setAttribute("reqattr1", "reqatr1");
		
		session.setAttribute("myattr1", "myval1");
		%>
		
</div>
</body>
</html>