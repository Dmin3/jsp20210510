<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<!-- Button trigger modal -->
		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#exampleModal1">팝업 창</button>
			
		<!-- Button trigger modal -->
		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#exampleModal2">팝업 창2</button>
			
			
			<!-- Button trigger modal -->
		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#exampleModal3">팝업 창3</button>
	</div>
	
	<my:modal01 id="exampleModal1" /> <%-- 어떤 layout 넣을 필요 없음 --%>
	<my:modal01 id="exampleModal2"/>
	<my:modal01 id="exampleModal3"/>
</body>
</html>