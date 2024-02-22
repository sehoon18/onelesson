<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 목록</title>

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
</style>

</head>
<body bgcolor="#e9e9e9">
<jsp:include page="../inc/header.jsp" />
<div style="background-size: cover; background-position: center; background-image: url('${pageContext.request.contextPath}/resources/images/reviewimage.jpeg');">
  <section class="py-5 text-center container" style="height: 300px;">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
<!--         <h1 class="fw-light" style="color: white;">Q&A</h1> -->
      </div>
    </div>
  </section>
</div>

<div align="center">
<br>
<table class="table table-hover table-sm" style="width: 1000px">
<col width="70"><col width="600"><col width="200"><col width="150">
<thead>
<tr class="bg-primary" style="color: white;">
	<th>번호</th><th>내용</th><th>작성일</th><th>별점</th>
</tr>
<c:forEach var="boardDTO" items="${boardList }">
<tr class="bg-primary" style="color: white; height: 150px;">
	<td>${boardDTO.num }</td><td>${boardDTO.content }</td><td>${boardDTO.update}</td><td>${boardDTO.rating }</td>
</tr>
</c:forEach>

</thead>
</table>
<div style="width: 1000px; height: 300px;"></div>
<hr>
 <!-- 푸터 넣는곳 -->
<jsp:include page="../inc/footer.jsp" />
<!-- 푸터 넣는곳 --> </div>
 
</body>
</html>