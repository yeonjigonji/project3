<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="includes/header.jsp"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="author" content="">

    <title>MAKEKIT-LOGIN</title>
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" href="/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/animate.css">
    
    
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="/resources/css/aos.css">

    <link rel="stylesheet" href="/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/resources/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="/resources/css/flaticon.css">
    <link rel="stylesheet" href="/resources/css/icomoon.css">
    <link rel="stylesheet" href="/resources/css/style2.css">
    <link rel="stylesheet" href="/resources/css/login.css">



</head>

<body>

<div class="hero-wrap hero-bread" style="background-color: #82AE46; padding: 4em 0;">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
              <p class="breadcrumbs"><span class="mr-2"><a href="/">Login</a></span> <span>Sign up</span></p>
              <h1 class="mb-0 bread">Login</h1>
            </div>
          </div>
        </div>
      </div>

   <section class="ftco-section contact-section bg-light">
     <!-- Form-->
     <div class="form yg" style="margin-top: 20px;">
      <div class="form-toggle"></div>
      <div class="form-panel one">
          <div class="form-header">
              <h1>WELCOME MAKEKIT</h1>
          </div>
          <div class="form-content">
              <form role="form" method='post' action="/login">
                <fieldset>
                  <div class="form-group"><label for="username">ID</label><input class="form-control"
                              name="username" type="text" autofocus required="required" /></div>
                  <div class="form-group"><label for="password">Password</label><input class="form-control"
                              name="password" type="password" value="" required="required" /></div>
                  <div class="form-group"><label class="form-remember"></label><a class="form-recovery" href="/customSignup">회원가입</a></div>
                  <div class="form-group"><button type="submit">Log In</button></div>
                </fieldset>
                <input type="hidden" name="${_csrf.parameterName}"
                        value="${_csrf.token}" />
              </form>
          </div>
      </div>
      <div class="form-panel two">
          
      </div>
    </div>
    </section>



   <!-- jQuery -->
   <script src="/resources/vendor/jquery/jquery.min.js"></script>

   <!-- Bootstrap Core JavaScript -->
   <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

   <!-- Metis Menu Plugin JavaScript -->
   <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

   <!-- Custom Theme JavaScript -->
   <script src="/resources/dist/js/sb-admin-2.js"></script>
  <script>
  
  
  
  
  $(".btn-success").on("click", function(e){
    
    e.preventDefault();
    $("form").submit();
    
  });
  
  </script>
  
<c:if test="${param.logout != null}">
      <script>
      $(document).ready(function(){
         alert("로그아웃하였습니다.");
         location.href = "/"
      });
      
      </script>
</c:if>  


 <script src="/resources/js/jquery.min.js"></script>
  <script src="/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/resources/js/popper.min.js"></script>
  <script src="/resources/js/bootstrap.min.js"></script>
  <script src="/resources/js/jquery.easing.1.3.js"></script>
  <script src="/resources/js/jquery.waypoints.min.js"></script>
  <script src="/resources/js/jquery.stellar.min.js"></script>
  <script src="/resources/js/owl.carousel.min.js"></script>
  <script src="/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="/resources/js/aos.js"></script>
  <script src="/resources/js/jquery.animateNumber.min.js"></script>
  <script src="/resources/js/bootstrap-datepicker.js"></script>
  <script src="/resources/js/scrollax.min.js"></script>
  <script src="/resources/js/google-map.js"></script>
  <script src="/resources/js/main.js"></script>

</body>

</html>