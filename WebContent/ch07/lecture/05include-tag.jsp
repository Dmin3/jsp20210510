<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<%
String danStr = request.getParameter("dan"); // dan 값을 받아옴
int dan = Integer.parseInt(danStr);  // 문자타입으로 int 타입을 변환

for(int i = 1; i <= 9; i++){
	out.print(dan + "x" + i + "=" + (dan * i));
	out.print("<br>");
}
%>