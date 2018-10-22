<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"  %>

<spring:url var="css" value="/resources/css"/>
<spring:url var="js" value="/resources/js"/>
<spring:url var="images" value="/resources/images"/>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Shopping - ${title}</title>
    
    <script>
    	window.menu = '${title}';
    </script>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.css" rel="stylesheet">

 <!-- Bootstrap Journal Theme CSS -->
    <link href="${css}/bootstrap-cerulean-theme.css" rel="stylesheet">
    
    <!-- Add custom CSS here -->
    <link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">
		<!-- NAVIGATION -->
		<%@ include file="./shared/navbar.jsp" %>
		
		<!-- PAGE CONTENT -->
		<div class="content">
			
			<!-- Load Homepage -->
			<c:if test="${userClickHome == true }">
		    <%@include file="home.jsp" %>
		    </c:if>
		    
		    <!-- Load About Page -->
		    <c:if test="${userClickAbout == true }">
		    <%@include file="about.jsp" %>
		    </c:if>
		    
		    <!-- Load Contact Page -->
		    <c:if test="${userClickContact == true }">
			
		    <%@include file="contact.jsp" %>
		    </c:if>
		</div>
		
	
		<!-- FOOTER -->
		<%@ include file="./shared/footer.jsp" %>
	  
	
	    <!-- JavaScript -->
	    <script src="${js}/jquery-1.10.2.js"></script>
	    
	    <script src="${js}/bootstrap.js"></script>
	    
	    <!-- Application JavaScript -->
	    <script src="${js}/myapp.js"></script>
	</div>
	

</body>

</html>
