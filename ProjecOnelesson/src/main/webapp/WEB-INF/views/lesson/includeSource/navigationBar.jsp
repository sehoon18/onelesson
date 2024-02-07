<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>navigationBar</title>
</head>
<body>
    <header data-bs-theme="dark">
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="main.html">OneLesson</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">공지사항/이벤트</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/lesson/lessonList">레슨</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">자주묻는질문</a>
              </li>                 
            </ul>
            <form class="d-flex mx-auto" role="search">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            
            <button type="button" class="btn btn-outline-primary">로그인</button>
            <button type="button" class="btn btn-outline-primary">회원가입</button>          
          </div>
        </div>
      </nav>
    </header>
</body>
</html>