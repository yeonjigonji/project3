<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="org.zerock.cart.CartDTO"%>
<%@page import="java.util.ArrayList"%>
<%@include file="includes/header.jsp"%>


<%
request.setCharacterEncoding("utf-8");
ArrayList<CartDTO> cart = null;

Object obj = session.getAttribute("cart");	//세션 객체에서 cart 값을 가져온다.

if(obj == null) {	//세션 정보가 없으면 배열을 생성 : 주문한 제품이 없다
	cart = new ArrayList<CartDTO>();	
} else {			//세션 정보가 있으면 강제로 캐스팅 : 주문한 제품이 있다
	cart = (ArrayList<CartDTO>) obj;
}
%>
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
              <p class="breadcrumbs"><span class="mr-2"><a href="/">MAKEKIT</a></span> <span>CART</span></p>
              <h1 class="mb-0 bread">Cart</h1>
            </div>
          </div>
        </div>
      </div>
      
	<section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
	<table border="1" class="table">
	<thead class="thead-primary">
		<tr class="text-center">
			<th>번호</th>
			<th>과일명</th>
			<th>단가</th>
			<th>주문 수량</th>
			<th>가격</th>
		</tr>
		</thead>
		</div>
    		</div>
			</div>
		</section>
		<%
			int totalSum = 0, total = 0;
		if (cart.size() == 0) {
			out.println("<tr align='center'>");
			out.println("<td colspan= '5'>");
			out.println("장바구니에 담긴 상품이 없습니다.");
			out.println("<a href= '/shop'> 주문하기</a>");
			out.println("</td>");
			out.println("</tr>");
		} else {
			DecimalFormat df = new DecimalFormat("￦#,##0");
			for (int i = 0; i < cart.size(); i++) {
				CartDTO dto = cart.get(i);
				out.println("<tr align= 'center'>");
				out.println("<td>" + (i + 1) + "</td>");
				out.println("<td>" + dto.getName() + "</td>");
				out.println("<td>" + df.format(dto.getPrice()) + "</td>");
				out.println("<td>" + dto.getCnt() + "</td>");
				total = dto.getPrice() * dto.getCnt();
				out.println("<td>" + df.format(total) + "</td>");
				out.println("</tr>");
				totalSum += total;
			}
			out.println("<tr align = 'center'>");
			out.println("<td colspan= '4'>");
			out.println("<input class='btn btn-primary py-3 px-4' type='button' value='결제하기' onclick='fnPay()' />");
			out.println("<input class='btn btn-primary py-3 px-4' type='button' value='장바구니 비우기' onclick='fnClear()' />");
			out.println("<input class='btn btn-primary py-3 px-4' type='button' value='쇼핑 계속하기' onclick='fnGo()' />");
			out.println("</td>");
			out.println("<td>");
			out.println(df.format(totalSum));
			out.println("</td>");
			out.println("</tr>");
		} //if else
		%>
	</table>
</div>
	


 


		
</body>


	<!-- jQuery -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="/resources/dist/js/sb-admin-2.js"></script>

<script type="text/javascript">
function fnPay() {
	var totalSum =<%=totalSum%>
	var IMP = window.IMP;
	IMP.init("imp80513063"); // Insert your Code 부분에 자신의 아임포트 "가맹점 식별코드" 입력 바랍니다.
	IMP.request_pay({
		pg : "html5_inicis",
		pay_method : "card",
		merchant_uid : 'merchant_' + new Date().getTime(),
		name : "MakeKit",
		amount : totalSum,
		buyer_email : "bkj587@naver.com",
		buyer_name : "${_csrf.parameterName}",
		buyer_tel : "010-1234-5678",
		buyer_addr : "서울특별시 강남구 역삼동",
		buyer_postcode : "11111",
		m_redirect_url : "/paymentDone.do"
	}, function(rsp) {
		if (rsp.success) {
			var paymentInfo = {
				imp_uid : rsp.imp_uid,
				merchant_uid : rsp.merchant_uid,
				paid_amount : rsp.paid_amount,
				apply_num : rsp.apply_num,
				paid_at : new Date()
			};
			$.ajax({
				url : "/paymentProcess.do",
				method : "POST",
				contentType : "application/json",
				data : JSON.stringify(paymentInfo),
				success : function(data, textStatus) {
					console.log(paymentInfo);
					location.href = "/paymentDone.do";
				},
				error : function(e) {
					console.log(e);
				}
			})
		} else {
			alert("결제 실패 : " + rsp.error_msg);
		}
	});
}

function fnClear(){
	if(confirm("장바구니를 비우시겠습니까?")) {
		location.href = "/CartClear";	
	}
}

function fnGo(){
	location.href = "/shop";
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
  
  <!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


</html>
