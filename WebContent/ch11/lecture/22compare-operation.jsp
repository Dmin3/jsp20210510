<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
pageContext.setAttribute("num1", 5);
pageContext.setAttribute("num2", 3);

%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<%-- 비교도 가능 --%>
	\${num1 == num2 } : ${num1 == num2 } <br>
	\${num1 != num2 } : ${num1 != num2 } <br>
	\${num1 > num2 } : ${num1 > num2 } <br>
	\${num1 < num2 } : ${num1 < num2 } <br>
		
</div>
</body>
</html>