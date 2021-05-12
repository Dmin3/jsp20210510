<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Info</title>
</head>
<body>
	<div class="container">
		<table class ="table table-bordered">
			<tr>
				<tb>제품번호</tb>
				<tb>XXXX</tb>
			</tr>
			<tr>
				<tb>가격</tb>
				<tb>10,000원</tb>
		</table>
		<jsp:include page="infosub.jsp">
			<jsp:param value="A" name="type" />
		</jsp:include>

	</div>
</body>
</html>