<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
pageContext.setAttribute("title", "writer");
%>
<jsp:useBean id="book1" class="ch08.Book" scope="page">
	<jsp:setProperty name="book1" property="title" value="JAVA"/>
	<jsp:setProperty name="book1" property="writer" value="kim"/>
 </jsp:useBean>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	book : ${book1 } <br> <%-- toString 결과가 나옴 --%>
	title : ${book1.title } <br> 
	writer : ${book1.writer } <br>
	<%-- none : %{book1.none} none 이라는 프로퍼티가 없기때문에 실행하면 페이지 오류 --%>
	
	<hr>
	<%-- 위에 결과와 같음 다른 방식으로도 같은 결과  --%>
	title : ${book1["title"] } <br>
	writer : ${book1["writer"] } <br>
	
	<hr>
	title : ${book1[title] }
		
</div>
</body>
</html>