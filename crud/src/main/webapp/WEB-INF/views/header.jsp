<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Header</title>
</head>
<body>
	<div id="header">
		<spring:message code="header_text" var="headerText" />
		<%-- <spring:message code="label_logout" var="labelLogout" />
		<spring:message code="label_welcome" var="labelWelcome" /> --%>
		<%-- <spring:url var="logoutUrl" value="/j_spring_security_logout" /> --%>

		<div id="appname">
			<h1>${headerText}</h1>
		</div>

		<%-- <div id="userinfo">
			<sec:authorize access="isAuthenticated()">${labelWelcome} 
            <sec:authentication property="principal.username" />
				<br />
				<a href="${logoutUrl}">${labelLogout}</a>
			</sec:authorize>
		</div> --%>

	</div>
</body>
</html>