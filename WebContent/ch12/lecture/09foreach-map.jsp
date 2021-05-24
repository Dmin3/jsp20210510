<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
Map<String, String> map = new HashMap<>();
map.put("java","spring");
map.put("css","bootstrap");
map.put("python","django");
map.put("c",".net");
map.put("js","react");

request.setAttribute("map", map);
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<ul>
	<c:forEach items="${map }" var="entry">
	<li> ${entry.key } : ${entry.value }</li>
	</c:forEach>
	</ul>
		
</div>
</body>
</html>