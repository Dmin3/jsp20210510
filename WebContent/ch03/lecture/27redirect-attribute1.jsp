<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%

	Calendar c = Calendar.getInstance();
	request.setAttribute("date", c); // null이 출력됌
	// 이유 : response.sendRedirect로 2번째 페이지 넘겼지만 "date"라는
	// 값은 존재하지 않음
	//String 정보가 아니고 노출 시키지 않고 싶을때
	
	
	response.sendRedirect("27redirect-attribute2.jsp");

%>