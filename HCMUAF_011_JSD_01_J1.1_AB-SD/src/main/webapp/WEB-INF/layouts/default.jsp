<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<spring:theme code="styleSheet" var="app_css" />
<spring:url value="/${app_css}" var="app_css_url" />
<link rel="stylesheet" type="text/css" media="screen"
	href="${app_css_url}" />

<!-- jQuery and jQuery UI -->
<spring:url value="/resources/scripts/jquery-1.7.1.js" var="jquery_url" />
<spring:url value="/resources/scripts/jquery-ui-1.8.16.custom.min.js"
	var="jquery_ui_url" />
<spring:url
	value="/resources/styles/custom-theme/jquery-ui-1.8.16.custom.css"
	var="jquery_ui_theme_css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="${jquery_ui_theme_css}" />
<script src="${jquery_url}" type="text/javascript">
	_$tag______
</script>
<script src="${jquery_ui_url}" type="text/javascript">
	<jsp:text/>
</script>

<!-- CKEditor -->
<spring:url value="/resources/ckeditor/ckeditor.js" var="ckeditor_url" />
<spring:url value="/resources/ckeditor/adapters/jquery.js"
	var="ckeditor_jquery_url" />
<script type="text/javascript" src="${ckeditor_url}">
	<jsp:text/>
</script>
<script type="text/javascript" src="${ckeditor_jquery_url}">
	<jsp:text/>
</script>

<!-- jqGrid -->
<spring:url value="/resources/jqgrid/css/ui.jqgrid.css" var="jqgrid_css" />
<spring:url value="/resources/jqgrid/js/i18n/grid.locale-en.js"
	var="jqgrid_locale_url" />
<spring:url value="/resources/jqgrid/js/jquery.jqGrid.min.js"
	var="jqgrid_url" />
<link rel="stylesheet" type="text/css" media="screen"
	href="${jqgrid_css}" />
<script type="text/javascript" src="${jqgrid_locale_url}">
	<jsp:text/>
</script>
<script type="text/javascript" src="${jqgrid_url}">
	<jsp:text/>
</script>

<!-- bootstrap -->
<spring:url value="/resources/bootstrap/css/bootstrap-responsive.css"
	var="responsive_css" />
<spring:url
	value="/resources/bootstrap/css/bootstrap-responsive.min.css"
	var="responsive_min_css" />
<spring:url value="/resources/bootstrap/css/bootstrap.css"
	var="bootstrap_css" />
<spring:url value="/resources/bootstrap/css/bootstrap.min.css"
	var="bootstrap_min_css" />
<spring:url value="/resources/bootstrap/js/bootstrap.js"
	var="bootstrap_url" />
<spring:url value="/resources/bootstrap/js/bootstrap.min.js"
	var="bootstrap_min_url" />
<link rel="stylesheet" type="text/css" media="screen"
	href="${responsive_css}" />
<link rel="stylesheet" type="text/css" media="screen"
	href="${responsive_min_css}" />
<link rel="stylesheet" type="text/css" media="screen"
	href="${bootstrap_css}" />
<link rel="stylesheet" type="text/css" media="screen"
	href="${bootstrap_min_css}" />
<script type="text/javascript" src="${bootstrap_url}">
	<jsp:text/>
</script>
<script type="text/javascript" src="${bootstrap_min_url}">
	<jsp:text/>
</script>


<!-- Get the user locale from the page context (it was set by Spring MVC's locale resolver) -->
<c:set var="userLocale">
	<c:set var="plocale">${pageContext.response.locale}</c:set>
	<c:out value="${fn:replace(plocale, '_', '-')}" default="en" />
</c:set>

<spring:message code="application_name" var="app_name"
	htmlEscape="false" />
<title><spring:message code="welcome_h3" arguments="${app_name}" /></title>
</head>

<body class="tundra spring">
	<div id="headerWrapper">
		<tiles:insertAttribute name="header" ignore="true" />
	</div>
	<div id="wrapper">
		<tiles:insertAttribute name="menu" ignore="true" />
		<div id="main">
			<tiles:insertAttribute name="body" />
			<tiles:insertAttribute name="footer" ignore="true" />
		</div>
	</div>
</body>
</body>
</html>