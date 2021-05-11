<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>상대 경로</h3>

<h5>같은 경로</h5>
<a href="15form-method.jsp">15번 파일</a>

<h5>상위 경로</h5>
<a href = "../17path.jsp">17파일</a> <!-- ../ 붙어서 상위 경로 라고 표시해주는거다 -->

<h5>하위 경로</h5>
<a href = "sub/18path.jsp">18파일</a>

<h6>viewHeader.jsp</h6>
<a href ="../textbook/viewHeader">viewHeader.jsp</a>
</body>
</html>