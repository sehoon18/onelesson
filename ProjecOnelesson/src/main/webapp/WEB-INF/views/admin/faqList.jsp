<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>회원 관리 - SB Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="../resources/css/admin/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    
  <script src="/docs/5.3/assets/js/color-modes.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>

<meta charset="UTF-8">
<title>자주 묻는 질문</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

 		<link rel="canonical" href="https://getbootstrap.kr/docs/5.3/examples/sticky-footer-navbar/">
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">

</head>
<body>

<jsp:include page="../admin/inc/top.jsp"/>

<jsp:include page="../admin/inc/left.jsp" /> 

        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">자주 묻는 질문</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">자주 묻는 질문 관리 목록입니다.</li>
                    </ol>
                    

<table class="table table-hover text-center">
  <thead class="table-dark">
    <tr>
      <th scope="col">번호</th>
      <th scope="col">타입</th>
      <th scope="col">제목</th>
    </tr>
  </thead>
<tbody>
<c:forEach var="adminFaqDTO" items="${faqList}">
    <tr onclick="location.href='${pageContext.request.contextPath}/admin/faqContent?num=${adminFaqDTO.num}'">
    	<td>${adminFaqDTO.num}</td>

        <td>${adminFaqDTO.subject}</td>
    </tr>
</c:forEach>
</tbody>
</table>

<c:if test="${sessionScope.id eq 'admin'}">
        <div class="row">
            <div class="col text-end">
                <input type="button" name="btn" value="작성" class="btn btn-primary"
                onclick="location.href='${pageContext.request.contextPath}/admin/faqInsert'">
            </div>
        </div>
</c:if>


	<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
        <li class="page-item">
            <c:if test="${pageDTO.startPage > pageDTO.pageBlock}">
                <a class="page-link" href="${pageContext.request.contextPath}/admin/faqList?pageNum=${pageDTO.startPage - pageDTO.pageBlock}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </c:if>
        </li>

        <c:forEach var="i" begin="${pageDTO.startPage}" end="${pageDTO.endPage}" step="1">
            <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/faqList?pageNum=${i}">${i}</a></li>
        </c:forEach>

        <li class="page-item">
            <c:if test="${pageDTO.endPage < pageDTO.pageCount}">
                <a class="page-link" href="${pageContext.request.contextPath}/admin/faqList?pageNum=${pageDTO.startPage + pageDTO.pageBlock}" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </c:if>
        </li>
    </ul>
</nav>
</div>
</main>

<jsp:include page="../admin/inc/bottom.jsp"/>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>