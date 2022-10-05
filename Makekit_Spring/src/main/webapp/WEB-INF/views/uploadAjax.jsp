<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>uploadAjax jsp</title>
</head>
<body>
	<!-- uploadAjax jsp는 순수한 JavaScript를 이용해서 처리할 수도 있지만,
	     jQuery를 이용해서 처리하는 것이 편리합니다. -->
	<h1>Upload with Ajax</h1>
	
<style>
.uploadResult {
	width: 100%;
	background-color: gray;
}

.uploadResult ul {
	display: flex;
	flex-flow: row;
	justify-content: center;
	align-items: center;
}

.uploadResult ul li {
	list-style: none;
	padding: 10px;
}

.uploadResult ul li img {
	width: 100px;
}
</style>

<!-- Page542 div 태그 .bigPictureWrapper 추가 코딩 -->
<div class="bigPictureWrapper">
	<div class='bigPicture'>
	</div>
</div>

<!-- Page542 ~ Page 543 원본 이미지 보여주는 영역 CSS 처리 -->
<style>
.bigPictureWrapper {
  position: absolute;
  display: none;
  justify-content: center;
  align-items: center;
  top:0%;
  width:100%;
  height:100%;
  background-color: gray; 
  z-index: 100;
}

.bigPicture {
  position: relative;
  display:flex;
  justify-content: center;
  align-items: center;
}
</style>
	
	
	<div class="uploadDiv">
		<input type="file" name="uploadFile" multiple="multiple">
	</div>
	
	<div class="uploadResult">
		<ul>
		</ul>	
	</div>
	
	<button id="uploadBtn">Upload</button>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
		
	<script type="text/javascript">

		function showImage(fileCallPath) { // 섬네일 파일을 클릭하면 원본 이미지 보여주는 코드

			$(".bigPictureWrapper").css("display", "flex").show();
			$(".bigPicture").html("<img src='/display?fileName=" + encodeURI(fileCallPath) + "'>").animate({width:'100%', height:'100%'}, 1000);			
		}	
	
		$(".bigPictureWrapper").on("click", function(e) { // 보여준 이미지를 클릭하면 사라지게 하는 코드
			$(".bigPicture").animate({width:'0%', height:'0%'}, 1000);

			setTimeout(function() {
				$('.bigPictureWrapper').hide();
			}, 1000);
		});

		$(".uploadResult").on("click", "span", function(e) { // x표시를 누르면 업로드한 파일을 삭제하는 코드
			var targetFile = $(this).data("file");
			var type = $(this).data("type");
			console.log(targetFile);
			
			$.ajax({
				url : '/deleteFile',
				data : {fileName : targetFile, type:type},
				dataType : 'text',
				type : 'POST',
				success : function(result) {
					alert(result);
				}
			}); // $.ajax
		});
	
		$(document).ready(function() { // 파일 확장자와 크기를 지정하는 코드
			var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
			var maxSize = 5242880; // 5MB
			
			function checkExtension(fileName, fileSize) {
				if(fileSize >= maxSize){
					alert("파일 사이즈를 초과했습니다!");
					return false;
				}
				
				if(regex.test(fileName)){
					alert("해당 종류의 파일은 업로드할 수 없습니다!");
					return false;
				}
				return true;				
			}
			var cloneObj = $(".uploadDiv").clone();			
			
			$("#uploadBtn").on("click", function (e) {
				var formData = new FormData();
				var inputFile = $("input[name='uploadFile']");
				var files = inputFile[0].files;
				console.log(files);

				for (var i = 0; i < files.length; i++) {

					if(!checkExtension(files[i].name, files[i].size)){
						return false;
					}
					
					formData.append("uploadFile", files[i]);
				}

				$.ajax({  // 첨부파일 데이터 전송 코드
					url : '/uploadAjaxAction',
					processData : false,
					contentType : false,
					data : formData,
					type : 'POST',
					dataType: 'json',
					success : function(result) {
						console.log(result);
						showUploadedFile(result);
						$(".uploadDiv").html(cloneObj.html());
					}
				}); // $.ajax	
			});		

			var uploadResult = $(".uploadResult ul");

				function showUploadedFile(uploadResultArr) {
					var str = "";
					
					$(uploadResultArr).each(function(i, obj) { // 이미지 파일이 아닌 경우 파일 아이콘을 보여주게 하는 코드
						if(!obj.image){

							var fileCallPath = encodeURIComponent(obj.uploadPath+ "/" + obj.uuid + "_" + obj.fileName);
							str += "<li><div><a href='/download?fileName=" + fileCallPath + "'>" + "<img src='/resources/img/attach.png'>"+obj.fileName+"</a>"+"<span data-file=\'"+fileCallPath+"\' data-type='file'> x </span>"+"</div></li>"
						} else{

							var fileCallPath = encodeURIComponent(obj.uploadPath+ "/s_" + obj.uuid + "_" + obj.fileName);
							var originPath = obj.uploadPath+ "\\" + obj.uuid + "_" + obj.fileName;
							originPath = originPath.replace(new RegExp(/\\/g), "/");							
							str += "<li><a href=\"javascript:showImage(\'"+originPath+"\')\">"+"<img src='display?fileName="+fileCallPath+"'></a>"+"<span data-file=\'" + fileCallPath+"\' data-type='image'> x </span>" + "</li>";
						}
					});
					
					uploadResult.append(str);
				}
		});
		
	</script>
	
</body>
</html>
