<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="15form-method2.jsp" method = "get"> <!-- method attibute를 사용해서 암호와 아이디를 가릴수있음 -->
	아이디 : <input type ="text" name ="id"> <br>
	암호 : <input type ="password" name ="pw"> <br>
	<input type = "submit" value ="Login">
</form>
</body>
</html>