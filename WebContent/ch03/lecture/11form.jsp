<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>form</h1>
<form action=""> <!-- form 형태로 묶어주기 -->
<input name = "q" type="text"> 
<br>
<input name = "age" type="text">
<br>
<input type="submit" value="send"> <!-- 전송 버튼 만들고 버튼안에 이름 바꾸기-->
</form>

<hr>

<p><%= request.getParameter("q") %> </p>
<p><%= request.getParameter("age") %>

</body>
</html>