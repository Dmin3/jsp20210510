<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<% response.sendRedirect("26redirect-parameter2.jsp?name=donald&age=30");
//? 하고 뒤에다가 파라미터 값을 넣어줘서 parameter2에서 사용가능
%>