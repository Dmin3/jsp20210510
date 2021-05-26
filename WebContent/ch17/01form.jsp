<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<form action="${pageContext.request.contextPath }/Servlet05RequestParameter" method="get">
	아이디 : <input type="text" name="id" />
	<br>
	암호 : <input type="password" name="password" />
	<br>
	이메일 : <input type="email" name="email" />
	<br>
	<input type="submit" value="제출"/>
	
	</form>
		
</div>
</body>
</html>