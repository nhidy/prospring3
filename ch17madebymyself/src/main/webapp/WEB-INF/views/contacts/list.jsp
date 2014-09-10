<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list</title>
</head>
<body>
	<div>
		<%-- <jsp:directive.page contentType="text/html;charset=UTF-8" />
		<jsp:output omit-xml-declaration="yes" /> --%>

		<spring:message code="label_contact_list" var="labelContactList" />
		<spring:message code="label_contact_first_name"
			var="labelContactFirstName" />
		<spring:message code="label_contact_last_name"
			var="labelContactLastName" />
		<spring:message code="label_contact_birth_date"
			var="labelContactBirthDate" />
		<spring:url value="/contacts/" var="showContactUrl" />

		<script type="text/javascript">
			$(function() {
				$("#list").jqGrid(
						{
							url : '${showContactUrl}/listgrid',
							datatype : 'json',
							mtype : 'GET',
							colNames : [ '${labelContactFirstName}',
									'${labelContactLastName}',
									'${labelContactBirthDate}' ],
							colModel : [ {
								name : 'firstName',
								index : 'firstName',
								width : 150
							}, {
								name : 'lastName',
								index : 'lastName',
								width : 100
							}, {
								name : 'birthDateString',
								index : 'birthDate',
								width : 100
							} ],
							jsonReader : {
								root : "contactData",
								page : "currentPage",
								total : "totalPages",
								records : "totalRecords",
								repeatitems : false,
								id : "id"
							},
							pager : '#pager',
							rowNum : 10,
							rowList : [ 10, 20, 30 ],
							sortname : 'firstName',
							sortorder : 'asc',
							viewrecords : true,
							gridview : true,
							height : 250,
							width : 500,
							caption : '${labelContactList}',
							onSelectRow : function(id) {
								document.location.href = "${showContactUrl}/"
										+ id;
							}
						});
			});
		</script>

		<c:if test="${not empty message}">
			<div id="message" class="${message.type}">${message.message}</div>
		</c:if>

		<h2>${labelContactList}</h2>

		<div>
			<table id="list">
				<tr>
					<td />
				</tr>
			</table>
		</div>
		<div id="pager"></div>
	</div>
</body>
</html>