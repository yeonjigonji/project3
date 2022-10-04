<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="includes/header.jsp"%>
<%
String[] img ={"cream.jpg", "bulgogi.jpg", "fruit.jpg", "cow.jpg", "gambas.jpg", "mara.jpg", "nabe.jpg", "pocha.jpg", "tang2.jpg","tang3.jpg","tang4.jpg", "tofu.jpg"};
String[] name = {"연어 스테이크", "불고기", "과일박스", "찹스테이크", "감바스", "마라탕", "밀푀유나베", "떡볶이", "갈비탕", "육개장", "된장찌개", "순두부찌개"};
String[] price = {"8,000", "10,000", "5,000", "12,900", "5,800", "10,000", "10,000", "5,000", "6,000", "5,800", "6,000", "5,000"};
String[] price2 = {"6,400", "7,000", "2,500", "12,900", "5,800", "5,000", "8,000", "2,500", "6,000", "5,800", "6,000", "2,500"};
%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
    <title>MAKEKIT</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/animate.css">
    
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="/resources/css/aos.css">

    <link rel="stylesheet" href="/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="/resources/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="/resources/css/flaticon.css">
    <link rel="stylesheet" href="/resources/css/icomoon.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/style2.css">
    <link rel="stylesheet" href="/resources/css/list.css">
  </head>
<body class="goto-here">
<div class="hero-wrap hero-bread" style="background-image: url('../../resources/img/banner.png');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">MAKEKIT</a></span> <span>Products</span></p>
            <h1 class="mb-0 bread">SHOP</h1>
          </div>
        </div>
      </div>
    </div>
    
    
    <section class="ftco-section">
    	<div class="container">
  		
	<table class="container">
				
		<%
		for(int i = 0; i < img.length; i++) {
			if(i % 3 == 0) { 
				out.println("<tr align='center'>");
			}
			out.println("<td class='col-md-6 col-lg-3 ftco-animate'  class='row'>");
				out.println("<table class='product'>");
					out.println("<tr align='center' class='img-prod'>");
						out.println("<td class='img-prod'>");
							out.println("<img src = '../../resources/img/" + img[i] + "' width='100%' height='100%' />");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'class='text py-3 pb-4 px-3 text-center'>");
						out.println("<td class='text py-3 pb-4 px-3 text-center'>");
							out.println("<b>" + name[i] + "</b>");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<div >");
					out.println("<tr align='center' class='text py-3 pb-4 px-3 text-center'>");
						out.println("<td class='pricing' >");
						out.println("<div class='price-sale'>");
						out.println("<p class='price'>");
						out.println("<span class='mr-2 price-dc' style='align=center;'>");
							out.println("<b>￦" + price[i] + "원</b>");
						out.println("</span>");
						out.println("<span class='price-sale' style='align=center;'>");
						out.println("<b>￦" + price2[i] + "원</b>");
					out.println("</span>");
						
						out.println("</p>");
						out.println("</div>");
						
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							//한 줄로 쓰기
							//out.println("<input type='button' value='장바구니 담기' onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
							//두 줄로 쓰기, 닫는 큰 따옴표와 괄호 옆의 띄어쓰기 필수
							out.println("<div class='bottom-area d-flex px-3' style='margin-bottom : 10px'> ");
							out.println("<div class='m-auto d-flex' > ");
							out.println("<div class='buy-now d-flex justify-content-center align-items-center mx-1' > ");
							out.println("<input class='btn btn-primary ion-ios-cart' value='장바구니 담기' type='button' onclick='fnCart(\"" + name[i] + "\", \"" + price2[i] + "\")' />");
						out.println("</div>");
						out.println("</div>");
						out.println("</div>");
						out.println("</td>");
					out.println("</tr>");
				out.println("</table>");
			out.println("</td>");
			if(i % 3 == 2) {
				out.println("</tr>");
				out.println("</div>");
			}
		}
		%>	
	</table>
	
</div>
   	<div class="row mt-5" >
          <div class="col text-center">
            <div class="block-27" style="display: contents !important;">
				<div class='pull-right'>
					<ul class="pagination" style="display: contents;">
					
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a
								href="${pageMaker.startPage -1}">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}">
							<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active" : ""} ">
								<a href="${num}">${num}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a
								href="${pageMaker.endPage +1 }">Next</a></li>
						</c:if>
					<!-- Page310 위에 소스 코딩 끝 -->

					</ul>
				</div>
				<!--  end Pagination -->
			</div>
			</div>
			</div>
    

   

    
    

	<script type="text/javascript">
	function fnCart(name, price) {
		   <sec:authorize access="isAnonymous()">
		   if(alert("로그인후 사용해 주세요")){
		      return null;
		   }
		   </sec:authorize>
		   //alert("Name : " + name + "\nPrice : " + price);
		   <sec:authorize access="isAuthenticated()">
		   if(confirm("장바구니에 담으시겠습니까?")) {
		      location.href = "/CartProcess?name=" + name + "&price=" + price;
		      }
		   </sec:authorize>
		}

function fnView() {
	if(confirm("장바구니를 보시겠습니까?")){
		location.href = "/CartView";
	}
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
  </body>
</html>