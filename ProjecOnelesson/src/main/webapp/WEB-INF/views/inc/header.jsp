<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.png"/>
<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body{
background-color: #ccc;
}
.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
/*   padding: 12px 16px; */
  z-index: 1;
  background-color: white;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  font-size: 1.0em; /* 폰트 크기 조절 */
}

.dropdown-content a:hover {
  background-color: #ddd; /* 마우스 오버시 배경색 변경 */
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
<header data-bs-theme="dark">
<div class="clear"></div>
<!-- 네비바 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-white " style="height: 55px;">
  <div class="container-fluid">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/member/main" style="color: black; margin: 0px auto;">
      <img alt="Brand" src="${pageContext.request.contextPath}/resources/images/main/logo.png" style="width: 180px; height: auto;">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation" style="background-color : black">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-center" id="navbarCollapse">
      <ul class="navbar-nav me-auto mb-2 mb-md-0 ">
        <li class="nav-item ms-5">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/board/notice" style="color: black; padding: 15px 8px;">공지사항/이벤트</a>
        </li>
        <li class="nav-item ms-5">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/board/faq" style="color: black; padding: 15px 8px;">자주묻는질문</a>
        </li>
		<li class="nav-item ms-5 dropdown">
		  <a class="nav-link active dropdown-toggle" href="${pageContext.request.contextPath}/lesson/lessonList" id="lessonDropdown" role="button" style="color: black; padding: 15px 8px;">레슨</a>
		  <div class="dropdown-content" aria-labelledby="lessonDropdown"> <!-- 드롭다운 메뉴 -->
		    <a class="dropdown-item" href="${pageContext.request.contextPath}/lesson/categorySearch?search=요리">요리</a>
		    <a class="dropdown-item" href="${pageContext.request.contextPath}/lesson/categorySearch?search=스포츠">스포츠</a>
		    <a class="dropdown-item" href="${pageContext.request.contextPath}/lesson/categorySearch?search=예술">예술</a>
		    <a class="dropdown-item" href="${pageContext.request.contextPath}/lesson/categorySearch?search=공예">공예</a>
		    <a class="dropdown-item" href="${pageContext.request.contextPath}/lesson/categorySearch?search=기타">기타</a>
		    <!-- 필요한 드롭다운 메뉴 항목 추가 -->
		  </div>
		</li>
<!--         <li class="nav-item ms-5"> -->
<%--           <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/board/reviewList" style="color: black; padding: 15px 8px;">리뷰</a> --%>
<!--         </li> -->
      </ul>
      <form class="d-flex me-auto" action="${pageContext.request.contextPath}/lesson/lessonSearch" method="get" style="margin: 0px auto;">
        <input class="form-control me-2" type="text" name="search" placeholder="검색어를 입력하세요" aria-label="Search" style="width: 300px;">
        <button class="btn btn-outline-success" type="submit">검색</button>
      </form>

      <!-- 비로그인시 -->
      <c:if test="${empty sessionScope.id}">
        <div class="login">
          <button type="button" class="btn btn-outline-primary me-2" onclick="location.href='${pageContext.request.contextPath}/member/memberLogin'">로그인</button>
          <button type="button" class="btn btn-outline-primary" onclick="location.href='${pageContext.request.contextPath}/member/memberSelectPage'">회원가입</button>
        </div>
      </c:if>

      <!-- 로그인시 -->
      <c:if test="${!empty sessionScope.id}">
        <div class="login">
          ${sessionScope.id }님
          <button type="button" class="btn btn-outline-primary me-2" onclick="location.href='${pageContext.request.contextPath}/member/logout'">로그아웃</button>
          <button type="button" class="btn btn-outline-primary" onclick="location.href='${pageContext.request.contextPath}/member/mypage'">마이페이지</button>
        </div>
      </c:if>

    </div>
  </div>
</nav>
</header>
