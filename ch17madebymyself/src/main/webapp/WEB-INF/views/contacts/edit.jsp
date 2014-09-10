<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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

		<spring:message code="label_contact_new" var="labelContactNew" />
		<spring:message code="label_contact_update" var="labelContactUpdate" />
		<spring:message code="label_contact_first_name"
			var="labelContactFirstName" />
		<spring:message code="label_contact_last_name"
			var="labelContactLastName" />
		<spring:message code="label_contact_birth_date"
			var="labelContactBirthDate" />
		<spring:message code="label_contact_description"
			var="labelContactDescription" />
		<spring:message code="label_contact_photo" var="labelContactPhoto" />

		<spring:eval
			expression="contact.id == null ? labelContactNew:labelContactUpdate"
			var="formTitle" />

		<script type="text/javascript">
			$(function() {
				$('#birthDate').datepicker({
					dateFormat : 'yy-mm-dd',
					changeYear : true
				});

				$("#contactDescription").ckeditor({
					toolbar : 'Basic',
					uiColor : '#CCCCCC'
				});
			});
		</script>

		<h1>${formTitle}</h1>

		<div id="contactUpdate">
			<form:form modelAttribute="contact" id="contactUpdateForm"
				method="post" enctype="multipart/form-data">

				<c:if test="${not empty message}">
					<div id="message" class="${message.type}">${message.message}</div>
				</c:if>

				<form:label path="firstName">
            ${labelContactFirstName}* 
        </form:label>
				<form:input path="firstName" />
				<div>
					<form:errors path="firstName" cssClass="error" />
				</div>
				<p />

				<form:label path="lastName">
            ${labelContactLastName}* 
        </form:label>
				<form:input path="lastName" />
				<div>
					<form:errors path="lastName" cssClass="error" />
				</div>
				<p />

				<form:label path="birthDate">
            ${labelContactBirthDate}
        </form:label>
				<form:input path="birthDate" id="birthDate" />
				<div>
					<form:errors path="birthDate" cssClass="error" />
				</div>
				<p />

				<form:label path="description">
            ${labelContactDescription}
        </form:label>
				<form:textarea cols="60" rows="8" path="description"
					id="contactDescription" />
				<div>
					<form:errors path="description" cssClass="error" />
				</div>
				<p />

				<label for="file"> ${labelContactPhoto} </label>
				<input name="file" type="file" />
				<p />

				<form:hidden path="version" />

				<button type="submit"
					class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only">
					<span class="ui-button-text">Save</span>
				</button>
				<button type="reset"
					class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only">
					<span class="ui-button-text">Reset</span>
				</button>

			</form:form>
		</div>

	</div>
</body>
</html>