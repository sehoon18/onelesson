<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="ko" class="h-100" data-bs-theme="auto" xmlns:th="http://www.thymeleaf.org">
  <head>
  <script src="/docs/5.3/assets/js/color-modes.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.115.4">
    <title>레슨 정보</title>
	    <link rel="canonical" href="https://getbootstrap.kr/docs/5.3/examples/sticky-footer-navbar/">
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">
	    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
		

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
	    #info{
		margin-right: 50px;
	    }
	.heart {
    color: gray;
	}
	.fas.fa-heart {
    color: red;
	}
    </style>

    <!-- Custom styles for this template -->
    <link href="sticky-footer-navbar.css" rel="stylesheet">
  </head>
  <body class="d-flex flex-column h-100">

  <!-- Fixed navbar -->
<jsp:include page="../inc/header.jsp" />

<!-- Begin page content -->
<main class="flex-shrink-0" style="padding-top: 100px">
  <div class="container" style="width: 1100px">
    <h1 class="mt-5">
	  ${lessonDTO.subject}
	</h1>
    <hr>
    
    <table>
    	<tr><td rowspan="5" style="width:420px;">    
    	<div class="imagespace">
		<div id="image_container" style="margin: 5px 15px;">
			<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" role="img" aria-label="Placeholder: Thumbnail" focusable="false">
			    <image xlink:href="${pageContext.request.contextPath}/resources/upload/${lessonDTO.preview}" x="0" y="0" width="100%" height="225"/>
			</svg>
		</div>
		</div>
		</td>
		<td>  
	  	<div id="info" style="width: 100px">카테고리</div>
    	</td><td style="width: 400px">${lessonDTO.category} / ${lessonDTO.subCategory }</td>
    	<td rowspan="5" style="vertical-align : bottom;">
    	<div class="btn-group-vertical" role="group" aria-label="Vertical button group">
 			<button type="button" class="btn btn-success"  onclick="location.href='${pageContext.request.contextPath}/lesson/payment?num=${lessonDTO.num}'">예약하기</button>
			<button type="button" class="btn btn-success"  onclick="location.href='${pageContext.request.contextPath}/board/lessonQnaWrite?num=${lessonDTO.num}'">문의</button>
			<c:set var="isFilled" value="${wishList.contains(lessonDTO.num) ? 'filled' : ''}" />
			<button type="button" class="btn btn-outline-success" onclick="toggleHeart(this)" name="num" value="${lessonDTO.num }"><i class="${isFilled == 'filled' ? 'fas' : 'far'} fa-heart heart"></i></button>
		</div>
    	</td></tr>
    	<tr><td>
 		<div id="info">등록자</div>
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
	
	<div class="form-group">
	<div style="width: 1080px; word-wrap: break-word; padding: 10px;">${lessonDTO.content }</div>
	<c:if test="${not empty lessonDTO.detail }">
	<img src="${pageContext.request.contextPath}/resources/upload/${lessonDTO.detail}" style="width: 100%; height: auto;">
	</c:if>
	<hr>
<!-- 	<h4 style="margin: 0px 30px;">리뷰</h4> -->
	<c:if test="${not empty boardList }">
	<table class="table" >
		<tr style="text-align: center;"><th style="width: 100px;">리뷰번호</th><th style="width: 200px;">이미지</th><th style="width: 400px;">내용</th><th style="width: 180px;">별점</th><th style="width: 100px;">등록일</th></tr>
     	<c:forEach var="boardDTO" items="${boardList }">
		<tr style="height: 120px;"><td style="text-align: center;">${boardDTO.num }</td>
		<td><svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="240" height="100" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice" focusable="false"><image xlink:href="${pageContext.request.contextPath}/resources/upload/${boardDTO.image}" x="0" y="0" width="100%"/></svg></td>
		<td>${boardDTO.content }</td>
		<td style="text-align: center;">
		<script>
			var rating = ${boardDTO.rating};
			var stars = '';
			for (var i = 1; i <= 5; i++) {
			    if (i <= rating) {
			        stars += '<span style="color: yellow;">★</span>';
			    } else {
			        stars += '<span style="color: #ccc;">☆</span>';
			    }
			}
			document.write(stars);
		</script></td>
		<td style="text-align: center;"><fmt:formatDate value="${boardDTO.update }" pattern="yyyy-MM-dd"/></td></tr>
		</c:forEach>
	</table>
	</c:if>
   	<c:if test="${empty boardList }">
	<p>등록된 리뷰가 없습니다.</p>
   	</c:if>
    </div>	
    </div>
    
<script>
    function toggleHeart(el) {
        var id = '${sessionScope.id}';
        if(id == null || id == '') {
            alert('로그인이 필요합니다.');
            return;
        }
        var heartIcon = el.querySelector('.heart');
        var filled = heartIcon.classList.contains('fas');  // 현재 하트 아이콘의 상태 확인
        heartIcon.classList.toggle('fas'); 
        heartIcon.classList.toggle('far');
        
        var num = el.value;
        

        $.ajax({
            url: '${pageContext.request.contextPath}/board/wishToggle',
            type: 'POST',
            data: {
                'id' : id,
                'wish' : filled ? 'remove' : 'add',  // 현재 상태에 따라 'add' 또는 'remove'
                'num' : num
            },
            success: function(result) {
                alert(result.message);
            },
            error: function(request, status, error) {
                alert('오류가 발생했습니다');
            }
        });
    }
</script>
<script th:inline="javascript">
    var message = '${message}';
    
    if (message) {
        alert(message);
    }
</script>    
</main>

<jsp:include page="../inc/footer.jsp" />

    </body>
</html>
