<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
application.removeAttribute("Attr1");
pageContext.setAttribute("pageAttr1", "");
pageContext.setAttribute("pageAttr2", new int[]{});
pageContext.setAttribute("pageAttr3", new ArrayList());
pageContext.setAttribute("pageAttr4", new HashMap());
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>empty 연산자</h1>
	\${empty attr1 } null일때 : ${empty attr1 } <br> <%-- null 이면 true --%>
	\${empty pageAttr1 } 빈 스트링 일때 : ${empty pageAttr1 } <br>
	\${empty pageAttr2 } 길이가 0인 배열(x) : ${empty pageAttr2 } <br>
	\${empty pageAttr3 } 길이가 0인 리스트 : ${empty pageAttr3 } <br>
	\${empty pageAttr4 } 크기가 0인 리스트 : ${empty pageAttr4 } <br>
	<hr>
		
</div>
</body>
</html>