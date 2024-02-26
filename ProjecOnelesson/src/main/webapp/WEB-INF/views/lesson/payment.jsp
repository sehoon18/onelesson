<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en" class="h-100" data-bs-theme="auto">
  <head>
  <script src="/docs/5.3/assets/js/color-modes.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.115.4">
    <title>결제</title>
	    <link rel="canonical" href="https://getbootstrap.kr/docs/5.3/examples/sticky-footer-navbar/">
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">

    <!-- Favicons -->	
     <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	 <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
<!-- <link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180"> -->
<!-- <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png"> -->
<!-- <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png"> -->
<!-- <link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json"> -->
<!-- <link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9"> -->
<!-- <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico"> -->

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
	    width: 360px;
	    height: 240px;
	    display: flex;
		border: 1px solid #ccc; 
	    justify-content: center;
	    align-items: center;
	  }
	.imagespace{
	  float: left;
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
	    width: 1100px;
	    height: 500px;
	    margin-bottom: 50px;
	    }
    </style>

    <!-- Custom styles for this template -->
    <link href="sticky-footer-navbar.css" rel="stylesheet">
  </head>
  <body class="d-flex flex-column h-100">

  <!-- Fixed navbar -->
<jsp:include page="../inc/header.jsp" />
<!-- Begin page content -->
<main class="flex-shrink-0" style="padding-top: 100px; ">
  <div class="container" style="width:1120px;">
  
    <h1 class="mt-5">결제</h1>
    <p class="lead">${lessonDTO.subject }</p>
    <hr>
    <table>
    	<tr><td rowspan="5" style="width:500px;">    
    	<div class="imagespace">
		<div id="image_container">
			<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" role="img" aria-label="Placeholder: Thumbnail" focusable="false">
			    <image xlink:href="${pageContext.request.contextPath}/resources/upload/${lessonDTO.preview}" x="0" y="0" width="100%" height="225"/>
			</svg>
		</div>
		</div>
		</td>
		<td>  
	  	<div id="info" style="width: 140px">카테고리</div>
    	</td><td style="width: 400px">${lessonDTO.category } / ${lessonDTO.subCategory }</td>
    	<td rowspan="5" style="vertical-align : bottom;">
    	</td></tr>
    	<tr><td>
 		<div id="info">강사명</div>
	</td><td>${lessonDTO.id }</td></tr>
    	<tr><td>
   		<div id="info">위치</div>
		</td><td>${lessonDTO.location }</td></tr>
    	<tr><td>
		<div id="info">날짜</div>
	</td><td><b>${lessonDTO.date }</b></td></tr>
    	<tr><td>
   		<div id="info">가격</div>
		</td><td><b><fmt:formatNumber value="${lessonDTO.price }" type="currency"/></b></td></tr>
    </table>
    <hr>
    <div id="pay_container">
    <table>
    <tr><td style="width: 1100px; height: 50px; vertical-align: top; padding: 6px;">주문자 정보</td>
    </tr>
    <tr><td style="height: 60px; vertical-align: top; padding: 10px;">
    	<div class="mb-3 row">
 		<label for="staticEmail" class="col-sm-2 col-form-label">아이디</label>
    	<div class="col-sm-4">
      		<input type="text" readonly class="form-control" id="staticEmail" value="${sessionScope.id }">
    	</div>
	</div>
    </td></tr>
    
    <tr><td style="height: 60px; vertical-align: top; padding: 10px;">
	<div class="mb-3 row">
 		<label for="staticEmail" class="col-sm-2 col-form-label">이름</label>
    	<div class="col-sm-4">
      		<input type="text" readonly class="form-control" id="staticEmail" value="${memberDTO.name }">
    	</div>
    </div>
    </td></tr>
    
    <tr><td style="height: 60px; vertical-align: top; padding: 10px;">
	<div class="mb-3 row">
 		<label for="staticEmail" class="col-sm-2 col-form-label">이메일</label>
    	<div class="col-sm-4">
      		<input type="text" readonly class="form-control" id="staticEmail" value="${memberDTO.email }">
    	</div>
    </div>
    </td></tr>

    <tr><td style="height: 60px; vertical-align: top; padding: 10px;">
	<div class="mb-3 row">
 		<label for="staticEmail" class="col-sm-2 col-form-label">전화번호</label>
    	<div class="col-sm-4">
      		<input type="text" readonly class="form-control" id="staticEmail" value="${memberDTO.phone }">
    	</div>
    </div>
    </td></tr>
    
    <tr><td style="height: 50px;"><div style="text-align: right;"><button id="payment-button" class="btn btn-success">결제하기</button>
		<button class="btn btn-outline-success" onclick="location.href=">뒤로가기</button></div></td>
    </tr>
    </table>
    <hr>
    </div>

<script>
  var IMP = window.IMP; // 생략 가능
  var method = 'kg_inicis'; // 결제 방식
  var num = '${lessonDTO.num}'; // 강의 번호
  IMP.init('imp26074165'); // 가맹점 식별코드를 실제 코드로 대체

  document.getElementById('payment-button').addEventListener('click', function() {
    IMP.request_pay({
        pg: 'html5_inicis',
        method: 'kg_inicis',
        merchant_uid: 'merchant_' + new Date().getTime(),
        name: '${lessonDTO.subject }',
        amount: ${lessonDTO.price},
    }, function (rsp) {
        console.log(rsp);
        if (rsp.success) {
            var msg = '결제가 완료되었습니다.';
            
            // 서버에 결제 데이터를 전송
            $.ajax({
                url: '${pageContext.request.contextPath}/lesson/paymentPro', // 서버 API URL
                method: 'POST',
                data: {
                	method:method,
                	num:num
                }
            }).done(function(data) {
                // 서버로부터 응답을 받았을 때의 처리
                alert(msg);
                location.href = "${pageContext.request.contextPath}/lesson/lessonList";
            }).fail(function(error) {

                // 에러 발생 시 처리
                alert('서버와의 통신에 실패하였습니다.');
            });
        } else {
          var msg = '결제에 실패하였습니다.';
          msg += '에러내용 : ' + rsp.error_msg;
          alert(msg);
        }
      });
  });
</script>

    </div>

</main>

<jsp:include page="../inc/footer.jsp" />
    </body>
</html>
