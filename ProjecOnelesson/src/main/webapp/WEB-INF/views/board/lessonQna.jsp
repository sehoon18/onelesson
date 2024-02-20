<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>faqList</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript" src="./jquery/jquery.twbsPagination.min.js"></script>

<style type="text/css">
.table th, .table td {
	text-align: center;
	vertical-align: middle!important;
}

	#listDiv{
	width=980px;
	margin: auto;
	}
	a{
	text-decoration : none;
	color: black;
 	margin:auto; 
	
	}
	#listTable:hover{
	background-color: lightgray;
	}
	#listTable{
	margin:auto;
	border-collapse :collapse;
	border-left : inherit;
	border-right: inherit;
	}
</style>

</head>
<body bgcolor="#e9e9e9">
	<jsp:include page="../inc/header.jsp" />
<div style="background-size: cover; background-position: center; background-image: url('${pageContext.request.contextPath}/resources/images/qnaimage.jpg');">
  <section class="py-5 text-center container" style="height: 300px;">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light" style="color: white;">나의 문의</h1>
      </div>
    </div>
  </section>
</div>

<div align="center" style="margin-top: 50px;">

<table class="table table-hover table-sm" style="width: 1000px">
<col width="70"><col width="600"><col width="100"><col width="150">
<thead>
<tr class="bg-primary" style="color: white;">
	<th>번호</th><th>제목</th><th>작성일</th><th>조회수</th>
</tr>
</thead>
</table>
<div style="width: 1000px; border: 1px solid #ccc;">
<div id="listDiv">
<table id="listTable" border="1">
<tr><td style="width: 75px;">글번호</td><td style="width:650px; text-align: center;'">제목</td><td style="width: 105px;">작성일</td><td style="width: 160px;">조회수</td></tr>
<c:forEach var="boardDTO" items="${boardList}">
	<tr><td>${boardDTO.num}</td>
	<td>${boardDTO.name}</td>
	<td><a href="content.bo?num=${boardDTO.num}">${boardDTO.subject}</a></td>
	<td>${boardDTO.readcount}</td>
	<td>${boardDTO.date}</td></tr>
</c:forEach>

</table>

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
<table style="margin-left: auto; margin-right: auto; margin-top: 3px; margin-bottom: 3px">
	<tr>
		<td style="padding-left: 5px">
			<select class="custom-select" id="choice" name="choice">
				<option selected>검색</option>
				<option value="title">제목</option>
				<option value="content">내용</option>
			</select>
			
		</td>
		<td style="padding-left: 5px" class="align-middle">
			<input type="text" class="form-control" id="search" name="search" placeholder="검색어" value="">
		<td style="padding-left: 5px">
			<span>
				<button type="button" class="btn btn-info" onclick="searchBtn()">검색</button>
			</span>
		</td>
	</tr>
</table>
<br>
<button class="btn btn-info" onclick="location.href='${pageContext.request.contextPath}/board/lessonQnaWrite'">글쓰기</button>
<button class="btn btn-outline-info">돌아가기</button>
<hr>
</div>
 	<jsp:include page="../inc/footer.jsp" />
</body>
</html>