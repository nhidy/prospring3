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
		<spring:message code="label_org_list" var="labelOrgList" />
		<spring:message code="label_org_name" var="labelOrgName" />
		<spring:message code="label_head_office_add_line_1"
			var="labelHeadOfficeAddLine1" />
		<spring:message code="label_postcode" var="labelPostcode" />
		<spring:message code="label_contact" var="labelContact" />
		<spring:message code="label_is_active" var="labelIsActive" />
		<spring:message code="label_create" var="labelCreate" />
		<spring:message code="lable_include_in_active"
			var="lableIncludeInActive" />
		<spring:url value="/orgs/" var="showOrgUrl" />

		<script type="text/javascript">
			$(function() {
				$("#list").jqGrid(
						{
							url : '${showOrgUrl}/listgrid',
							datatype : 'json',
							mtype : 'GET',
							colNames : [ '${labelOrgName}',
									'${labelHeadOfficeAddLine1}',
									'${labelPostcode}', '${labelContact}',
									'${labelIsActive}' ],
							colModel : [ {
								name : 'orgName',
								index : 'orgName',
								width : 150
							}, {
								name : 'add1',
								index : 'add1',
								width : 100
							}, {
								name : 'postcode',
								index : 'postcode',
								width : 50
							}, {
								name : 'leadContact',
								index : 'leadContact',
								width : 100
							}, {
								name : 'isActive',
								index : 'isActive',
								width : 50
							} ],
							jsonReader : {
								root : "orgData",
								page : "currentPage",
								total : "totalPages",
								repeatitems : false,
								id : "orgId"
							},
							pager : '#pager',
							rowNum : 15,
							sortname : 'orgName',
							sortorder : 'asc',
							gridview : true,
							height : 350,
							width : 700,
							onSelectRow : function(orgId) {
								document.location.href = "${showOrgUrl}"
										+ orgId;
							}
						});
			});
		</script>

		<c:if test="${not empty message}">
			<div id="message" class="${message.type}">${message.message}</div>
		</c:if>

		<h2>${labelOrgList}</h2>

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