<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OneLesson</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
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
	
	a.title-link {
    text-decoration: none;
    color: black;
    }
</style>

</head>
<body bgcolor="#e9e9e9">
	<jsp:include page="../inc/header.jsp" />
<c:if test="${memberDTO.type == 1 }">
<div style="background-size: cover; background-position: center;"> <img src="${pageContext.request.contextPath}/resources/images/b_2.png" width="100%"/>
</div>
</c:if>
<c:if test="${memberDTO.type == 0 }">
<div style="background-size: cover; background-position: center;"> <img src="${pageContext.request.contextPath}/resources/images/b_1.png" width="100%"/>
</div>
</c:if>

<div align="center" style="margin-top: 100px; margin-bottom: 50px;">
<div style="margin: 0px auto; width: 1000px">
<table class="table table-hover" style="width: 1000px">
<col width="70"><col width="250"><col width="400"><col width="200"><c:if test="${memberDTO.type == 1 }"><col width="100"></c:if>
<thead>
<tr class="bg-primary" style="color: white;">
	<th class="table-success">번호</th>
	<th class="table-success"><c:if test="${memberDTO.type == 1 }">문의받은 레슨</c:if><c:if test="${memberDTO.type == 0 }">문의한 레슨</c:if></th>
	<th class="table-success">제목</th>
	<th class="table-success">작성일</th>
	<th class="table-success">비고</th>
</tr>
<c:forEach var="boardDTO" items="${boardList}">
	<tr><td>${boardDTO.num }</td>
	<td>${boardDTO.image}</td>
	<td><a class="title-link" href="${pageContext.request.contextPath}/board/lessonQnaContent?num=${boardDTO.num}">${boardDTO.subject}</a></td>
	<td>${boardDTO.update}</td>
	<td>
	<c:if test="${memberDTO.type == 0 }">
		<c:if test="${empty boardDTO.answer }">
			대기중
		</c:if>
		<c:if test="${not empty boardDTO.answer }">
			답변완료
		</c:if>
	</c:if>
	<c:if test="${memberDTO.type == 1 }">
		<c:if test="${empty boardDTO.answer }">
		<button class="btn btn-success btn-sm" onclick="location.href='${pageContext.request.contextPath}/board/lessonQnaAnswer?num=${boardDTO.num}'">답변하기</button>
		</c:if>
		<c:if test="${not empty boardDTO.answer }">
		<button class="btn btn-success btn-sm disabled">답변완료</button>
		</c:if>
	</c:if>
	</td></tr>
</c:forEach>
</thead>
</table>

<nav aria-label="Page navigation example" style="margin-top: 60px; margin-bottom: 60px;">
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

<!-- <table style="margin-left: auto; margin-right: auto; margin-top: 3px; margin-bottom: 3px"> -->
<!-- 	<tr> -->
<!-- 		<td style="padding-left: 5px"> -->
<!-- 			<select class="custom-select" id="choice" name="choice"> -->
<!-- 				<option selected>검색</option> -->
<!-- 				<option value="title">제목</option> -->
<!-- 				<option value="content">내용</option> -->
<!-- 			</select> -->
			
<!-- 		</td> -->
<!-- 		<td style="padding-left: 5px" class="align-middle"> -->
<!-- 			<input type="text" class="form-control" id="search" name="search" placeholder="검색어" value=""> -->
<!-- 		<td style="padding-left: 5px"> -->
<!-- 			<span> -->
<!-- 				<button type="button" class="btn btn-info" onclick="searchBtn()">검색</button> -->
<!-- 			</span> -->
<!-- 		</td> -->
<!-- 	</tr> -->
<!-- </table> -->
<br>
<%-- <button class="btn btn-info" onclick="location.href='${pageContext.request.contextPath}/board/lessonQnaWrite'">글쓰기</button> --%>
<button class="btn btn-outline-success" onclick="location.href='${pageContext.request.contextPath}/member/mypage'">돌아가기</button>
<br>
<br>
<br>
<hr>
</div>
 	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
