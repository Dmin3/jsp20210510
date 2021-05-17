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
	<h1>jsp(servlet) 영역</h1>
	<p>
	page : 하나의 jsp(pageContext(객체) - PageContext(타입)) <br>
	request : 하나의 요청(request(객체) - HttpServletRequest(타입)) <br>
	session : 하나의 웹브라우저(session(객체) - HttpSession(타입)) <br>
	application : 하나의 웹 어플리케이션(application(객체) - ServletContext(타입)) <br>
	</p>
		
</div>
</body>
</html>