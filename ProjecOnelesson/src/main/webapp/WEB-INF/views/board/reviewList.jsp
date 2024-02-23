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
<link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/album/">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<script type="text/javascript" src="./jquery/jquery.twbsPagination.min.js"></script>
<style>
.table th, .table td {
	text-align: center;
	vertical-align: middle!important;
}
.head-Box-right{
	display: inline-block;
	height: 150px;
	flex: em;
	float: right;
	padding: 1.2em;
	vertical-align: bottom;
}



.myPageT{
	display : inline-block;
	background-color: green;
	width: 100%;
	height: 10px;
	position: relative;
	margin-top: 10px;
}


.container{
	width: 100%;
	padding-right: calc(var(1.5em) * .5);
	padding-left: calc(var(1.5em) * .5);
	margin-right: auto;
	margin-left: auto;
	height: 200px;
}
.top-margin{
	display : inline-block;
	height: 100px;

}
.topView{
	display: inline-block;
}
#container {
	width: 1120px;
	margin: 10px auto;
/* 	border: 1px solid #ccc; */
}
</style>
</head>
<!-- 헤더 넣는 곳 -->
<jsp:include page="../inc/header.jsp" />
<!-- 헤더 넣는 곳 -->
<body>
<main  style="height: 100%;">
	<div class="top-margin"></div>

    
    
    <div id="container" style="width: 1100px; margin: 0px auto;">
    	<table>
	<tr><td style="width: 300px;"></td><td style="width: 500px; text-align: center;"><h2 class="topView">마이페이지</h2></td><td style="width: 300px;">
	<span class="head-Box-right" style="text-align: center;">
	<img src="${pageContext.request.contextPath}/resources/images/default.png" class="myProImg" style="width: 80px; height: 80px; margin: 0px auto;"><br>
    <span class="myName">${memberDTO.name } 회원</span>           
    </span>
	</td></tr>
	</table>
    <c:if test="${memberDTO.type == 0 }">
    <div class="btn-group" role="group" aria-label="Basic example" style="display: flex; justify-content : center;">
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/mypage'">내 정보</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/myPayment'">결제내역</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/reviewList'">후기</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/wish'">찜리스트</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/main'">메인페이지</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/lessonQna'">레슨 문의</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/qnaList'">관리자에게 문의</button>
	</div>
    </c:if>
    
    <c:if test="${memberDTO.type == 1 }">
	<div class="btn-group" role="group" aria-label="Basic example" style="display: flex; justify-content : center;">
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/myInfo'">내 정보</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/lesson/lessonInsert'">레슨등록</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/myPayment'">정산내역</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/reviewList'">받은 후기</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/main'">메인페이지</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/lessonQna'">레슨 문의</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/qnaList'">관리자에게 문의</button>
	</div>
	</c:if>
<div class="myPageT"></div>
	 		</div>
	 		
	 			<div id="container">
<br>
<table class="table table-hover table-sm">
<col width="70"><col width="300"><col width="300"><col width="200"><col width="100">
<thead>
<tr class="bg-primary" style="color: white;">
	<th>번호</th><th>수강레슨명</th><th>내용</th><th>작성일</th><th>별점</th>
</tr>
<c:forEach var="boardDTO" items="${boardList }">
<tr class="bg-primary" style="color: white; height: 150px;">
	<td>${boardDTO.num }</td><td>${boardDTO.subject }</td><td>${boardDTO.content }</td><td>${boardDTO.update}</td>
	<td>
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
	</script>
</td>
</tr>
</c:forEach>

</thead>
</table>
</div>
<div style="width: 1000px; height: 300px;"></div>
	 		
	 		
</main>
<jsp:include page="../inc/footer.jsp" />

</body>
</html>