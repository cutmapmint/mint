<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gram Tarang | LOS </title>

	<%-- <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/gfavicon.ico" type="image/x-icon"> --%>
	
      <!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" />
    <!-- Font Awesome -->
    <link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet">
    <!-- NProgress -->
    <link href="<c:url value="/resources/css/nprogress.css"/>" rel="stylesheet">
    <!-- Animate.css -->
    <link href="<c:url value="/resources/css/animate.min.css"/>" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="<c:url value="/resources/css/custom.min.css"/>" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
          
          
          <p class="login-box-msg">Sign in to start your Session</p>

			
			
			
          <form name='loginForm' action="<c:url value='/login' />"	method='POST'>
          
              <h1>Login Form</h1>
              <c:if test="${not empty error}">
				<div class="error" style="color: red;">${error}</div>
			</c:if>
			<c:if test="${not empty msg}">
				<div class="msg" style="color: red;">${msg}</div>
			</c:if>
              <div>
                <input type="text" class="form-control" placeholder="Username" name='username' required="required" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" name='password' required="required" />
              </div>
              <div>
                <button type="submit" class="btn btn-primary" >SignIn</button>
                <!-- <a class="btn btn-default submit" href="index.html">Log in</a> -->
                <a class="reset_pass" href="#">Forgot Password</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
               <!--  <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p> -->

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><!-- <i class="fa fa-paw"></i> --> GRAM TARANG </h1>
                  <h1><!-- <i class="fa fa-paw"></i> -->  Loan Originating System</h1>
                  <p>©2019 All Rights Reserved. Gram Tarang</p>
                </div>
              </div>
              <input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
            </form>
          </section>
        </div>

         
      </div>
    </div>
  </body>
</html>
