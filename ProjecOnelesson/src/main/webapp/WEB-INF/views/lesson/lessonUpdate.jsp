<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko" class="h-100" data-bs-theme="auto">
  <head>
    <title>레슨 등록</title>
	<script src="/docs/5.3/assets/js/color-modes.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
	
	
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.115.4">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text.html; charset=UTF-8">
    
    <link rel="canonical" href="https://getbootstrap.kr/docs/5.3/examples/sticky-footer-navbar/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">
	<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
	

	    <!-- Favicons -->
	<link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
	<link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
	<link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">

<meta name="theme-color" content="#712cf9">

<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }


      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }
      .bd-mode-toggle {
        z-index: 1500;
      }
      
      #image_container {
	    width: 400px;
	    height: 250px;
	    display: flex;
		border: 1px solid #ccc; 
	    justify-content: center;
	    align-items: center;
	  }
	.imagespace{
	  float: left;
	  padding: 0px 50px 10px 10px;
  	}
	  hr{
	  clear: both;
  	}   
	.select-wrapper {
		display:flex;
		flex-direction: row;
    	}
      .select-wrapper select {
	      width: 200px;
	    }
        #image_container img {
            max-width: 100%;
            max-height: 100%;
        }
		.ck-editor__editable {
        	min-height: 500px;
    	}
    </style>

    <!-- Custom styles for this template -->
    <link href="sticky-footer-navbar.css" rel="stylesheet">
  </head>
  <body class="d-flex flex-column h-100">
<c:if test="${empty sessionScope.id }">
<script>
alert("로그인이 필요합니다.");
window.location.href = "${pageContext.request.contextPath}/member/memberLogin";
</script>

</c:if>
<c:if test="${not empty errorMessage}">
    <script>alert('${errorMessage}');</script>
</c:if>

<jsp:include page="../inc/header.jsp" />

<!-- Begin page content -->
<main class="flex-shrink-0" style="padding-top: 100px">
  <div class="container" style="width: 1120px">
    <h1 class="mt-5">레슨 등록</h1>
    <p class="lead">레슨 등록 페이지입니다.</p>
    <hr>
	<form id="lessonForm" action="${pageContext.request.contextPath}/lesson/lessonUpdatePro" method="post" enctype="multipart/form-data">
	<input type="hidden" name="num" value="${lessonDTO.num }">
<div id="topinfo" style="display: inline; ">
    <div class="imagespace">
	<div id="image_container"></div>
	<input type="file" name="preview" id="image" accept="image/*" onchange="setThumbnail(event);" style="padding-top: 10px;" value="${lessonDTO.preview}" required>
	</div>
  
  <div class="mb-3 row">
  <label class="col-sm-2 col-form-label">카테고리</label>
  <div class="col-sm-10">
    <div class="select-wrapper" >
      <select class="form-control" id="category" name="category" required>
        <option value="">-- 카테고리 선택 --</option>
        <option value="요리">요리</option>
        <option value="스포츠">스포츠</option>
        <option value="공예">공예</option>
        <option value="예술">예술</option>
        <option value="기타">기타</option>
      </select>
      <select class="form-control" id="subCategory" name="subCategory" required>
      </select>
    </div>
    </div>
  </div>
    
	<div class="mb-3 row">
 		<label for="staticEmail" class="col-sm-2 col-form-label">작성자</label>
    	<div class="col-sm-10">
      		<input type="text" name="id" readonly class="form-control-plaintext" id="staticEmail" value="${sessionScope.id }">
    	</div>
	</div>

	<div class="mb-3 row">
		<label for="date" class="col-sm-2 col-form-label">날짜</label>
    	<div class="col-sm-6">
			<input type="date" id="date" name="date" class="form-control" value="${lessonDTO.date }" required>
		</div>
	</div>
	
	<div class="mb-3 row">
		<label for="text" class="col-sm-2 col-form-label">위치</label>
    	<div class="col-sm-6">
			<input type="text" id="location" name="location" class="form-control" readonly value="${lessonDTO.location }">
		</div>
	</div>
	
	<div class="mb-3 row">
   	<label class="col-sm-2 col-form-label">가격</label>
	   	<div class="col-sm-4">
			<div class="input-group mb-3">
			  <input type="number" name="price" class="form-control" min="0" step="100" value="${lessonDTO.price }" required>
			  <span class="input-group-text">원</span>
			</div>
		</div>
	</div>
	</div>
	<hr>
	<div class="input-group mb-3">
	  <span class="input-group-text" id="inputGroup-sizing-default">제목</span>
	  <input type="text" name="subject" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${lessonDTO.subject }" required>
	</div>
	
	<div class="form-group">
	<!-- 	<label for="text">상세 설명</label> -->
<!-- 	<div id="content"></div> -->
<!-- 	  <input type="hidden" id="contentInput" name="content"> -->
		<div class="col-12">
		    <label for="myEditor" class="form-label">상세 설명</label>
		    <textarea id="myEditor" name="content" class="form-control mb-3">${lessonDTO.content }</textarea>
		</div>
    </div>	
	<hr>
	<div class="mb-3 row">
	  <div class="col-sm-1">
	    <label for="inputPassword" class="col-form-label">비밀번호</label>
	  </div>
	  <div class="col-sm-2">
	    <input type="password" name="pass" class="form-control" id="inputPassword">
	  </div>
	  <div class="col-sm-2 ml-auto">
	    <input type="submit" class="btn btn-success" value="등록">
	  </div>
	</div>
    </form>
    </div>
	<script src="https://cdn.ckeditor.com/ckeditor5/29.0.0/classic/ckeditor.js"></script>
	<script>
	  ClassicEditor
	    .create(document.querySelector('#myEditor'))
	    .catch(error => console.error(error));
	</script>
	
	<script>
	  $(document).ready(function(){
	    var subCategories = {
	        "요리": ["베이킹", "쿠킹"],
	        "스포츠": ["스키", "수영", "야구"],
	        "공예": ["도자기", "목공예", "천공예"],
	        "예술": ["그림", "음악", "무용"],
	        "기타": ["기타"]
	    };
	    $('#category').change(function(){
	      var selectedCategory = $(this).val();
	      var subCategorySelect = $('#subCategory');
	      subCategorySelect.empty();
	      if (selectedCategory) {
	        subCategories[selectedCategory].forEach(function(subCategory){
	          var newOption = new Option(subCategory, subCategory, false, false);
	          subCategorySelect.append(newOption);
	        });
	      }
	    });
	  });
	</script>
	<script>
	  $(document).ready(function(){
	    var subCategories = {
	        "요리": ["베이킹", "쿠킹"],
	        "스포츠": ["스키", "수영", "야구"],
	        "공예": ["도자기", "목공예", "천공예"],
	        "예술": ["그림", "음악", "무용"],
	        "기타": ["기타"]
	    };
	    $('#category').change(function(){
	      var selectedCategory = $(this).val();
	      var subCategorySelect = $('#subCategory');
	      subCategorySelect.empty();
	      if (selectedCategory) {
	        subCategories[selectedCategory].forEach(function(subCategory){
	          var newOption = new Option(subCategory, subCategory, false, false);
	          subCategorySelect.append(newOption);
	        });
	      }
	    });
	  });
	</script>
    <script>
        function setThumbnail(event) {
            var reader = new FileReader();
            reader.onload = function(event) {
                var img = document.createElement("img");
                img.setAttribute("src", event.target.result);
                document.querySelector("div#image_container").appendChild(img);
                var imgContainer = document.querySelector("div#image_container");
                imgContainer.innerHTML = ''; // 기존에 있던 이미지를 제거합니다.
                imgContainer.appendChild(img); // 새 이미지를 추가합니다.
            };
            reader.readAsDataURL(event.target.files[0]);
        }
    </script>
    
<!--     카카오api -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	window.onload = function(){
	    document.getElementById("location").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                document.getElementById("location").value = data.address; // 주소 넣기
	            }
	        }).open();
	    });
	}
	</script>
<!--     카카오api -->
    
</main>

<jsp:include page="../inc/footer.jsp" />
<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>
    </body>
</html>
