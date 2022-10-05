<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="includes/header.jsp"%>
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

    <link rel="stylesheet" href="/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/resources/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="/resources/css/flaticon.css">
    <link rel="stylesheet" href="/resources/css/icomoon.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/style2.css">
    <link rel="stylesheet" href="/resources/css/load.css">
</head>
<body class="goto-here">

    <div class="hero-wrap hero-bread" style="background-image: url('../../resources/img/banner1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
             <p class="breadcrumbs"><span class="mr-2"><a href="/">MAKEKIT</a></span> <span></span></p>
            <h1 class="mb-0 bread" style="color: black;">INFORMATION</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section ftco-no-pb ftco-no-pt bg-light" style="margin-top: 50px;">
         <div class="container">
            <div class="row">
               <div class="col-md-5 p-md-5 img img-2 d-flex justify-content-center align-items-center" style="background-image: url('../../resources/img/person.png');">
                  <a href="https://www.youtube.com/watch?v=zUVHcQ7zI28" class="icon popup-vimeo d-flex justify-content-center align-items-center">
                     <span class="icon-play"></span>
                  </a>
               </div>
               <div class="col-md-7 py-5 wrap-about pb-md-5 ftco-animate">
             <div class="heading-section-bold mb-4 mt-md-5">
                <div class="ml-md-0">
                  <h2 class="mb-4">MAKEKIT</h2>
               </div>
             </div>
             <div class="pb-md-5">
                <p>최근 식품업계에서 가장 주목받는 키워드를 하나 꼽아본다면 대부분 '밀키트'를 꼽을 것입니다. 가장 간편식 또는 HMR의 완성형으로 평가받고 있는 밀키트 시장은 지속해서 성장하고 있습니다.</p>
                     <p>시장의 확대와 함께 밀키트는 더욱 다양한 방향으로 진화를 거듭하고 있습니다. 오늘의 밀키트의 출시 초창기와 비교해 더욱 다양하고 세분화된 밀키트의 메뉴와 밀키트 서비스에 대해 알아보도록 하겠습니다.</p>
                     <p>밀키트 시장이 확대되고 여러 기업이 밀키트 사업에 참여하면서 경쟁은 치열해졌습니다. 이에 따라 상품의 질적 향상이 일어나기 시작했는데요. 특색 있는 식재료를 사용하거나 국가, 지역을 대표하는 음식의 레시피를 그대로 담아오는 등 밀키트는 질적으로 향상된 프리미엄화를 이루고 있습니다.</p>
                     <p><a href="/index.html" class="btn btn-primary">MAKEKIT 둘러보기</a></p>
                  </div>
               </div>
            </div>
         </div>
      </section>
<section class="ftco-section ftco-no-pb ftco-no-pt bg-light">
         
         <section class="ftco-section contact-section bg-light" >
            <div class="container">
              <div class="row block-9">
               <div class="col-md-6 order-md-last d-flex">
                  <div class="container-xxl py-6"  style="margin-left:100px !important;">
                     <div class="container">
                        <div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                           <div class="d-inline-block border rounded-pill text-primary px-4 mb-3">길 안내</div>
                           <h2 class="mb-5">MAKEKIT 오시는길</h2>
                        </div>
                        <div class="row g-4">
                           <div class=" wow fadeInUp" data-wow-delay="0.1s">
                              <div class="team-item">
                                 <h5>MAKEKIT</h5>
                                 <p class="mb-4">서울특별시 종로구 세종대로 지하172<br>24시간 영업중</p>
                                 
                              </div>
                           </div>
                           
                        </div>
                     </div>
                  </div>
               
               </div>
        
               <div class="col-md-6 d-flex">
                  <div id="map" class="bg-white" ></div>

         <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7244f093a76b77d56b786c2fb46e49bd&libraries=services"></script>
         <script>
         var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = {
               center: new kakao.maps.LatLng(37.5716352, 126.9767435), // 지도의 중심좌표
               level: 3 // 지도의 확대 레벨
            };  
         
         // 지도를 생성합니다    
         var map = new kakao.maps.Map(mapContainer, mapOption); 
         
         // 주소-좌표 변환 객체를 생성합니다
         var geocoder = new kakao.maps.services.Geocoder();
         
         // 주소로 좌표를 검색합니다
         geocoder.addressSearch('서울특별시 종로구 세종대로 지하172', function(result, status) {
         
            // 정상적으로 검색이 완료됐으면 
             if (status === kakao.maps.services.Status.OK) {
         
               var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
         
               // 결과값으로 받은 위치를 마커로 표시합니다
               var marker = new kakao.maps.Marker({
                  map: map,
                  position: coords
               });
         
               // 인포윈도우로 장소에 대한 설명을 표시합니다
               var infowindow = new kakao.maps.InfoWindow({
                  content: '<div style="width:150px;text-align:center;padding:6px 0;">MakeKit</div>'
               });
               infowindow.open(map, marker);
         
               // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
               map.setCenter(coords);
            } 
         });    
         </script>
               </div>
              </div>
            </div>
           </section>
         


   </section>
   
   <section class="ftco-section ftco-counter img" id="section-counter" style="background-color: #82AE46;">
       <div class="container">
          <div class="row justify-content-center py-5">
             <div class="col-md-10">
                <div class="row">
                <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                  <div class="block-18 text-center">
                    <div class="text">
                      <strong class="number" data-number="259">0</strong>
                      <span>MAKEKIT 하루 주문량</span>
                    </div>
                  </div>
                </div>
                <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                  <div class="block-18 text-center">
                    <div class="text">
                      <strong class="number" data-number="11">0</strong>
                      <span>1시간 동안 주문량</span>
                    </div>
                  </div>
                </div>
                <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                  <div class="block-18 text-center">
                    <div class="text">
                      <strong class="number" data-number="96">0</strong>
                      <span>재주문량</span>
                    </div>
                  </div>
                </div>
                <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                  <div class="block-18 text-center">
                    <div class="text">
                      <strong class="number" data-number="0">0</strong>
                      <span>컴플레인</span>
                    </div>
                  </div>
                </div>
              </div>
           </div>
        </div>
       </div>
    </section>
    
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