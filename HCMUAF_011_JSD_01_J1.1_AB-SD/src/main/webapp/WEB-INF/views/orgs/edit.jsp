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
		<spring:message code="label_org_details" var="labelOrgDetails" />
		<!-- Details 1 -->
		<spring:message code="label_org_name" var="labelOrgName" />
		<spring:message code="label_org_short_desc" var="labelOrgShortDesc" />
		<spring:message code="label_lead_contact" var="labelLeadContact" />
		<spring:message code="label_add_1" var="labelAdd1" />
		<spring:message code="label_add_2" var="labelAdd2" />
		<spring:message code="label_add_3" var="labelAdd3" />
		<spring:message code="label_postcode" var="labelPostcode" />
		<spring:message code="label_city_town" var="labelCityTown" />
		<spring:message code="label_county" var="labelCounty" />
		<spring:message code="label_nation_country" var="labelNationCountry" />
		<spring:message code="label_pre_org" var="labelPreOrg" />
		<spring:message code="label_exp_of_int" var="labelExpOfInt" />
		<spring:message code="label_type_of_business"
			var="labelTypeOfBusiness" />
		<spring:message code="label_sic_code" var="labelSicCode" />
		<spring:message code="label_org_full_desc" var="labelOrgFullDesc" />
		<spring:message code="label_phone_num" var="labelPhoneNum" />
		<spring:message code="label_fax" var="labelFax" />
		<spring:message code="label_email" var="labelEmail" />
		<spring:message code="label_web_add" var="labelWebAdd" />
		<spring:message code="label_charity_num" var="labelCharityNum" />
		<spring:message code="label_company_num" var="labelCompanyNum" />

		<!-- Details 2 -->
		<%-- <spring:message code="label_org_spes" var="labelOrgSpes" />
		<spring:message code="label_service_dis" var="labelServiceDis" />
		<spring:message code="label_service_bar" var="labelServiceBar" />
		<spring:message code="label_service_ben" var="labelServiceBen" />
		<spring:message code="label_service_per" var="labelServicePer" />
		<spring:message code="label_service_eth" var="labelServiceEth" />
		<spring:message code="label_acc" var="labelAcc" /> --%>

		<!-- Details 3 -->
		<%-- <spring:message code="label_eio_prog" var="labelEioProg" />
		<spring:message code="label_eio_service" var="labelEioService" /> --%>
		<spring:message code="label_save" var="labelSave" />
		<spring:message code="label_back" var="labelBack" />
		<script type="text/javascript">
			$(document).ready(function() {
				$('#myTab a').click(function(e) {
					e.preventDefault();
					$(this).tab('show');
				})
			});
		</script>
		<h1>${labelOrgDetails}</h1>


		<!-- Tab -->
		<form:form modelAttribute="org" id="orgUpdateForm" method="post"
			enctype="multipart/form-data">
			<button type="submit"
				class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only">
				<span class="ui-button-text">${labelSave}</span>
			</button>
			<button type="reset"
				class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only">
				<span class="ui-button-text">${labelBack}</span>
			</button>
			<ul class="nav nav-tabs" id="myTab">
				<li class="active"><a href="#details1">Details 1</a></li>
				<li><a href="#details2">Details 2</a></li>
				<li><a href="#details3">Details 3</a></li>
				<!-- <li><a href="#settings">Settings</a></li> -->
			</ul>

			<div class="tab-content">
				<div class="tab-pane active" id="details1">
					<TABLE>
						<TR>
							<!-- colum 1 -->
							<TD>
								<TABLE>
									<TR>
										<TD><form:label path="orgName">
           									${labelOrgName}* 
        								</form:label></TD>
										<TD><form:input path="orgName" /></TD>
									</TR>
									<TR>
										<TD><form:label path="orgShortDesc">
           									${labelOrgShortDesc}* 
        								</form:label></TD>
										<TD><form:input path="orgShortDesc" /></TD>
									</TR>
									<TR>
										<TD><form:label path="leadContact">
           									${labelLeadContact} 
        								</form:label></TD>
										<TD><form:input path="leadContact" /></TD>
									</TR>
									<TR>
										<TD><form:label path="add1">
           									${labelAdd1}* 
        								</form:label></TD>
										<TD><form:input path="add1" /></TD>
									</TR>
									<TR>
										<TD><form:label path="add2">
           									${labelAdd2} 
        								</form:label></TD>
										<TD><form:input path="add2" /></TD>
									</TR>
									<TR>
										<TD><form:label path="add3">
           									${labelAdd3} 
        								</form:label></TD>
										<TD><form:input path="add3" /></TD>
									</TR>
									<TR>
										<TD><form:label path="postcode">
           									${labelPostcode}* 
        								</form:label></TD>
										<TD><form:input path="postcode" /></TD>
									</TR>
									<TR>
										<TD><form:label path="cityTown">
           									${labelCityTown} 
        								</form:label></TD>
										<TD><form:input path="cityTown" /></TD>
									</TR>
									<TR>
										<TD><form:label path="county">
           									${labelCounty} 
        								</form:label></TD>
										<TD><form:input path="county" /></TD>
									</TR>
									<TR>
										<TD><form:label path="nationCountry">
           									${labelNationCountry}
        								</form:label></TD>
										<TD><form:input path="nationCountry" /></TD>
									</TR>
								</TABLE>
							</TD>
							<!-- colum 2 -->
							<TD>
								<TABLE>
									<TR>
										<TD><form:label path="preferredOrg">
           									${labelPreOrg} 
        								</form:label></TD>
										<TD><form:checkbox path="preferredOrg" /></TD>
									</TR>
									<TR>
										<TD><form:label path="expOfInt">
           									${labelExpOfInt} 
        								</form:label></TD>
										<TD><form:checkbox path="expOfInt" /></TD>
									</TR>
									<TR>
										<TD><form:label path="typeOfBusiness">
           									${labelTypeOfBusiness}* 
        								</form:label></TD>
										<TD><form:input path="typeOfBusiness" /></TD>
									</TR>
									<TR>
										<TD><form:label path="sicCode">
           									${labelSicCode} 
        								</form:label></TD>
										<TD><form:input path="sicCode" /></TD>
									</TR>
									<TR>
										<TD><form:label path="orgFullDesc">
           									${labelOrgFullDesc}
        								</form:label></TD>
										<TD><form:textarea path="orgFullDesc" /></TD>
									</TR>
									<TR>
										<TD><form:label path="phoneNum">
           									${labelPhoneNum}* 
        								</form:label></TD>
										<TD><form:input path="phoneNum" /></TD>
									</TR>
									<TR>
										<TD><form:label path="fax">
           									${labelFax} 
        								</form:label></TD>
										<TD><form:input path="fax" /></TD>
									</TR>
									<TR>
										<TD><form:label path="email">
           									${labelEmail} 
        								</form:label></TD>
										<TD><form:input path="email" /></TD>
									</TR>
									<TR>
										<TD><form:label path="webAdd">
           									${labelWebAdd} 
        								</form:label></TD>
										<TD><form:input path="webAdd" /></TD>
									</TR>
									<TR>
										<TD><form:label path="charityNum">
           									${labelCharityNum}
        								</form:label></TD>
										<TD><form:input path="charityNum" /></TD>
									</TR>
									<TR>
										<TD><form:label path="companyNum">
           									${labelCompanyNum}
        								</form:label></TD>
										<TD><form:input path="companyNum" /></TD>
									</TR>
								</TABLE>
							</TD>
						</TR>
					</TABLE>
				</div>
				<div class="tab-pane" id="details2">
					<TABLE>
						<TR>
							<TD>
								<%-- <TABLE>
									<TR>
										<TD><form:label path="orgSpecicalism">
           									${labelOrgSpes}
        								</form:label></TD>
										<TD><form:input path="orgSpecicalism" /></TD>
									</TR>
									<TR>
										<TD><form:label path="serviceDisablities">
           									${labelServiceDis}
        								</form:label></TD>
										<TD><form:input path="serviceDisablities" /></TD>
									</TR>
									<TR>
										<TD><form:label path="serviceBarriers">
           									${labelServiceBar}
        								</form:label></TD>
										<TD><form:input path="serviceBarriers" /></TD>
									</TR>
									<TR>
										<TD><form:label path="serviceBenefits">
           									${labelServiceBen}
        								</form:label></TD>
										<TD><form:input path="serviceBenefits" /></TD>
									</TR>
								</TABLE> --%>
							</TD>
							<TD>
								<%-- <TABLE>
									<TR>
										<TD><form:label path="servicePersonal">
           									${labelServicePer}
        								</form:label></TD>
										<TD><form:input path="servicePersonal" /></TD>
									</TR>
									<TR>
										<TD><form:label path="serviceEthnicity">
           									${labelServiceEth}
        								</form:label></TD>
										<TD><form:input path="serviceEthnicity" /></TD>
									</TR>
									<TR>
										<TD><form:label path="accreditation">
           									${labelAcc}
        								</form:label></TD>
										<TD><form:input path="accreditation" /></TD>
									</TR>
								</TABLE> --%>
							</TD>
						</TR>
					</TABLE>
				</div>
				<div class="tab-pane" id="details3">...</div>
				<!--<div class="tab-pane" id="settings">...</div> -->
			</div>
			<div>
				<form:errors path="orgName" cssClass="error" />
				<form:errors path="orgShortDesc" cssClass="error" />
				<form:errors path="add1" cssClass="error" />
				<form:errors path="postcode" cssClass="error" />
				<form:errors path="typeOfBusiness" cssClass="error" />
				<form:errors path="phoneNum" cssClass="error" />
			</div>
			<c:if test="${not empty message}">
				<div id="message" class="${message.type}">${message.message}</div>
			</c:if>
		</form:form>
	</div>
</body>
</html>