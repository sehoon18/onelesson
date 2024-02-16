<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<header data-bs-theme="dark">
<div class="clear"></div>
<!--  		네비바 -->
     
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-white ">
        <div class="container-fluid">
         <a class="navbar-brand" href="${pageContext.request.contextPath}/member/main" style="color: black; height: 4rem;">
    <img alt="Brand" src="${pageContext.request.contextPath}/resources/images/main/logo.png" style="width: 240px; height: auto;"></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation" style="background-color : black">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-center" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0 " >
              <li class="nav-item ms-5"> <!-- 띄우기(ms-5) -->
                <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/board/notice" style="color: black;">공지사항/이벤트</a>
              </li>
              <li class="nav-item ms-5">
                <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/board/faq" style="color: black;">자주묻는질문</a>
              </li>
              <li class="nav-item ms-5">
                <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/lesson/lessonList" style="color: black;">레슨</a>
              </li>
              <li class="nav-item ms-5">
                <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/board/reviewList" style="color: black;">리뷰</a>
              </li>
            </ul>
            <form class="d-flex me-auto" action="${pageContext.request.contextPath}/lesson/lessonSearch" method="get">
              <input class="form-control me-2" type="text" name="search" placeholder="검색어를 입력하세요" aria-label="Search" style="width: 300px;"> <!-- 여기서 width 값을 조정하여 길이 조절 -->
              <button class="btn btn-outline-success" type="submit">검색</button>
          </form>
          
    
			<!-- 	비로그인시 -->
			<c:if test="${empty sessionScope.id}">
            <div class="login">
              <button type="button" class="btn btn-outline-primary me-2" onclick="location.href='${pageContext.request.contextPath}/member/memberLogin'">로그인</button>
              <button type="button" class="btn btn-outline-primary" onclick="location.href='${pageContext.request.contextPath}/member/memberSelectPage'">회원가입</button>
            </div>
            </c:if>
            
            <!-- 	로그인시 -->
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