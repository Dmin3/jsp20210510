<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
Map<String, String> map = new HashMap<>();
map.put("java", "spring");
map.put("css", "bootstrap");
map.put("js", "jqurey");
map.put("python", "django");
map.put("h-t-m-l", "html");
map.put("hello world!", "hi");

pageContext.setAttribute("map", map);
pageContext.setAttribute("python", "js");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	java : ${map.java } <br> <%-- java 키를 갖고 있는 value가 꺼내짐 --%>
	css : ${map.css } <br>
	js : ${map["js"] } <br>
	python : ${map[python] } <br>
	
	<hr>
	h-t-m-l : ${map.h-t-m-l } <br> <%-- 이건 안됌 --%>
	h-t-m-l : ${map["h-t-m-l"] } <br> <%-- 연산기호는 사용할수 없어 무조건 이러식으로 써야됌 --%>
	
	hello world! : ${map["hello world!"] } <br>
	
		
</div>
</body>
</html>