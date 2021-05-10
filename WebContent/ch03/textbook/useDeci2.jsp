<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    public int add(int a, int b){
    	int c = a + b;
    	return c;
    }
    
    public int subtract(int a, int b){
    	int c = a - b;
    	return c;
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿에서 선언부 사용하기</title>
</head>
<body>
<%
int valuel = 3;
int valuel2 = 9;

int addResult = add(valuel, valuel2);
int subtractResult = subtract(valuel, valuel2);
%>

<%= valuel %> + <%= valuel2 %> = <%= addResult %>
<br>
<%= valuel %> - <%= valuel2 %> = <%= subtractResult %>
</body>
</html>