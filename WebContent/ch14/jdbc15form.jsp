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
	<h1>Add Customer</h1>
	
	<form action="${pageContext.request.contextPath }/JDBC15InsertServlet" method="post">
		last Name : <input type="text" name="lastName" /> <br>
		first Name : <input type="text" name="firstName" /> <br>
		notes : <input type="text" name="notes" /> <br>
		
		<input type="submit" />
	</form>
		
</div>
</body>
</html>