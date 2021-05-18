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
	pageContext : ${pageContext }
	<br>
	request : ${pageContext.request }
	<br>
	session : ${pageContext.session }
	<br>
	<%--기본 객체를 쓰고 싶다면 pageContext를 통해 쓸수있다. --%>
	contextPath: ${pageContext.request.contextPath } <br>
	
	appilcation : ${pageContext.servletContext }
		
</div>
</body>
</html>