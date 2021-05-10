<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int sum = 0;
for(int i = 0; i <= 100; i++){
	sum += i;
}

%>
<p> 1부터 100까지의 합은

<%
// out.write(sum); char 문자로 변환 해서 출력하기때문에 값이 이상하게 나옴
out.print(sum);
%>
</p>
</body>
</html>