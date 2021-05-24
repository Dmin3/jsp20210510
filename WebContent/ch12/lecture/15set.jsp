<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% request.setCharacterEncoding("utf-8"); %>

<c:set var="attr1" value="value1" scope="page" />
<%-- 
	기본으로 scope는 page로 되었있음
<%
	pageContext.setAttribute("attr1", "value1");
%>
--%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	${attr1 } <br>
	${pageScope.attr1 }
		
</div>
</body>
</html>