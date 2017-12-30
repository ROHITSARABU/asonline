<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>As online shopping - ${title}</title>

<script>
	window.menu = "${title}";

	window.contextRoot = '${contextRoot}'
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap journal Theme -->
<!-- <link href="${css}/bootstrap-journal-theme.css" rel="stylesheet">  -->

<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">

		<!-- my code start -->
		<!-- Navigation -->

		<%@include file="./shared/navbar.jsp"%>





		<!-- Page Content -->

		<div class="content">

			<!-- loading the home content -->
			<c:if test="${userClickHome==true}">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- load only when user clicks about -->
			<c:if test="${userClickAbout==true}">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- load only when user clicks contact -->
			<c:if test="${userClickContact==true}">
				<%@include file="contact.jsp"%>
			</c:if>
			
			
			<!-- load only when user clicks AllProducts or CategoryProducts -->
			<c:if test="${userClickAllProducts==true or userClickCategoryProducts==true}">
				<%@include file="listProducts.jsp"%>
			</c:if>

 			<!-- Load only when click Show Product --> 
 			<c:if test="${userClickShowProduct == true }">
			<%@include file="singleProduct.jsp"%> 
 			</c:if> 


<!-- 			<!-- Load only when click Manage Product --> -->
<%-- 			<c:if test="${userClickManageProducts == true }"> --%>
<%-- 				<%@include file="manageProducts.jsp"%> --%>
<%-- 			</c:if> --%>
			



		</div>

		<!-- footer comes here -->

		<%@include file="./shared/footer.jsp"%>

		<!-- jquery -->
		<script src="${js}/jquery.js"></script>

		<!-- jquery validator -->
		<script src="${js}/jquery.validate.js"></script>

		<!-- Bootstrap core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>

		<!-- datatable plugin-->
		<script src="${js}/jquery.dataTables.js"></script>

		<!-- datatable bootstrap script-->
		<script src="${js}/dataTables.bootstrap.js"></script>

		<!-- Bootbox -->
		<script src="${js}/bootbox.min.js"></script>


		<!-- self coded javascript -->
		<script src="${js}/myapp.js"></script>
	</div>
</body>

</html>
