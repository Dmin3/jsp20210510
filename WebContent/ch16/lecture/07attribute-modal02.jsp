<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1">
  	Launch demo modal1
	</button>
	
	<br>
	
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal2">
  	Launch demo modal2
	</button>


<my:modal02 id="exampleModal1" keyboard="false" />
<my:modal02 id="exampleModal2" keyboard="ture" />		
</div>
</body>
</html>