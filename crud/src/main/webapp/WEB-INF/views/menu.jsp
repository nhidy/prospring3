<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%-- <%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>menu</title>
</head>
<body>
	<div id="menu">
		<spring:message code="menu_header_text" var="menuHeaderText" />
		<spring:message code="menu_add_contact" var="menuAddContact" />
		<spring:url value="/contacts?form" var="addContactUrl" />

		<%-- <spring:message code="label_login" var="labelLogin" />
		<spring:url var="loginUrl" value="/j_spring_security_check" /> --%>

		<h3>${menuHeaderText}</h3>
		<%-- <sec:authorize access="hasRole('ROLE_USER')"> --%>
			<a href="${addContactUrl}"><h3>${menuAddContact}</h3></a>
		<%-- </sec:authorize> --%>

		<%-- <sec:authorize access="isAnonymous()">
			<div id="login">
				<form name="loginForm" action="${loginUrl}" method="post">
					<table style="width: 20px;">
						<caption align="left">${labelLogin}:</caption>
						<tr>
							<td>User Name:</td>
							<td><input type="text" name="j_username" /></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><input type="password" name="j_password" /></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input name="submit"
								type="submit" value="${labelLogin}" /></td>
						</tr>
					</table>
				</form>
			</div>
		</sec:authorize> --%>

	</div>
</body>
</html>