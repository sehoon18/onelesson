<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<style>
#container {
	width: 1120px;
	margin: 10px auto;
/* 	border: 1px solid #ccc; */
}
</style>
</head>
<body>
	<jsp:include page="../inc/header.jsp" />
<div style="background-size: cover; background-position: center; background-image: url('https://images.unsplash.com/photo-1553532435-93d532a45f15?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'); ">
  <section class="py-5 text-center container" style="height: 300px;">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
<!--         <h1 class="fw-light" style="color: white;">찜한 레슨</h1> -->
<!--         <p class="lead text-body-secondary"><b style="color: white;">"새로 업데이트된 레슨을 지금 바로 확인하고 예약하세요!"</b></p> -->
      </div>
    </div>
  </section>
</div>
	<div id="container">
	<div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-0">찜한 목록</h6>

<c:forEach var="lessonDTO" items="${lessonList }">
    <div class="d-flex text-body-secondary pt-3">
      <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="200" height="150" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><image href="${pageContext.request.contextPath}/resources/upload/${lessonDTO.preview}" x="0" y="0" width="100%" height="100%"></svg>
      <p class="pb-3 mb-0 small lh-sm border-bottom">
        <strong class="d-block text-gray-dark">${lessonDTO.subject }</strong>
        카테고리 : ${lessonDTO.category } / ${lessonDTO.subCategory }<br>
        위치 : ${lessonDTO.location }<br>
        가격 : ${lessonDTO.price }<br>
      </p>
    </div>
</c:forEach>

    <small class="d-block text-end mt-3">
      <a href="#">All updates</a>
    </small>
  </div>
	</div>


	<hr>
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>