<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head><script src="../assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.115.4">
    <title>OneLesson</title>
    
	<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/album/">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

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
      /*
      .row{
		  justify-content: center;
		  padding-top: 100px;
	  }
	  */
	  .catecolor {
	  color:black;
	  text-decoration:none;
	  }
	 .catecolor:hover {
		color: red;
		text-decoration:underline;
	}
	.heart {
    color: gray;
	}
	.fas.fa-heart {
    color: red;
	}
    </style>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </head>
  <body>
<jsp:include page="../inc/header.jsp" />

<main>
<div style="background-size: cover; background-position: center;"> <img src="${pageContext.request.contextPath}/resources/images/b_4.png" width="100%"/>
</div>
  <div class="album py-5 bg-body-tertiary">
  
	<div class="container">
	<div class="container marketing">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
      <c:forEach var="lessonDTO" items="${lessonList }">
   		<div class="col">
          <div class="card shadow-sm">
<%--           <fmt:formatDate value="${lessonDTO.update }" pattern="yyyy.MM.dd"/> --%>
            <a href="${pageContext.request.contextPath}/lesson/lessonInfo?num=${lessonDTO.num}"><svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" role="img" aria-label="Placeholder: Thumbnail" focusable="false">
			    <image xlink:href="${pageContext.request.contextPath}/resources/upload/${lessonDTO.preview}" x="0" y="0" width="100%" height="225"/>
			</svg></a>
            <div class="card-body">
            <div class="d-flex justify-content-between align-items-center" style="margin: 5px;">
              <a href="${pageContext.request.contextPath}/lesson/lessonInfo?num=${lessonDTO.num}" style="text-decoration: none; color: black;"><div>${lessonDTO.subject }</div></a>
                <small class="text-body-secondary">레슨일 : ${lessonDTO.date }</small>
            </div>
              <div class="d-flex justify-content-between align-items-center">
              	<small class="text-body-secondary"><fmt:formatNumber value="${lessonDTO.price }" type="currency"/></small>
                <div class="btn-group">
					<button type="button" class="btn btn-outline-success" onclick="location.href='${pageContext.request.contextPath}/lesson/lessonInfo?num=${lessonDTO.num}'">상세정보</button>
					<c:if test="${not empty memberDTO.type }">
					<c:if test="${memberDTO.type == 0 }">
					<c:set var="isFilled" value="${wishList.contains(lessonDTO.num) ? 'filled' : ''}" />
					<button type="button" class="btn btn-outline-success" onclick="toggleHeart(this)" name="num" value="${lessonDTO.num }"><i class="${isFilled == 'filled' ? 'fas' : 'far'} fa-heart heart"></i></button>
					</c:if>
					</c:if>
				</div>
              </div>
            </div>
          </div>
        </div>
      </c:forEach>
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
    
      </div>
	<nav aria-label="Page navigation example" style="margin-top: 10px">
	  <ul class="pagination justify-content-end">
	  <c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
	    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/lesson/lessonList?pageNum=${pageDTO.startPage - pageDTO.pageBlock}">Previous</a></li>
	  </c:if>
	  
	  <c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
	    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/lesson/lessonList?pageNum=${i}">${i }</a></li>
	  </c:forEach>
	  
	  <c:if test="${pageDTO.endPage < pageDTO.pageCount }">
	    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/lesson/lessonList?pageNum=${pageDTO.startPage + pageDTO.pageBlock}">Next</a></li>
	  </c:if>  
	  </ul>
	</nav>
    </div>
  </div>
  
</main>

<jsp:include page="../inc/footer.jsp" />

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
