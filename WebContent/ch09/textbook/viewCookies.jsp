<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLDecoder" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>쿠키 목록</title>
</head>
<body>
<div class="container">
	쿠키 목록 <br>
	<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0){
		for(int i = 0; i <cookies.length; i++){
	
	%>
	<%=cookies[i].getName() %> =
	<%= URLDecoder.decode(cookies[i].getName(), "utf-8") %> <br>
	<%
		}
	} else {
	%>
	쿠키는 존재하지 않습니다.
	<%
	}
	%>
		
</div>
</body>
</html>