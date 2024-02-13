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
  	<c:forEach var="boardDTO" items="${boardList}">
    <tr onclick="location.href='${pageContext.request.contextPath}/board/noticeContent?num=${boardDTO.num}'">
        <c:choose>
            <c:when test="${boardDTO.type == '공지'}">
                <td>${boardDTO.num}</td>
                <td>${boardDTO.type}</td>
                <td>${boardDTO.subject}</td>
                <td><fmt:formatDate value="${boardDTO.date}" pattern="yyyy.MM.dd"/></td>
                <td>${boardDTO.readcount}</td>
            </c:when>
            <c:when test="${boardDTO.type == '이벤트'}">
                <td>${boardDTO.num}</td>
                <td>${boardDTO.type}</td>
                <td>${boardDTO.subject}</td>
                <td><fmt:formatDate value="${boardDTO.date}" pattern="yyyy.MM.dd"/></td>
                <td>${boardDTO.readcount}</td>
            </c:when>
        </c:choose>
    </tr>
</c:forEach>

  </tbody>
</table>

	<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
        <li class="page-item">
            <c:if test="${pageDTO.startPage > pageDTO.pageBlock}">
                <a class="page-link" href="${pageContext.request.contextPath}/board/noticeList?pageNum=${pageDTO.startPage - pageDTO.pageBlock}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </c:if>
        </li>

        <c:forEach var="i" begin="${pageDTO.startPage}" end="${pageDTO.endPage}" step="1">
            <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/board/noticeList?pageNum=${i}">${i}</a></li>
        </c:forEach>

        <li class="page-item">
            <c:if test="${pageDTO.endPage < pageDTO.pageCount}">
                <a class="page-link" href="${pageContext.request.contextPath}/board/noticeList?pageNum=${pageDTO.startPage + pageDTO.pageBlock}" aria-label="Next">
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