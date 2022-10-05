<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Page671 JSP에서 로그인한 사용자 정보 보여주기  : 아래 2줄 tablib 구문 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
    <link rel="stylesheet" href="/resources/css/login.css">
    <link rel="stylesheet" href="/resources/css/style2.css">
    <link rel="stylesheet" href="/resources/css/list.css">
    
    <style>
    @font-face {
    font-family: 'MICEGothic Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
	}
</style>

</head>
<body>
<div class="hero-wrap hero-bread" style="background-color: #82AE46; padding: 4em 0;" >
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
              <p class="breadcrumbs"><span class="mr-2">Makekit</span><span>Member</span></p>
              <h1 class="mb-0 bread">회원리스트</h1>
            </div>
          </div>
        </div>
      </div>
<!-- /.row -->

<section class="ftco-section contact-section bg-light">
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			
			<!-- Page250 위에 jsp 소스 코딩 시작 -->
			<div class="panel-heading" style="text-align:center; font-family: 'MICEGothic Bold';">
				MAKEKIT 회원 리스트
			</div>
			<!-- Page250 위에 jsp 소스 코딩 끝 -->
			<!-- 목록 페이지 상단에 게시판 등록 작업 버튼 생성해 줌 -->
			<!-- /.panel-heading -->
			<div class="panel-body">
				<!-- Page 237 소스 코딩 시작 -->
				<div class="container">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>아이디</th>
							<th>이름</th>
							<th>이메일</th>
							<th>주소</th>
							<th>작성일</th>
							<th>수정일</th>
						</tr>
					</thead>
					<!-- Model에 담긴 데이터 출력 : '/notice/list'를
                                                                  실행했을 때 앞서 BoardController는 model을 이용해서
                                                                  게시물의 목록을 'list'라는 이름으로 담아서 전달했으므로
			                              list.jsp에서는 이것을 출력합니다.
                                                                 출력은 JSTL을 이용해서 처리합니다.-->
					<c:forEach items="${admin}" var="member">
						<!-- Page254 아래 ~ Page255 위까지 소스 수정 코딩 시작 -->
						<tr>
							<td><c:out value="${member.userid}" /></td>
							<td><c:out value="${member.username}" /></td>
							<td><c:out value="${member.usermail}" /></td>
							<td><c:out value="${member.useraddr1}" /></td>

							<td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${member.regDate}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${member.updateDate}" /></td>
						</tr>
						<!-- Page254 아래 ~ Page255 위까지 소스 수정 코딩 끝 -->
					</c:forEach>
				</table>
				<!-- Page 237 소스 코딩 끝 -->
				
				<!-- Page 340 jsp 소스 코딩 시작, Page 343 jsp 소스 코딩 수정 시작 -->
				<!-- 화면에서 검색 기능 구현할 때 다음의 사항들을 주의해서 개발해 주시기 바랍니다.
				첫번째로 페이지 번호가 파라미터로 유지되었던 것처럼 검색 조건과 키워드 역시 항상 화면 이동 시 같이 전송되어야 합니다.
				두번째로 화면에서 검색 버튼을 클릭하면 새로 검색을 한다는 의미이므로
				1페이지로 이동합니다.
				세번째로 한글의 경우 GET방식으로 이동하는 경우 문제가 생길 수 있으므로
				주의해야 합니다. -->
				<div class="row">
					<div class="col-lg-12">
						<form id="searchForm" action="/sample/admin" method="get">
						<select name="type">
							<option value="" <c:out value="${pageMaker.cri.type == null ? 'selected' : '' }"/>>--</option>
							<option value="T" <c:out value="${pageMaker.cri.type eq 'T' ? 'selected' : '' }"/>>아이디</option>
							<option value="C" <c:out value="${pageMaker.cri.type eq 'C' ? 'selected' : '' }"/>>이름</option>
							<option value="W" <c:out value="${pageMaker.cri.type eq 'W' ? 'selected' : '' }"/>>이메일</option>
							<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC' ? 'selected' : '' }"/>>아이디 or 이름</option>
							<option value="TW" <c:out value="${pageMaker.cri.type eq 'TW' ? 'selected' : '' }"/>>아이디 or 이메일</option>
							<option value="TWC" <c:out value="${pageMaker.cri.type eq 'TWC' ? 'selected' : '' }"/>>아이디 or 이름 or 이메일</option>
							<input type="text" name="keyword" value="<c:out value = "${pageMaker.cri.keyword}"/>" /> 
							<input type="hidden" name="pageNum" value="<c:out value = "${pageMaker.cri.pageNum}"/>" /> 
							<input type="hidden" name="amount" value="<c:out value = "${pageMaker.cri.amount}"/>" />
                        <button class="btn btn-default">Search Now!</button>
						</select>
					</form>
				</div>
			</div>
			<!-- Page 340 jsp 소스 코딩 끝, Page 343 jsp 소스 코딩 수정 끝 -->

				<!-- Page308 소스 코딩 시작 : Page310 진행할 때 주석 처리함 -->
				<!-- http://localhost:port번호/notice/list?pageNum=5 : 하단 Next 버튼 확인 -->
				<!-- http://localhost:port번호/notice/list?pageNum=5&amount=20 : 하단 페이지 전체 확인 -->
			    <%-- 
				<div class='pull-right'>
					<ul class="pagination">
						            <c:if test="${pageMaker.prev}">
              <li class="paginate_button previous"><a href="#">Previous</a>
              </li>
            </c:if>

            <c:forEach var="num" begin="${pageMaker.startPage}"
              end="${pageMaker.endPage}">
              <li class="paginate_button"><a href="#">${num}</a></li>
            </c:forEach>

            <c:if test="${pageMaker.next}">
              <li class="paginate_button next"><a href="#">Next</a></li>
            </c:if>
            --%>
            <!-- Page308 소스 코딩 끝 : Page310 진행할 때 주석 처리함 -->

				<!-- Page310 위에 소스 코딩 시작 -->
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

			<!-- Page 311 위에 소스 코딩 시작 -->
			<form id='actionForm' action="/sample/admin" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
			<!-- form 종료 태그 : Page 311 위에 소스 코딩 끝 -->

			<!-- Page 344 중간 jsp 소스 코딩 추가 시작 : 소스 문제 없는데 붉은색 표시나면 구문 잘라내기 후에 다시 붙여넣기 저장해 보시기 바랍니다. -->
			<!-- 다음의 구문 코딩 후에 웹브라우저 실행해서, 검색 이후에 페이지를 이동해서 동일한
			     검색 조건과 키워드가 유지되는지 확인 바랍니다. -->
				<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type}"/>'>
				<input type='hidden' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>'>
			<!-- Page 344 중간 jsp 소스 코딩 추가 끝 -->

			</form>

			<!-- Page 248 소스 코딩 시작 -->
			<!-- Modal  추가 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">Modal title</h4>
						</div>
						<div class="modal-body">처리가 완료되었습니다.</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary" data-dismiss="modal">Save
								changes</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- Page 248 소스 코딩 끝 -->
		</div>
		</div>
		<!--  end panel-body -->
	</div>
	<!-- end panel -->
	</div>
<!-- /.row -->
</div>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
   $(document).ready(function() {

      var actionForm = $("#actionForm");

      $(".paginate_button a").on("click", function(e) {

         e.preventDefault();

         console.log('click');
         // }); Page 312 위에 자바스크립트 소스 코딩 끝

         // Page 312 아래 자바스크립트 소스 코딩 시작
         actionForm.find("input[name='pageNum']").val($(this).attr("href"));
         actionForm.submit(); // actionForm 자체를 submit() 처리 시켜줍니다.
      });
      // Page 312 아래 자바스크립트 소스 코딩 끝                  

      // Page 342 자바스크립트 소스 코딩 시작
      var searchForm = $("#searchForm");

      $("#searchForm button").on("click", function(e) {
         if (!searchForm.find("option:selected").val()) {
            alert("검색 종류를 선택해 주시기 바랍니다!");
            return false;
         }

         if (!searchForm.find("input[name='keyword']").val()) {
            alert("키워드를 입력해 주시기 바랍니다!");
            return false;
         }

         // 여러 문제들 중에서 검색 버튼을 클릭하면 검색은
         // 1페이지를 하도록 수정 처리합니다.
         searchForm.find("input[name='pageNum']").val("1");
         // 브라우저에서 검색 버튼을 클릭하면 form 태그의
         // 전송은 막고, 페이지의 번호는 1이 되도록 처리합니다.
         // 화면에서 키워드가 없다면 검색을 하지 않도록 제어합니다.
         e.preventDefault();
         searchForm.submit();
      });
   });
   // Page 342 자바스크립트 소스 코딩 끝
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