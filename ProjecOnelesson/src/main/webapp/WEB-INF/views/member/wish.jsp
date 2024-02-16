<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<style>
#container {
	width: 1120px;
	height: 800px;
	margin: 120px auto;
	border: 1px solid #ccc;
}
</style>
</head>
<body>
	<jsp:include page="../inc/header.jsp" />
<div style="background-size: cover; background-position: center; background-image: url('https://images.unsplash.com/photo-1608308594534-223d7579f3c9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'); ">
  <section class="py-5 text-center container" style="height: 300px;">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light" style="color: white;">새로 등록된 레슨</h1>
        <p class="lead text-body-secondary"><b style="color: white;">"새로 업데이트된 레슨을 지금 바로 확인하고 예약하세요!"</b></p>
      </div>
    </div>
  </section>
</div>
	<hr>
	<div id="container"></div>


	<hr>
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>