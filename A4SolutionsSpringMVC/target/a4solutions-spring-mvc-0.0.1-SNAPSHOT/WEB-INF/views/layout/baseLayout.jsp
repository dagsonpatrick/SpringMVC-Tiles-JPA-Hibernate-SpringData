<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS"></spring:url>
<spring:url value="/resources/css/sticky-footer-navbar.css" var="footerCSS"></spring:url>

<spring:url value="/resources/js/jquery.min.js" var="jqueryJS"></spring:url>
<spring:url value="/resources/js/popper.min.js" var="popperJS"></spring:url>
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS"></spring:url>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title><tiles:insertAttribute name="title" ignore="true"></tiles:insertAttribute></title>

<link href="${bootstrapCSS}" rel="stylesheet" />
<link href="${footerCSS}" rel="stylesheet" />

<script type="text/javascript" src="${jqueryJS}"></script>
<script type="text/javascript" src="${popperJS}"></script>
<script type="text/javascript" src="${bootstrapJS}"></script>

</head>
<body>
	<div style="width: 100%">
		<tiles:insertAttribute name="header" ignore="false"></tiles:insertAttribute>
	</div>
	<div style="width: 100%">
		<tiles:insertAttribute name="body" ignore="false"></tiles:insertAttribute>
	</div>
	<div style="width: 100%">
		<tiles:insertAttribute name="footer" ignore="false"></tiles:insertAttribute>
	</div>
</body>
</html>