<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="h-100" data-bs-theme="auto">
  <head>
  <script src="/docs/5.3/assets/js/color-modes.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.115.4">
    <title>레슨 등록</title>
	    <link rel="canonical" href="https://getbootstrap.kr/docs/5.3/examples/sticky-footer-navbar/">
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">

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

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
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
	  padding-bottom: 20px;
  	}
	  hr{
	  clear: both;
  	}   
	  .select-wrapper {
	      display: flex;
	      width: 100%;
	      max-width: 600px;
    	}
      .select-wrapper select {
	      width: 48%;
	    }
    </style>

    <!-- Custom styles for this template -->
    <link href="sticky-footer-navbar.css" rel="stylesheet">
  </head>
  <body class="d-flex flex-column h-100">

  <!-- Fixed navbar -->
	<jsp:include page="includeSource/navigationBar.jsp"/>

<!-- Begin page content -->
<main class="flex-shrink-0" style="padding-top: 100px">
  <div class="container">
    <h1 class="mt-5">레슨 등록</h1>
    <p class="lead">레슨 등록 페이지입니다.</p>
    <hr>
	<form action="${pageContext.request.contextPath}/lesson/lessonInsertPro" method="post" enctype="multipart/form-data" id="registerForm">
    <div class="imagespace">
	<div id="image_container"></div>
	<input type="file" name="preview" id="image" accept="image/*"
		onchange="setThumbnail(event);" />
	</div>

  <div class="mb-3 row">
  <label class="col-sm-2 col-form-label">카테고리</label>
    <div class="select-wrapper" >
      <select class="form-control" id="category">
        <option value="">-- 카테고리 선택 --</option>
        <option value="요리">요리</option>
        <option value="스포츠">스포츠</option>
        <option value="공예">공예</option>
        <option value="예술">예술</option>
        <option value="기타">기타</option>
      </select>
      <select class="form-control" id="subCategory" name="subCategory">
      </select>
    </div>
  </div>
    
	<div class="mb-3 row">
 		<label for="staticEmail" class="col-sm-2 col-form-label">작성자</label>
    	<div class="col-sm-10">
      		<input type="text" name="name" readonly class="form-control-plaintext" id="staticEmail" value="홍길동">
    	</div>
	</div>
	<div class="mb-3 row">
    	<label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
    	<div class="col-sm-4">
			<input type="password" name="pass" class="form-control" id="inputPassword">
    	</div>
	</div>
	<div class="mb-3 row">
		<label for="date" class="col-sm-2 col-form-label">날짜</label>
    	<div class="col-sm-10">
			<input type="date" id="date" name="date">
		</div>
	</div>
	
	<div class="mb-3 row">
   	<label class="col-sm-2 col-form-label">가격</label>
	   	<div class="col-sm-4">
			<div class="input-group mb-3">
			  <input type="number" name="price" class="form-control" aria-label="Amount">
			  <span class="input-group-text">원</span>
			</div>
		</div>
	</div>
	<hr>
	<div class="input-group mb-3">
	  <span class="input-group-text" id="inputGroup-sizing-default">제목</span>
	  <input type="text" name="subject" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
	</div>
	
	<div class="form-group">
	<label for="text">상세 설명</label>
 	<textarea id="myEditor" name="content"></textarea>
 	
    </div>	
	<hr>
	<input type="submit" class="btn btn-primary" value="등록">
    </form>
    </div>
    <script>
    var simplemde = new SimpleMDE({ element: document.getElementById("myEditor") });
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
    $(document).ready(function(){
      $("#registerForm").on("submit", function(e){
        e.preventDefault(); // 폼의 기본 submit 동작을 중지시킵니다.

        var lectureInfo = /* 강의 정보를 여기에 입력하세요 */;
        var popup = window.open("", "Popup", "width=300,height=200");
        popup.document.write("<p>강의를 등록하시겠습니까?</p>");
        popup.document.write("<button id='confirmBtn'>동의</button>");
        popup.document.close();

        popup.document.getElementById("confirmBtn").onclick = function(){
          $.ajax({
            url: "register.jsp",
            type: "post",
            data: { lectureInfo: lectureInfo },
            success: function(data){
              alert("강의가 등록되었습니다.");
              popup.close();
            },
            error: function(){
              alert("강의 등록에 실패하였습니다.");
            }
          });
        };
      });
    });
    </script>
</main>

<footer class="footer mt-auto py-3 bg-body-tertiary">
  <div class="container">
    <span class="text-body-secondary">Place sticky footer content here.</span>
  </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>
    </body>
</html>
