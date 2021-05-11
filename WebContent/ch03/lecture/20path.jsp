<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>context root(context path)</h1>
<p><%= request.getContextPath() %> <!-- 맨상위경로를 알려줌 -->
<h3>절대 경로</h3>

<h5>같은 경로</h5>
<a href="<%= request.getContextPath() %>/ch03/lecture/15form-method.jsp">15번 파일</a>

<h5>상위 경로</h5>
<a href = "<%= request.getContextPath() %>/ch03//17path.jsp">17파일</a> 

<h5>하위 경로</h5>
<a href = "/jsp-web/ch03/lecture/sub/18path.jsp">18파일</a>

<h6>viewHeader.jsp</h6>
<a href ="/jsp-web/ch03/textbook/viewHeader.jsp">viewHeader.jsp</a>

</body>
</html>