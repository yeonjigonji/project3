<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="includes/header.jsp"%>
<%
String[] img ={"cream.jpg", "bulgogi.jpg", "fruit.jpg", "mara.jpg", "nabe.jpg", "pocha.jpg"};
String[] name = {"연어 스테이크", "불고기", "과일박스", "마라탕", "밀푀유나베", "떡볶이"};
String[] price = {"8,000", "10,000", "5,000", "10,000", "10,000", "5,000"};
String[] price2 = {"6,400", "7,000", "2,500", "5,000", "8,000", "2,500"};
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>MAKEKIT</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/animate.css">
    
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="/resources/css/theme-rtl.css">

    <link rel="stylesheet" href="/resources/css/aos.css">

    <link rel="stylesheet" href="/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/resources/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="/resources/css/flaticon.css">
    <link rel="stylesheet" href="/resources/css/icomoon.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/style2.css">
    <link rel="stylesheet" href="/resources/css/popular.css">
    <link rel="stylesheet" href="/resources/scss/theme copy.scss">

   
  </head>
  <body class="goto-here">

    <section class="py-5 overflow-hidden bg-primary" id="home">
        <div class="container">
          <div class="row flex-center">
            <div class="col-md-5 col-lg-6 order-0 order-md-1 mt-8 mt-md-0"><a class="img-landing-banner" href="#!"><img class="img-fluid" src="../../resources/img/f_main.png" alt="hero-header" /></a></div>
            <div class="col-md-7 col-lg-6 py-8 text-md-start text-center">
              <h1 class="display-1 fs-md-5 fs-lg-6 fs-xl-8 text-light">MakeKit</h1><hr>
              <h1 class="text-800 mb-5 fs-4">간단하고 맛있는 밀키트 맛집<br><br class="d-none d-xxl-block" /></h1>
            
            </div>
          </div>
        </div>
      </section>

    <section class="ftco-section">
         <div class="container">
            <div class="row no-gutters ftco-services">
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
                  <span class="flaticon-shipped"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">무료 배송</h3>
                <span>MakeKit에선 모든 상품 무료배송</span>
              </div>
            </div>      
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
                  <span class="flaticon-diet"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">신선한 재료</h3>
                <span>무농약으로 키운 채소들</span>
              </div>
            </div>    
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
                  <span class="flaticon-award"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">맛있는 밀키트상 수상</h3>
                <span>국내 최초 밀키트상 수상</span>
              </div>
            </div>      
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
                  <span class="flaticon-customer-service"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">친절한 응대</h3>
                <span>언제나 친절한 MakeKit 직원들</span>
              </div>
            </div>      
          </div>
        </div>
         </div>
      </section>

      <section class="py-4 overflow-hidden">

         <div class="container">
           <div class="row h-1002">
            <div class="col-lg-7 mx-auto text-center mt-7 mb-5">
              <h5 class="fw-bold fs-3 fs-lg-5 lh-sm">인기 상품</h5><span class="subheading">TOP 5</span>
            </div>
            <div class="col-122">
              <div class="carousel slide" id="carouselPopularItems" data-bs-touch="false" data-bs-interval="false">
               <div class="carousel-inner">
                 <div class="carousel-item2 active" data-bs-interval="10000">
                  <div class="row gx-3 h-100 align-items-center">
                    <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                     <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="../../resources/img/gambas.jpg" alt="..." />
                       <div class="card-body ps-0">
                        <h5 class="fw-bold text-1000 text-truncate mb-1">감바스</h5>
                        <div>
                        	<span class="text-warning me-2"><i class="fas fa-map-marker-alt"></i></span><span class="text-primary">
                        		간편 술안주로 최고
                        	</span></div><hr><span class="text-1000 fw-bold">8900원</span>
                       </div>
                     </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                     <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="../../resources/img/cow.jpg" alt="..." />
                       <div class="card-body ps-0">
                        <h5 class="fw-bold text-1000 text-truncate mb-1">스테이크</h5>
                        <div>
                        	<span class="text-warning me-2"><i class="fas fa-map-marker-alt"></i></span><span class="text-primary">
                        		육즙팡팡 스테이크
                        	</span>
                        </div>
                        	<hr><span class="text-1000 fw-bold">12900원</span>
                       </div>
                     </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                     <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="../../resources/img/tang4.jpg" alt="..." />
                       <div class="card-body ps-0">
                        <h5 class="fw-bold text-1000 text-truncate mb-1">된장찌개</h5>
                        <div><span class="text-warning me-2"><i class="fas fa-map-marker-alt"></i></span><span class="text-primary">집밥 최고 밥도둑</span></div><hr><span class="text-1000 fw-bold">6000원</span>
                       </div>
                     </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                     <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="../../resources/img/tang3.jpg" alt="..." />
                       <div class="card-body ps-0">
                        <h5 class="fw-bold text-1000 text-truncate mb-1">육개장</h5>
                        <div><span class="text-warning me-2"><i class="fas fa-map-marker-alt"></i></span><span class="text-primary">얼큰한거 땡기는 날</span></div><hr><span class="text-1000 fw-bold">5800원</span>
                       </div>
                     </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                     <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="../../resources/img/tang2.jpg" alt="..." />
                       <div class="card-body ps-0">
                        <h5 class="fw-bold text-1000 text-truncate mb-1">갈비탕</h5>
                        <div><span class="text-warning me-2"><i class="fas fa-map-marker-alt"></i></span><span class="text-primary">뼛속까지 따듯해지는</span></div><hr><span class="text-1000 fw-bold">6000원</span>
                       </div>
                     </div>
                    </div>
                  </div>
                 </div>
                 <div class="carousel-item" data-bs-interval="5000">
                  <div class="row gx-3 h-100 align-items-center">
                    <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                     <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="../../resources/img/tofu.jpg" alt="..." />
                       <div class="card-body ps-0">
                        <h5 class="fw-bold text-1000 text-truncate mb-1">Cheese Burger</h5>
                        <div><span class="text-warning me-2"><i class="fas fa-map-marker-alt"></i></span><span class="text-primary">Burger Arena</span></div><span class="text-1000 fw-bold">$3.88</span>
                       </div>
                     </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                     <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="../../resources/img/cow.jpg" alt="..." />
                       <div class="card-body ps-0">
                        <h5 class="fw-bold text-1000 text-truncate mb-1">Toffe's Cake</h5>
                        <div><span class="text-warning me-2"><i class="fas fa-map-marker-alt"></i></span><span class="text-primary">Top Sticks</span></div><span class="text-1000 fw-bold">$4.00</span>
                       </div>
                     </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                     <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="../../resources/img/bulgogi.jpg" alt="..." />
                       <div class="card-body ps-0">
                        <h5 class="fw-bold text-1000 text-truncate mb-1">Dancake</h5>
                        <div><span class="text-warning me-2"><i class="fas fa-map-marker-alt"></i></span><span class="text-primary">Cake World</span></div><span class="text-1000 fw-bold">$1.99</span>
                       </div>
                     </div>
                     <div class="d-grid gap-2"><a class="btn btn-lg btn-danger" href="#!" role="button">장바구니</a></div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                     <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="../../resources/img/fruit.jpg" alt="..." />
                       <div class="card-body ps-0">
                        <h5 class="fw-bold text-1000 text-truncate mb-1">Crispy Sandwitch</h5>
                        <div><span class="text-warning me-2"><i class="fas fa-map-marker-alt"></i></span><span class="text-primary">Fastfood Dine</span></div><span class="text-1000 fw-bold">$3.00</span>
                       </div>
                     </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                     <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="../../resources/img/nabe.jpg" alt="..." />
                       <div class="card-body ps-0">
                        <h5 class="fw-bold text-1000 text-truncate mb-1">Thai Soup</h5>
                        <div><span class="text-warning me-2"><i class="fas fa-map-marker-alt"></i></span><span class="text-primary">Foody Man</span></div><span class="text-1000 fw-bold">$2.79</span>
                       </div>
                     </div>
                    </div>
                  </div>
                 </div>
                 <div class="carousel-item" data-bs-interval="3000">
                  <div class="row gx-3 h-100 align-items-center">
                    <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                     <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="../../resources/img/mara.jpg" alt="..." />
                       <div class="card-body ps-0">
                        <h5 class="fw-bold text-1000 text-truncate mb-1">Cheese Burger</h5>
                        <div><span class="text-warning me-2"><i class="fas fa-map-marker-alt"></i></span><span class="text-primary">Burger Arena</span></div><span class="text-1000 fw-bold">$3.88</span>
                       </div>
                     </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                     <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="../../resources/img/pocha.jpg" alt="..." />
                       <div class="card-body ps-0">
                        <h5 class="fw-bold text-1000 text-truncate mb-1">Toffe's Cake</h5>
                        <div><span class="text-warning me-2"><i class="fas fa-map-marker-alt"></i></span><span class="text-primary">Top Sticks</span></div><span class="text-1000 fw-bold">$4.00</span>
                       </div>
                     </div>
                    </div>
                   
                  </div>
                 </div>
              </div>
            </div>
           </div>
         </div><!-- end of .container-->
         <center><a class="btn btn-primary ion-ios-cart" type="button" href="/shop" role="button"><br>SHOP으로 바로가기</a></center>
         <br><br><br>
   
        </section>

      

       <div class="container">
            <div class="row justify-content-center mb-3 pb-3">
          <div class="col-md-12 heading-section text-center ftco-animate">
             <span class="subheading">MakeKit</span>
            <h2 class="mb-4">할인 상품</h2>
            <p>MAKEKIT 밀키트 일부 품목을 한정 수량으로 판매중입니다.</p>
          </div>
        </div>         
       </div>
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
      
      

    

    <hr>



      
    <footer class="ftco-footer ftco-section">
      <div class="container">
      
      
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with Project 2 Team</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                  </p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
  
  <script type="text/javascript">
	function fnCart(name, price) {
		   <sec:authorize access="isAnonymous()">
		   if(confirm("로그인후 사용해 주세요")){
			  
			  location.href = "/customLogin";
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
    
     <!-- Channel Plugin Scripts -->
<script>
      (function() {
        var w = window;
        if (w.ChannelIO) {
          return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
        }
        var ch = function() {
          ch.c(arguments);
        };
        ch.q = [];
        ch.c = function(args) {
          ch.q.push(args);
        };
        w.ChannelIO = ch;
        function l() {
          if (w.ChannelIOInitialized) {
            return;
          }
          w.ChannelIOInitialized = true;
          var s = document.createElement('script');
          s.type = 'text/javascript';
          s.async = true;
          s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
          s.charset = 'UTF-8';
          var x = document.getElementsByTagName('script')[0];
          x.parentNode.insertBefore(s, x);
        }
        if (document.readyState === 'complete') {
          l();
        } else if (window.attachEvent) {
          window.attachEvent('onload', l);
        } else {
          window.addEventListener('DOMContentLoaded', l, false);
          window.addEventListener('load', l, false);
        }
      })();
      ChannelIO('boot', {
        "pluginKey": "6c2ef765-c9f0-4776-9519-6e5819d5c058"
      });

    <!-- End Channel Plugin -->
</script>
    
  </body>
</html>