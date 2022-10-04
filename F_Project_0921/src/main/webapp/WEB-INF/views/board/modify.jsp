<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- Page719 아래 1줄 소스 코딩 추가 -->
<!-- register jsp 와 같이 스프링 시큐리티의 영향을 받는 JSP 파일에는 반드시
         시큐리티 관련 태그 라이브러리를 설정하도록 주의합니다. -->
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@include file="../includes/header.jsp"%>

<head>
<meta charset="utf-8">
    
    <title>MAKEKIT-BOARD</title>
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
}</style>
    </head>
    <body>
    <div class="hero-wrap hero-bread" style="background-color: #82AE46; padding: 4em 0;" >
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
              <p class="breadcrumbs"><span class="mr-2"><a href="index.html">FREE</a></span> <span>BOARD</span></p>
              <h1 class="mb-0 bread">NOTICE</h1>
            </div>
          </div>
        </div>
      </div>
    


<section class="ftco-section contact-section bg-light">
<div class="container">
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">

      <div class="panel-heading">공지사항 수정</div>
      <div></div>
      <!-- /.panel-heading -->
      <div class="panel-body">

      <form role="form" action="/board/modify" method="post">
      
      <!-- Page719 아래 1줄 소스 코딩 추가 : 스프링 시큐리티를 사용할 때 post방식의
        전송은 반드시 CSRF 토큰을 사용하도록 추가해야만 합니다. form 태그 내에 CSRF 토큰의 값을
        input type hidden 형식으로 아래와 같이 추가해 줍니다.  -->
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
      
      <!-- Page 319 위에 modify jsp 소스 코딩 시작 : 앞서 get jsp 소스 재사용 -->      
      <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
	  <input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>      
      <!-- Page 319 위에 modify jsp 소스 코딩 끝 : 앞서 get jsp 소스 재사용 -->
      
      <!-- Page346 수정/삭제 페이지에서 검색 처리 소스 추가 코딩 시작 -->
      <input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
      <input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>      
      <!-- Page346 수정/삭제 페이지에서 검색 처리 소스 추가 코딩 끝 -->
      
		<div class="form-group">
		  <label>순번</label> 
		  <input class="form-control" name='bno' 
		  value='<c:out value="${board.bno}" />' readonly="readonly">
		</div>

		<div class="form-group">
		  <label>제목</label> 
		  <input class="form-control" name='title'
		  value='<c:out value="${board.title}" />' >
		</div>

		<div class="form-group">
		  <label>내용</label>		  
		  <textarea class="form-control" rows="3" name='content' >
		  	<c:out value="${board.content}" />
		  </textarea>
		</div>

		<div class="form-group">
		  <label>작성자</label> 
		  <input class="form-control" name='writer'
	   value='<c:out value="${board.writer}" />'  readonly="readonly">            
		</div>

		<div class="form-group">
		  <label>작성일</label> 
		  <input class="form-control" name='regDate'
		  value="<fmt:formatDate pattern="yyyy/MM/dd"  value="${board.regdate}" />"    readonly="readonly">            
		</div>

		<div class="form-group">
		  <label>최근 작성일</label> 
		  <input class="form-control" name='updateDate'
		  value="<fmt:formatDate pattern="yyyy/MM/dd"  value="${board.updateDate}" />"      readonly="readonly">            
		</div>

<!-- Page719 아래 7줄 소스 코딩 추가 : 앞서 조회와 마찬가지로 현재 로그인한 사용자가
         게시물의 작성자인 경우에만 수정과 삭제가 가능하도록 제어합니다.  -->
<sec:authentication property="principal" var="pinfo"/>
<sec:authorize access="isAuthenticated()">
<c:if test="${pinfo.username eq board.writer}">
  <button type="submit" data-oper='modify' class="btn btn-info">수정</button>
  <button type="submit" data-oper='remove' class="btn btn-danger">삭제</button>
</c:if>
</sec:authorize>

  <!-- 위에 Page719 소스 코딩 할 때 아래 2줄 소스는 주석 처리 해 줌  -->
  <!-- 
  <button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
  <button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
   -->
  <button type="submit" data-oper='list' class="btn btn-info">목록</button>
</form>
<hr>


      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
<!-- /.row -->


<!-- Page584 화면에서 첨부파일 수정 프론트엔트 코딩 시작 -->
<div class='bigPictureWrapper'>
  <div class='bigPicture'>
  </div>
</div>




<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading"></div>
      <!-- /.panel-heading -->
      <div class="panel-body">
        <div class="form-group uploadDiv">
            <input type="file" name='uploadFile' multiple="multiple">
        </div>
        
        <div class='uploadResult'> 
          <ul>
          
          </ul>
        </div>
      </div>
      <!--  end panel-body -->
  
    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
</div>
</section>
</body>
<!-- /.row -->
<!-- Page584 화면에서 첨부파일 수정 프론트엔트 코딩 끝 -->

<!-- Page590 소스 코딩할 때 아래 script 태그 소스는 주석 처리해 줍니다. (시작) -->
<script type="text/javascript">
$(document).ready(function() {
	var formObj = $("form");
	
	$('button').on("click", function(e) {
		// form 태그의 모든 버튼은 기본적으로 submit으로 처리하기 때문에
		// e.preventDefault()로 기본 동작을 막고 마지막에 직접 submit()을 수행합니다.
		e.preventDefault();
		// 자바스크립트에서는 button 태그의 'data-oper' 속성을 이용해서
		// 원하는 기능을 동작하도록 처리합니다.
		var operation = $(this).data("oper");
		
		console.log(operation);
		
		if(operation === 'remove'){
			formObj.attr("action", "/board/remove");
		} else if(operation === 'list'){
			// move to list
			// 수정된 내용은 클릭한 버튼이 List인 경우 action 속성과 method 속성을
			// 변경합니다. '/board/list'로의 이동은 아무런 파라미터가 없기 때문에
			// form 태그의 모든 내용은 삭제한 상태에서 submit()을 진행합니다.			
		   formObj.attr("action", "/board/list").attr("method", "get");
		    
		// Page 321 수정/삭제 페이지에서 목록 페이지로 이동 처리
		// 페이지 이동의 마지막은 수정/삭제를 취소하고 다시 목록 페이지로 이동하는 것입니다.
		// 목록 페이지는 오직 pageNum과 amount만을 사용하므로 form 태그의
		// 다른 내용들은 삭제하고 필요한 내용만을 다시 추가하는 형태가 편리합니다.
		// 만일 사용자가 'List' 버튼을 클릭한다면 form 태그에서 필요한 부분만 잠시
		// 복사(clone)해서 보관해 두고, form 태그 내의 모든 내용은 지워버립니다(empty)
		// 이후에 다시 필요한 태그들만 추가해서 '/board/list'를 호출하는 형태를 이용합니다.
			// Page 321 자바스크립트 소스 추가 시작
			var pageNumTag = $("input[name='pageNum']").clone();
			var amountTag = $("input[name='amount']").clone();			
		    // Page 321 자바스크립트 소스 추가 끝
		    
		    // Page 347 자바스크립트 소스 추가 시작
		    var keywordTag = $("input[name='keyword']").clone();
		    var typeTag = $("input[name='type']").clone();
		    // Page 347 자바스크립트 소스 추가 끝
		    
		    formObj.empty();	
		    
		    // Page 321 자바스크립트 소스 추가 시작
		    formObj.append(pageNumTag);
		    formObj.append(amountTag);
		    // Page 321 자바스크립트 소스 추가 끝
		    
		    // Page 347 자바스크립트 소스 추가 시작
		    formObj.append(keywordTag);
		    formObj.append(typeTag);
		    // Page 347 자바스크립트 소스 추가 끝
		    
		}
		formObj.submit();		
	});
});

</script>
<!-- Page590 소스 코딩할 때 아래 script 태그 소스는 주석 처리해 줍니다. (끝) -->

<!-- Page590 script 태그 소스 코딩 시작 -->
<script type="text/javascript">
$(document).ready(function() {


	  var formObj = $("form");

	  $('button').on("click", function(e){
	    
	    e.preventDefault(); 
	    
	    var operation = $(this).data("oper");
	    
	    console.log(operation);
	    
	    if(operation === 'remove'){
	      formObj.attr("action", "/board/remove");
	      
	    }else if(operation === 'list'){
	      //move to list
	      formObj.attr("action", "/board/list").attr("method","get");
	      
	      var pageNumTag = $("input[name='pageNum']").clone();
	      var amountTag = $("input[name='amount']").clone();
	      var keywordTag = $("input[name='keyword']").clone();
	      var typeTag = $("input[name='type']").clone();      
	      
	      formObj.empty();
	      
	      formObj.append(pageNumTag);
	      formObj.append(amountTag);
	      formObj.append(keywordTag);
	      formObj.append(typeTag);	  
	      
	    }else if(operation === 'modify'){
	        
	        console.log("submit clicked");
	        
	        var str = "";
	        
	        $(".uploadResult ul li").each(function(i, obj){
	          
	          var jobj = $(obj);
	          
	          console.dir(jobj);
	          
	          str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
	          str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
	          str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
	          str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+ jobj.data("type")+"'>";
	          
	        });
	        formObj.append(str).submit();
        }
    
	    formObj.submit();
	  });

});
</script>
<!-- Page590 script 태그 소스 코딩 끝 -->


<!-- Page584 jQuery의 $(document).ready()를 이용해서 첨부파일을 보여주는 소스 코딩 시작 -->
<script>

$(document).ready(function() {
  (function(){
    
    var bno = '<c:out value="${board.bno}"/>';
    
    $.getJSON("/board/getAttachList", {bno: bno}, function(arr){
    
      console.log(arr);
      
      var str = "";


      $(arr).each(function(i, attach){
          
          //image type
          if(attach.fileType){
            var fileCallPath =  encodeURIComponent( attach.uploadPath+ "/s_"+attach.uuid +"_"+attach.fileName);
            
            str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' "
            str +=" data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
            str += "<span> "+ attach.fileName+"</span>";
            str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' "
            str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
            str += "<img src='/display?fileName="+fileCallPath+"'>";
            str += "</div>";
            str +"</li>";
          }else{
              
            str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' "
            str += "data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
            str += "<span> "+ attach.fileName+"</span><br/>";
            str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' "
            str += " class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
            str += "<img src='/resources/img/attach.png'></a>";
            str += "</div>";
            str +"</li>";
          }
       });

      
      $(".uploadResult ul").html(str);
      
    });//end getjson
  })();//end function
  
  
  $(".uploadResult").on("click", "button", function(e){
	    
    console.log("delete file");
      
    if(confirm("Remove this file? ")){
    
      var targetLi = $(this).closest("li");
      targetLi.remove();

    }
  });  
  
  var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
  var maxSize = 5242880; //5MB
  
  function checkExtension(fileName, fileSize){
    
    if(fileSize >= maxSize){
      alert("파일 사이즈 초과");
      return false;
    }
    
    if(regex.test(fileName)){
      alert("해당 종류의 파일은 업로드할 수 없습니다.");
      return false;
    }
    return true;
  }
  
//725 아래 2줄 소스 코딩 추가
//form 태그를 이용하는 방식 이외에 많이 사용되는 Ajax를 이용하는 경우에는
//스프링 시큐리티가 적용되면 POST, PUT, PATCH, DELETE와 같은 방식으로
//데이터를 전송하는 경우에는 반드시 추가적으로 X-CSRF-TOKEN과 같은 헤더 정보를
//추가해서 CSRF 토큰값을 전달하도록 처리해 줘야만 합니다.
//Ajax는 Javascript를 이용하기 때문에 브라우저에서 CSRF 토큰과 관련된 값을
//아래와 같이 변수로 선언하고, 전송 시 포함시켜주는 방식으로 소스 코딩해 줍니다.
var csrfHeaderName ="${_csrf.headerName}"; 
var csrfTokenValue="${_csrf.token}";
  
  $("input[type='file']").change(function(e){

    var formData = new FormData();
    
    var inputFile = $("input[name='uploadFile']");
    
    var files = inputFile[0].files;
    
    for(var i = 0; i < files.length; i++){

      if(!checkExtension(files[i].name, files[i].size) ){
        return false;
      }
      formData.append("uploadFile", files[i]);
      
    }
    
    $.ajax({
      url: '/uploadAjaxAction',
      processData: false, 
      contentType: false,data: 
      formData,type: 'POST',
   	  // Page725 아래 2줄 소스 코딩 추가 : 기존 코드에 위에 2개 변수를 추가해 줍니다.
      // Ajax로 데이터를 전송할 때에는 beforeSend를 이용해서 추가적인 헤더를 지정해서
      // 전송 처리 합니다.
      beforeSend: function(xhr) {
  		xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
  	},
	    dataType:'json',
        success: function(result){
          console.log(result); 
		  showUploadResult(result); //업로드 결과 처리 함수 

      }
    }); //$.ajax
    
  });    

  function showUploadResult(uploadResultArr){
	    
    if(!uploadResultArr || uploadResultArr.length == 0){ return; }
    
    var uploadUL = $(".uploadResult ul");
    
    var str ="";
    
    $(uploadResultArr).each(function(i, obj){
		
		if(obj.image){
			var fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
			str += "<li data-path='"+obj.uploadPath+"'";
			str +=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
			str +" ><div>";
			str += "<span> "+ obj.fileName+"</span>";
			str += "<button type='button' data-file=\'"+fileCallPath+"\' "
			str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
			str += "<img src='/display?fileName="+fileCallPath+"'>";
			str += "</div>";
			str +"</li>";
		}else{
			var fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);			      
		    var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
		      
			str += "<li "
			str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
			str += "<span> "+ obj.fileName+"</span>";
			str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' " 
			str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
			str += "<img src='/resources/img/attach.png'></a>";
			str += "</div>";
			str +"</li>";
		}

    });
    
    uploadUL.append(str);
  }
  
});

</script>
<!-- Page584 jQuery의 $(document).ready()를 이용해서 첨부파일을 보여주는 소스 코딩 끝 -->
  
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



<%@include file="../includes/footer.jsp"%>
