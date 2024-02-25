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

<style>
    .table th,
    .table td {
        text-align: center;
    }	
    a.title-link {
    text-decoration: none;
    color: black;
    }
</style>

</head>
<body class="sb-nav-fixed">

	<jsp:include page="inc/top.jsp" />
        
    <jsp:include page="inc/left.jsp" />    
        
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">공지 / 이벤트</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">공지 / 이벤트 관리 목록입니다.</li>
                    </ol>
                    
<table class="table table-hover table-sm">
<col width="70"><col width="70"><col width="600"><col width="300"><col width="70">
<thead>
<tr class="bg-primary" style="color: white;">
	<th>번호</th><th>타입</th><th>제목</th><th>작성일</th><th>조회수</th>
</tr>
<c:forEach var="adminNoticeDTO" items="${noticeList}">
	<tr><td>${adminNoticeDTO.num}</td>
	<c:if test="${adminNoticeDTO.type == 0}">
	<td>공지</td>
	</c:if>
	<c:if test="${adminNoticeDTO.type == 1}">
	<td>이벤트</td>
	</c:if>
	<td><a class="title-link" href="${pageContext.request.contextPath}/admin/noticeContent?num=${adminNoticeDTO.num}">${adminNoticeDTO.subject}</a></td>
	<td><fmt:formatDate value="${adminNoticeDTO.date}" pattern="yyyy-MM-dd"/></td>
	<td>${adminNoticeDTO.readcount}</td></tr>
</c:forEach>
</thead>
</table>
<nav aria-label="Page navigation example" style="margin-top: 10px">
  <ul class="pagination justify-content-center">
  <c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/notice?pageNum=${pageDTO.startPage - pageDTO.pageBlock}">Previous</a></li>
  </c:if>
  
  <c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/notice?pageNum=${i}">${i }</a></li>
  </c:forEach>
  
  <c:if test="${pageDTO.endPage < pageDTO.pageCount }">
    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/notice?pageNum=${pageDTO.startPage + pageDTO.pageBlock}">Next</a></li>
  </c:if>  
  </ul>
</nav>

<form action="${pageContext.request.contextPath}/admin/notice" method="get">
<table style="margin-left: auto; margin-right: auto; margin-top: 3px; margin-bottom: 3px">
	<tr>
<!-- 		<td style="padding-left: 5px"> -->
<!-- 			<select class="custom-select" id="choice" name="choice"> -->
<!-- 				<option selected>검색</option> -->
<!-- 				<option value="subject">제목</option> -->
<!-- 				<option value="content">내용</option> -->
<!-- 			</select> -->
<!-- 		</td> -->
		<td style="padding-left: 5px" class="align-middle">
			<input type="text" class="form-control" id="search" name="search" placeholder="검색어" value="">
		<td style="padding-left: 5px">
			<span>
				<button type="button" class="btn btn-info">검색</button>
			</span>
		</td>
	</tr>
</table>
</form>
<br>
<button class="btn btn-info" onclick="location.href='${pageContext.request.contextPath}/admin/noticeInsert'">글쓰기</button>
<button class="btn btn-outline-info">돌아가기</button>
<hr>
</div>
            </main>
            
            <jsp:include page="inc/bottom.jsp" />
            
        </div>

    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="../resources/js/admin/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="../resources/assets/admin/demo/chart-area-demo.js"></script>
    <script src="../resources/assets/admin/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
    <script src="../resources/js/admin/datatables-simple-demo.js"></script>
</body>
</html>
