<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<%-- <jsp:directive.page contentType="text/html;charset=UTF-8" />
		<jsp:output omit-xml-declaration="yes" /> --%>

		<spring:message code="label_contact_info" var="labelContactInfo" />
		<spring:message code="label_contact_first_name"
			var="labelContactFirstName" />
		<spring:message code="label_contact_last_name"
			var="labelContactLastName" />
		<spring:message code="label_contact_birth_date"
			var="labelContactBirthDate" />
		<spring:message code="label_contact_description"
			var="labelContactDescription" />
		<spring:message code="label_contact_update" var="labelContactUpdate" />
		<spring:message code="date_format_pattern" var="dateFormatPattern" />

		<spring:message code="label_contact_photo" var="labelContactPhoto" />

		<spring:url value="/contacts" var="editContactUrl" />
		<spring:url value="/contacts/photo" var="contactPhotoUrl" />

		<h1>${labelContactInfo}</h1>

		<div id="contactInfo">

			<c:if test="${not empty message}">
				<div id="message" class="${message.type}">${message.message}</div>
			</c:if>

			<table>
				<tr>
					<td>${labelContactFirstName}</td>
					<td>${contact.firstName}</td>
				</tr>
				<tr>
					<td>${labelContactLastName}</td>
					<td>${contact.lastName}</td>
				</tr>
				<tr>
					<td>${labelContactBirthDate}</td>
					<td><joda:format value="${contact.birthDate}"
							pattern="${dateFormatPattern}" /></td>
				</tr>
				<tr>
					<td>${labelContactDescription}</td>
					<td>${contact.description}</td>
				</tr>
				<tr>
					<td>${labelContactPhoto}</td>
					<td><img style="width: 200px; height: 200px;"
						src="${contactPhotoUrl}/${contact.id}"></img></td>
				</tr>
			</table>

			<a href="${editContactUrl}/${contact.id}?form">${labelContactUpdate}</a>

		</div>

	</div>
</body>
</html>