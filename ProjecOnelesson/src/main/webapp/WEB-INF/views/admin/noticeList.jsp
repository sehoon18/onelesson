<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>

  <script src="/docs/5.3/assets/js/color-modes.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>

<meta charset="UTF-8">
<title>공지/이벤트 목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

 		<link rel="canonical" href="https://getbootstrap.kr/docs/5.3/examples/sticky-footer-navbar/">
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">


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
	  padding: 0px 50px 10px 10px;
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
        #image_container img {
            max-width: 100%;
            max-height: 100%;
        }
    </style>


</head>
<body>

<jsp:include page="../inc/header.jsp"/>

<div class="container">
	<div class="h4 pb-2 mb-4 text-danger border-bottom border-secondary">
		<h4 class="text-center"><a href="#">공지사항/이벤트</a></h1>
	</div>

<div class="btn-group">
  <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    타입
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">공지</a></li>
    <li><a class="dropdown-item" href="#">이벤트</a></li>
  </ul>
</div>

<table class="table table-hover text-center">
  <thead class="table-dark">
    <tr>
      <th scope="col">번호</th>
      <th scope="col">타입</th>
      <th scope="col">제목</th>
      <th scope="col">작성일</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach var="adminBoardDTO" items="${noticeList}">
    <tr onclick="location.href='${pageContext.request.contextPath}/admin/noticeContent?num=${adminBoardDTO.num}'">
        <c:choose>
            <c:when test="${adminBoardDTO.type == '공지'}">
                <td>${adminBoardDTO.num}</td>
                <td>${adminBoardDTO.type}</td>
                <td>${adminBoardDTO.subject}</td>
                <td><fmt:formatDate value="${adminBoardDTO.date}" pattern="yyyy.MM.dd"/></td>
                <td>${adminBoardDTO.readcount}</td>
            </c:when>
            <c:when test="${adminBoardDTO.type == '이벤트'}">
                <td>${adminBoardDTO.num}</td>
                <td>${adminBoardDTO.type}</td>
                <td>${adminBoardDTO.subject}</td>
                <td><fmt:formatDate value="${adminBoardDTO.date}" pattern="yyyy.MM.dd"/></td>
                <td>${adminBoardDTO.readcount}</td>
            </c:when>
        </c:choose>
    </tr>
</c:forEach>

  </tbody>
</table>

<c:if test="${ ! empty sessionScope.id }">
	<div id="table_search">
	<input type="button" value="작성" class="btn" 
  	onclick="location.href='${pageContext.request.contextPath}/admin/noticeInsert'">
	</div>
</c:if>


	<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
        <li class="page-item">
            <c:if test="${pageDTO.startPage > pageDTO.pageBlock}">
                <a class="page-link" href="${pageContext.request.contextPath}/admin/noticeList?pageNum=${pageDTO.startPage - pageDTO.pageBlock}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </c:if>
        </li>

        <c:forEach var="i" begin="${pageDTO.startPage}" end="${pageDTO.endPage}" step="1">
            <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/noticeList?pageNum=${i}">${i}</a></li>
        </c:forEach>

        <li class="page-item">
            <c:if test="${pageDTO.endPage < pageDTO.pageCount}">
                <a class="page-link" href="${pageContext.request.contextPath}/admin/noticeList?pageNum=${pageDTO.startPage + pageDTO.pageBlock}" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </c:if>
        </li>
    </ul>
</nav>
</div>

<jsp:include page="../inc/footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>