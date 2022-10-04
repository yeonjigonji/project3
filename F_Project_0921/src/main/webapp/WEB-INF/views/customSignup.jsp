<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.io.PrintWriter"%>
<%@include file="includes/header.jsp"%>


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

 <title>MAKEKIT-SIGN UP</title>
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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div class="hero-wrap hero-bread" style="background-color: #82AE46; padding: 4em 0;">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
              <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Login</a></span> <span>Sign up</span></p>
              <h1 class="mb-0 bread">SIGN UP</h1>
            </div>
          </div>
        </div>
      </div>
   <section class="ftco-section contact-section bg-light">
     <!-- Form-->
     <div class="form yg" style="margin-top: 10px; ">
      <div class="form-toggle"></div>
      <div class="form-panel one">
        <div class="form-header">
          <h1>Register Account</h1>
      </div>
      <div class="form-content">
          <form action="/join" method="post">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <div class="form-group"><label for="username">Username</label><input type="text" id="username" name="username" required="required" /></div>
            <div class="form-group"><label for="userid">Id</label><input type="id" id="id" name="userid" required="required" /></div>
              <div class="form-group"><label for="password">Password</label><input type="password" id="password" name="userpw" required="required" /></div>
              <div class="form-group"><label for="cpassword">Confirm Password</label><input type="password" id="cpassword" name="userPw" required="required" /></div>
              <div class="form-group"><label for="number">Email</label><input type="text" id="email" name="usermail" required="required" /></div>
              <div class="form-group"><label for="address">Address</label><input type="text" id="sample6_postcode" placeholder="우편번호"></div>
<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><hr>
<div class="form-group"><input type="text" id="sample6_address" placeholder="주소" name="useraddr1" readonly="readonly"></div>
<div class="form-group"><input type="text" id="sample6_detailAddress" placeholder="상세주소" name="useraddr2" ></div>
<div class="form-group"><input type="text" id="sample6_extraAddress" placeholder="참고항목" name="useraddr3" readonly="readonly"></div>
              <div class="form-group"><label class="form-remember"></label><a class="form-recovery" href="/customLogin">로그인</a></div>
              <div class="form-group"><button type="submit">Sign Up</button></div>
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
   
   
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>

//아이디 중복검사
$('.id_input').on("propertychange change keyup paste input", function(){

	//console.log("keyup 테스트");
	
	var memberId = $('.id_input').val(); // .id_input에 입력되는 값
	var data = {memberId : memberId} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
	
	$.ajax({
		type : "post",
		url : "/member/memberIdChk",
		data : data,
		success : function(result){
			 //console.log("성공 여부" + result);
			 
			if(result != 'fail'){
				$('.id_input_re_1').css("display","inline-block");
				$('.id_input_re_2').css("display", "none");				
			} else {
				$('.id_input_re_2').css("display","inline-block");
				$('.id_input_re_1').css("display", "none");				
			}
			
		}// success 종료
	}); // ajax 종료

});// function 종료

/* 다음 주소 연동 */
function addressAPI(){
    
	new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            
        	// 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
             	// 주소변수 문자열과 참고항목 문자열 합치기
                addr += extraAddr;            
            } else {
            	addr += ' ';
            }

            $(".address_input_1").val(data.zonecode);
            //$("[name=memberAddr1]").val(data.zonecode);    // 대체가능
            $(".address_input_2").val(addr);
            //$("[name=memberAddr2]").val(addr);            // 대체가능
            // 커서를 상세주소 필드로 이동한다.
         	// 상세주소 입력란 disabled 속성 변경 및 커서를 상세주소 필드로 이동한다.
            $(".address_input_3").attr("readonly",false);
            $(".address_input_3").focus();            
 
        }
    }).open();
	
}


</script>


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
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

</body>

</html>