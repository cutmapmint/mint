<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" >
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gram Tarang </title>
    
    <%-- <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/gfavicon.ico" type="image/x-icon"> --%>
    
     <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>
    
    <!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" />
    <!-- Font Awesome -->
    <link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet">
    <!-- NProgress -->
    <link href="<c:url value="/resources/css/nprogress.css"/>" rel="stylesheet">
     <!-- iCheck -->
    <link href="<c:url value="/resources/css/green.css"/>" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="<c:url value="/resources/css/bootstrap-progressbar-3.3.4.min.css"/>" rel="stylesheet">
    <!-- JQVMap -->
    <link href="<c:url value="/resources/css/jqvmap.min.css"/>" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="<c:url value="/resources/css/daterangepicker.css"/>" rel="stylesheet">
    
    <!-- bootstrap-wysiwyg -->
    <%-- <link href="<c:url value="/resources/css/prettify.min.css"/>" rel="stylesheet"> --%>
    
      <!-- Datatables -->
    <link href="<c:url value="/resources/css/dataTables.bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/buttons.bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/fixedHeader.bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/responsive.bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/scroller.bootstrap.min.css"/>" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="<c:url value="/resources/css/custom.min.css"/>" rel="stylesheet">
    
 
     
<style>
    
    .newcount{
    font-size:22px !important;
    color:red !important;
    padding-top: 0em !important;"
    padding-bottom: 0em !important;"
	}

</style>

  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="#" class="site_title"><!-- <i> -->
              <img  src ="${pageContext.request.contextPath}/resources/images/gt_logo.png" style ="width: 55px; height : 45px;" alt="Gram Tarang" />
												<!-- </i> --> GTIDS
             <%--  <span class="image">
                 	<img  src ="${pageContext.request.contextPath}/resources/images/gt_logo.png" style ="padding-top: 0;  align:centre;  width: 150px; height : 55px;" alt="Gram Tarang" />
                 </span> --%>
                 </a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <!-- <div class="profile_pic">
                <img src="./resources/images/img.jpg" alt="..." class="img-circle profile_img">
              </div> -->
              <div class="profile_info">
                <h2>welcome ${sessionScope.userdetails.username}</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            
			<jsp:include page="./menu.jsp"></jsp:include>
            
            <!-- /sidebar menu -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>
 
  			
              
     <div   class="nav toggle"  style =" padding-top: 0.13em; width:800px; text-align:center; vertical-align: middle;" >
                 <span><h2>Loan Originating System</h2></span>
                 
                 </div> 
                 
                    
                    
              <ul class="nav navbar-nav navbar-right" style="width:4%">
                <li class="">
                    <c:url value="/logout" var="logoutUrl" />
					<form action="${logoutUrl}" method="post" id="logoutForm">
						<input type="hidden" name="${_csrf.parameterName}"	value="${_csrf.token}" />
					</form>
					<script>
						function formSubmit() {
							document.getElementById("logoutForm").submit();
						}
					</script>
					<c:if test="${pageContext.request.userPrincipal.name != null}">
					 <a	href="javascript:formSubmit()"  title="Signout" ><i class="fa fa-sign-out"></i> </a>
						
					</c:if>
                </li>

                 
              </ul>
                      <!-- sign out  -->
          
          
         
	
	 
            </nav>
          </div>
        </div>
        <!-- /top navigation -->