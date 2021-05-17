<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page session="false" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
HttpSession session = request.getSession();
session.setAttribute("a", "b");
//session이 false일 경우 위 코드를 통해 session를 만들어 줄수있음
//자세한 내용은 다음에
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	
		
</div>
</body>
</html>