<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- register jsp 와 같이 스프링 시큐리티의 영향을 받는 JSP 파일에는 반드시
         시큐리티 관련 태그 라이브러리를 설정하도록 주의합니다. -->
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    
    <title>Vegefoods - Free Bootstrap 4 Template by Colorlib</title>
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
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body class="goto-here">

<div class="py-1 bg-primary">
       <div class="container">
          <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
             <div class="col-lg-12 d-block">
                <div class="row d-flex">
                   <div class="col-md pr-4 d-flex topper align-items-center">
                      <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
                      <span class="text">82+ 10 1234 5678</span>
                   </div>
                   <div class="col-md pr-4 d-flex topper align-items-center">
                      <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
                      <span class="text">MakeKit@email.com</span>
                   </div>
                   <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
                      <span class="text">간단하고 맛있는 밀키트 맛집</span>
                   </div>
                </div>
             </div>
          </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" style="z-index:100" id="ftco-navbar">
       <div class="container">
         <a class="navbar-brand" href="/">MakeKit</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
           <span class="oi oi-menu"></span> Menu
         </button>

         <div class="collapse navbar-collapse" id="ftco-nav">
           <ul class="navbar-nav ml-auto">
             <li class="nav-item active"><a href="/" class="nav-link">홈</a></li>
             
             <li class="nav-item"><a href="/shop" class="nav-link">Shop</a></li>
             <li class="nav-item"><a href="/about" class="nav-link">About</a></li>
             <li class="nav-item"><a href="/board/list" class="nav-link">Notice</a></li>
             <li class="nav-item"><a href="/Eboard/elist" class="nav-link">Review</a></li>
             <li class="nav-item"><a href="http://localhost:3000/" class="nav-link">Q & A</a></li>
             <sec:authorize access="isAuthenticated()">
             <li class="nav-item">
            <a class="nav-link" href="#">
             <!-- Page633 아래 EL의 값은 실제 브라우저에서는 '_csrf'라는 이름으로 처리됩니다.-->
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
            <p>logout</p>
            </a>
             </li>
             <li class="nav-item cta cta-colored"><a href="/CartView" class="nav-link"><span class="icon-shopping_cart"></span></a></li>
             </sec:authorize>
             <sec:authorize access="isAnonymous()">
             <li class="nav-item"><a href="/customLogin" class="nav-link">Login</a></li>
             <li class="nav-item"><a href="/customSignup" class="nav-link">Sign Up</a></li>
           </sec:authorize>
           </ul>
         </div>
       </div>
     </nav>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        
<script type="text/javascript">
   /*
    $("p").on("click", function() {
        confirm('로그아웃 하시겠습니까?');
        return "/logout.do"
    });
   */
   $("p").on("click", function() {
   result = confirm("로그아웃 하시겠습니까?");
   if(result == true){
      location.href = "/logout.do";
      }
   });
</script>