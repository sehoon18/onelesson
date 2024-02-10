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
	    #pay_container{
	    border: 1px solid #ccc;
	    width: 1296px;
	    height: 500px;
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
    <h1 class="mt-5">결제</h1>
    <p class="lead">강의명 : 홍길동과 함께하는 즐거운 수영교실</p>
    <hr>
    <table style="width: 1296px">
    	<tr><td rowspan="5" style="width:500px;">    
    	<div class="imagespace">
		<div id="image_container" style="margin: 5px 15px;"></div>
		</div>
		</td>
		<td>  
	  	<div id="info" style="width: 100px">카테고리</div>
    	</td><td style="width: 500px">수영</td>
    	<td rowspan="5" style="width: 200px; vertical-align : bottom;">
   			<button type="button" class="btn btn-primary btn-lg" onclick="">결제하기</button>
    	</td></tr>
    	<tr><td>
 		<div id="info">강사명</div>
	</td><td>홍길동</td></tr>
    	<tr><td>
   		<div id="info">위치</div>
		</td><td>부산광역시 부산진구 중앙대로123</td></tr>
    	<tr><td>
		<div id="info">날짜</div>
	</td><td><b>2024-01-01</b></td></tr>
    	<tr><td>
   		<div id="info">가격</div>
		</td><td><b>50,000원</b></td></tr>
    </table>
    <hr>
    <div id="pay_container"></div>
    
    </div>

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
