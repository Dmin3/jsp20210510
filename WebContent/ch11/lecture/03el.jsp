<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
pageContext.setAttribute("attr1", "pageVal1");
request.setAttribute("attr1", "reqVal");
session.setAttribute("attr1", "sesVal1");
application.setAttribute("attr1", "appVal1");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	${attr1 } <%-- page 영역부터 적용이 된다는거 --%>
		
</div>
</body>
</html>