<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>찜 목록</title>
	<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/album/">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
<style>
      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }
.head-Boxleft{
	display: inline-block;
	float : left;
	width: 100px;
	height : 100px;
}
.head-Box-center{
	display: inline-block;
	width:1100px;
	height: 100px;
	flex: em;
}
.head-Box-right{
	display: inline-block;
	height: 150px;
	flex: em;
	float: right;
	padding: 1.2em;
	vertical-align: bottom;
}

.myinfoA1{
	margin: 50px;
	padding : 1.5rem;
	align-items: center;
	justify-content: center;
}
.myMenu{
display: inline-block;
	position: relative;
	width: 100%;
	height: 50px;
	padding-top: 30px;
}


.userInfo{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;

}
.userlesson{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}	
.userPayment{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}
.userReview{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}
.mainPage {
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}
.userQnA {
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}

.JJimList {
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}

.userCenter {
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}
.myPageT{
	display : inline-block;
	background-color: green;
	width: 100%;
	height: 10px;
	position: relative;
	margin-top: 10px;
}
.myPageT2{
	display : inline-block;
	background-color: green;
	width: 100%;
	height: 10px;
	position: relative;
	margin-top: auto;
}

.myLessonInfoB{
	float: right;
}
.myLessonInfo{
	display : inline-block;
	width: 100%;
	height: 10px;
	position: relative;
	padding-left: 10px;
	
}

.backPage{
	display : inline-block;
	float : left;
	width: 50px;
	height: 50px;
	
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
		<button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/reviewList'">내가 쓴 리뷰</button>
		<button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/wish'">찜리스트</button>
		<button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/main'">메인페이지</button>
		<button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/lessonQna'">레슨 문의</button>
		<button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/qnaList'">관리자에게 문의</button>
		</div>
    </c:if>
    
    <c:if test="${memberDTO.type == 1 }">
	<div class="btn-group" role="group" aria-label="Basic example" style="display: flex; justify-content : center;">
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/mypage'">내 정보</button>
  	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/lesson/lessonInsert'">레슨등록</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/myPayment'">정산내역</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/reviewList'">받은 리뷰</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/main'">메인페이지</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/lessonQna'">내가 받은 문의</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/qnaList'">관리자에게 문의</button>
	</div>
    </c:if>	
<div class="myPageT"></div>
	 		</div>
	 		
	 			<div id="container">
	<div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-0">찜한 목록</h6>

	<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
<c:forEach var="boardDTO" items="${boardList }">
	<div class="col">
		<div class="card shadow-sm">
		<div style="border-bottom: 0.5px solid #ccc;">
		<button type="button" class="btn-close" style="float: right;" onclick="location.href='${pageContext.request.contextPath}/board/deleteWish?num=${boardDTO.num }'"></button>
		</div>
	    <div class="d-flex text-body-secondary pt-3">
	      <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="160" height="100" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice" focusable="false"><a href="${pageContext.request.contextPath}/lesson/lessonInfo?num=${boardDTO.num }"><image xlink:href="${pageContext.request.contextPath}/resources/upload/${boardDTO.preview}" x="0" y="0" width="100%" height="100%"></a></svg>
	      <p class="pb-3 mb-0 small lh-sm border-bottom">
	        <strong class="d-block text-gray-dark"><a href="${pageContext.request.contextPath}/lesson/lessonInfo?num=${boardDTO.num }">${boardDTO.subject }</a></strong>
	        카테고리 : ${boardDTO.category } / ${boardDTO.subCategory }<br>
	        날짜 : ${boardDTO.date}<br>
	        위치 : ${boardDTO.location }<br>
	        가격 : ${boardDTO.price }<br>
	      </p>
	    </div>
	    </div>
    </div>
</c:forEach>
    </div>

  </div>
	</div>
	 		
</main>
<jsp:include page="../inc/footer.jsp" />

</body>
</html>