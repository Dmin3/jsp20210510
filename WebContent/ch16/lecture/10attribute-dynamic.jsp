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
	<my:dynamic req="abc" attr1="value1" attr2="value2" attr3="value3" />
		
</div>
</body>
</html>