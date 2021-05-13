<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
session.setAttribute("MEMBERID", "madvirus");
session.setAttribute("NAME", "최범균");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>세션에 정보저장</title>
</head>
<body>
<div class="container">
	세션에 정보를 저장하였습니다
		
</div>
</body>
</html>