<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>footer</title>
</head>
<body>
	<div id="footer">
		<%-- <jsp:directive.page contentType="text/html;charset=UTF-8" />
		<jsp:output omit-xml-declaration="yes" /> --%>

		<spring:message code="home_text" var="homeText" />
		<spring:message code="label_en_US" var="labelEnUs" />
		<spring:message code="label_zh_HK" var="labelZhHk" />
		<spring:url value="/contacts" var="homeUrl" />

		<a href="${homeUrl}">${homeText}</a> | <a href="${homeUrl}?lang=en_US">${labelEnUs}</a>
		| <a href="${homeUrl}?lang=zh_HK">${labelZhHk}</a>

	</div>
</body>
</html>