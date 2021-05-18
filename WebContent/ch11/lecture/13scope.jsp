<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
pageContext.setAttribute("pageAttr1", "pageVal1");
request.setAttribute("reqAttr1", "reqVal");

pageContext.setAttribute("comAttr1", "pageVal2");
request.setAttribute("comAttr1", "reqVal2");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
pageAttr1: ${pageAttr1 } <br>
reqAttr1: ${reqAttr1 } <br>
	
	<hr> 
comAttr1: ${comAttr1 } <br>
${requestScope.comAttr1 } <br>
<%-- request 객체안에 value를 빼고싶을때(page랑 name이 겹치는중) --%>
		
</div>
</body>
</html>