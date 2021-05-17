<%@page import="java.text.SimpleDateFormat"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<% 
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-ddHH:mm:ss");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	세션 ID : <%= session.getId() %> <br>
	
	<%
	time.setTime(session.getCreationTime());
	%>
	세션생성시간 :<%= formatter.format(time) %>
	<%
	time.setTime(session.getLastAccessedTime());
	%>
	최근접속시간 : <%= formatter.format(time) %>
		
</div>
</body>
</html>