<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko" data-bs-theme="auto">
  <head><script src="../assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.115.4">

<!-- css 필수 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    



    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @	 (min-width: 768px) {
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
      
	  .orange{
	  color:rgb(241, 50, 107);
	  }
	  .blue{
	  color:rgb(73, 71, 194)
	  }
	  
	  /* 	  카테고리 밑줄    */
	  .catecolor {
	  color:black;
	  text-decoration:none;
	  }
	  /* 	  카테고리 밑줄 마우스 올리면   */
	 .catecolor:hover {
		color: red;
		text-decoration:underline;
	}

	

    </style>

    
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/main/main.css" rel="stylesheet">
  </head>
  <body>
   
<!-- 헤더 파일 들어가는 곳 -->
<jsp:include page="../inc/header.jsp" />
<!-- 헤더 파일 들어가는 곳 -->

    

<main>
<!-- 	슬라이드 -->
  <div id="myCarousel" class="carousel slide" >
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
    </div>
    
    <div class="carousel-inner" >
<!--     1번째 이미지  -->
      <div class="carousel-item active">
      <a href="${pageContext.request.contextPath}/lesson/lessonList" target="_blank"></a>
      	<img src="${pageContext.request.contextPath}/resources/images/main/top3.png" width="100%" height="100%" class="d-block w-100" alt="First slide" >
<!--       	보러가기 버튼 위치 조정 -->
      	 <div class="position-absolute bottom-50 start-0 w-100 d-flex justify-content">
            <button class="btn btn-primary" style="margin-left: 440px;"  onclick="location.href='${pageContext.request.contextPath}/lesson/lessonList'">레슨 보러가기</button>
            <button class="btn btn-primary" style="margin-left: 350px;"  onclick="location.href='${pageContext.request.contextPath}/lesson/lessonList'">레슨 보러가기</button>
            <button class="btn btn-primary " style="margin-left: 340px;" onclick="location.href='${pageContext.request.contextPath}/lesson/lessonList'">레슨 보러가기</button>
        </div>
    </div>
      	
      <!--     2번째 이미지  -->
      <div class="carousel-item"> 
      <a href="${pageContext.request.contextPath}/member/notice">
      <img src="${pageContext.request.contextPath}/resources/images/main/event.png"  width="100%" height="100%"> </a>
      </div>
      
    
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</div>

  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->


      <!-- 카테고리 -->
  <div class="container marketing">
    <div class="row justify-content-center">
        <div class="col-lg-4 col-md-3 col-sm-4">
            <div class="text-center">
            <!--            카테고리이미지1 -->
            <a href="${pageContext.request.contextPath}/lesoon/lessonList"> 
                <img src="${pageContext.request.contextPath}/resources/images/main/cooking.png" class="rounded-circle" alt="category Image" width="140" height="140">
             </a>
			 <h2 class="fw-normal"><a class="catecolor" href="${pageContext.request.contextPath}/lesoon/lessonList">요리</a></h2>
            </div>
        </div>
        <div class="col-lg-4 col-md-3 col-sm-4">
            <div class="text-center">
            <!--            카테고리이미지2 -->
            <a href="${pageContext.request.contextPath}/lesoon/lessonList"> 
                <img src="${pageContext.request.contextPath}/resources/images/main/sports.png" class="rounded-circle" alt="Profile Image" width="140" height="140">
                </a>
                <h2 class="fw-normal"><a class="catecolor" href="${pageContext.request.contextPath}/lesoon/lessonList">스포츠</a></h2>
            </div>
        </div>
        <div class="col-lg-4 col-md-3 col-sm-4">
            <div class="text-center">
            <!--            카테고리이미지3 -->
            <a href="${pageContext.request.contextPath}/lesoon/lessonList"> 
                <img src="${pageContext.request.contextPath}/resources/images/main/craft.png" class="rounded-circle" alt="Profile Image" width="140" height="140">
                </a>
                <h2 class="fw-normal"><a class="catecolor" href="${pageContext.request.contextPath}/lesoon/lessonList">공예</a></h2>
            </div>
        </div>
        <div class="col-lg-4 col-md-3 col-sm-4">
            <div class="text-center">
            <!--            카테고리이미지4 -->
            <a href="${pageContext.request.contextPath}/lesoon/lessonList">
                <img src="${pageContext.request.contextPath}/resources/images/main/art.png" class="rounded-circle" alt="Profile Image" width="140" height="140">
                </a>
                <h2 class="fw-normal"><a class="catecolor" href="${pageContext.request.contextPath}/lesoon/lessonList">예술</a></h2>
            </div>
        </div>
        <div class="col-lg-4 col-md-3 col-sm-4">
            <div class="text-center">
<!--           			    카테고리이미지5 -->
			<a href="${pageContext.request.contextPath}/lesoon/lesoonlist"> 
                <img src="${pageContext.request.contextPath}/resources/images/main/etc.png" class="rounded-circle" alt="Profile Image" width="140" height="140">
                </a>
                <h2 class="fw-normal"><a class="catecolor" href="${pageContext.request.contextPath}/lesoon/lessonList">기타</a></h2>
            </div>
        </div>
    </div>
<!-- 	가테고리 끝 -->

   
    <hr class="featurette-divider">

   <div class="row featurette">
  <div class="col-md-7">
  </div>
  <!-- 리뷰 이미지 -->
  <div class="col-md-5 text-center" style="width: 2000px"> 
    <img src="${pageContext.request.contextPath}/resources/images/main/review.png" class="img-fluid" alt="Responsive image" style=" width: 100%" height="100%">
  </div>
</div>

    <hr class="featurette-divider" name="info">

    <div class="row featurette">
      <div class="col-md-5 text-center" style="width: 2000px"> <!-- 이미지 -->
    <img src="${pageContext.request.contextPath}/resources/images/main/guide1.png" class="img-fluid" alt="Responsive image" style=" width: 100%" height="100%">
      </div>
      <div class="col-md-7 order-md-2" style="width: 2000px"><br><br><br><br><br>	<!-- 텍스트 -->
        <h1><span class=blue>01</span></h1>
        <h2>'<span class="orange">원레슨</span>' 서비스 어떻게 시작되었나요?</h2><br>
        <p>오늘날 빠르게 변화하는 세상에서 많은 사람들은 바쁜 일정으로 인해 장기 수업이나 강좌에 참여하기가 어렵다고 생각합니다. 그래서 1일 수업을 제공하면 개인이 부담 없이 참여할 수 있고
           장기 프로그램 또는 진로에 확신이 없는 사람들이 다양한 경험을 통해 나아가야 할 방향을 결정하기 전 여러 분야에 대해 활동을 해볼 수 있는 곳이 필요하다고 생각해서 시작했습니다.</p><br><br>
         <h1><span class=blue>02</span></h1>
        <h2>'<span class="orange">원레슨</span>' 서비스는 무엇인가요?</h2><br>
        <p>회원은 원하는 분야의 조건에 맞는 원데이 레슨을 찾아 신청할 수 있고, 강사는 원하는 조건에 맞게 원데이 레슨을 등록할 수 있는 서비스입니다. </p><br><br>
         <h1><span class=blue>03</span></h1>
        <h2>'<span class="orange">원레슨</span>' 은 회원과 강사 모두 안전하게 이용할 수 있습니다. </h2><br>
        <b>원레슨에 등록된 강사는 신뢰성과 안전성을 보장하기 위해 엄격한 심사 절차를 거칩니다. 각 강사의 학력, 경력 등 자격에 대한 철저한 검증을 거칩니다.</b><br>
        <b>마찬가지로 모든 회원에 대해서도 본인인증을 통해 신원 확인을 실시합니다.</b>
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-5" style="width: 2000px"> <!-- 이미지 -->
       <img src="${pageContext.request.contextPath}/resources/images/main/guide2.png" class="img-fluid" alt="Responsive image" style=" width: 100%" height="100%">
      </div>
      <div class="col-md-7" style="width: 2000px" ><br><br><br><br><br> <!-- 텍스트 -->
        <h1><span class=orange>01</span></h1>
        <h3><b>강사,일반 회원으로 가입해주세요.</b></h3><br>
        <p>강사 회원은 독점적으로 레슨 등록 및 수업 제공 자격을 가지고 있고, 일반 회원은 이용 가능한 레슨에 신청할 수 있습니다.</p><br><br>
        <h1><span class=orange>02</span></h1>
        <h3><b>레슨을 시작하세요.</b></h3><br>
        <p>강사 회원이 레슨을 등록할 때 원레슨의 등록 승인 절차를 거쳐 레슨을 시작하게 됩니다.</p><br>
        <p>일반 회원은 레슨을 신청할 날짜를 정하고 예약합니다. 레슨 하루 전 변경이나 취소는 불가합니다.</p><br><br>
        <h1><span class=orange>03</span></h1>
        <h3><b>이제 원하는 강사님과 만나보세요.</b></h3><br>
        <p>레슨 일정을 잡으셨다면 원레슨에서 제공하는 문의/답변 시스템을 통해 강사님과 회원님이 소통할 수 있습니다.</p>
        <p>레슨에 대해 궁금한 점이나 레슨 방향에 관해 충분히 얘기를 나누는 시간을 갖습니다. 모두 유익한 시간을 보내셨나요? 이제 행복한 원데이 레슨을 시작하세요!</p>
      </div>
    </div>
<br><br><br><br><br><br><br><br><br>






  </div><!-- /.container -->


<!-- 푸터 들어가는 곳 -->
<jsp:include page="../inc/footer.jsp" />
<!-- 푸터 들어가는 곳 -->


</main>
<!-- 필수 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
