<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<%
String type = request.getParameter("type");
if(type == null){
	return;
}
%>
<br>
<table width = "100%" border = "1" cellpadding="0" cellspacing="0">
<tr>
	<tb>타입</tb>
	<tb><b><%= type %></b></tb>
	</tr>
	<tr>
	<tb>특징</tb>
	<tb>
	<% if(type.equals("A")){ %>
		강한내구성.
		<%} else if(type.equals("B")){ %>
		뛰어난대처능력
		<%} %>
		</tb>
	</tr>
	</table>