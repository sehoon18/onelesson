<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>OneLesson</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="../resources/css/admin/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
  	<script src="/docs/5.3/assets/js/color-modes.js"></script>
  	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
    <title>자주 묻는 질문 수정</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css"
          integrity="sha256-IKhQVXDfwbVELwiR0ke6dX+pJt0RSmWky3WB2pNx9Hg=" crossorigin="anonymous">


<style>
    .table th,
    .table td {
        text-align: center;
    }
</style>

</head>
<body class="sb-nav-fixed">

	<jsp:include page="inc/top.jsp" />
        
    <jsp:include page="inc/left.jsp" />    
        
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4" style="margin-top:50px;">
                    <h1 class="mt-4">자주 묻는 질문</h1>
<hr>
        <form action="${pageContext.request.contextPath}/admin/faqUpdatePro" method="post" style="margin-top:50px;">
            <input type="hidden" name="id" value="${adminFaqDTO.id}">
<!-- 			<input type="hidden" name="id" value="admin"> -->
            <input type="hidden" name="num" value="${adminFaqDTO.num}">
            <div class="row">
                <div class="col-md">
                    <label for="subject" class="form-label">제목</label>
                    <input type="text" name="subject" class="form-control mb-3" value="${adminFaqDTO.subject}">
                </div>
                <div class="col-12">
                    <label for="myEditor" class="form-label">상세 설명</label>
                    <textarea id="myEditor" name="content" class="form-control mb-3">${adminFaqDTO.content}</textarea>
                </div>
            </div>
            <hr>
            <div style="text-align: right; margin-top:30px;">
            <input type="submit" value="수정" class="btn btn-success">
            <input type="button" value="목록" class="btn btn-outline-success" onclick="location.href='${pageContext.request.contextPath}/admin/faq'">
        	</div>
        </form>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

<script>
    $(document).ready(function () {
        $('#myEditor').summernote({
            placeholder: 'Summernote for Bootstrap 5',
            tabsize: 2,
            height: 400,
            lang: 'ko-KR',
        });
    });
</script>
            
<jsp:include page="inc/bottom.jsp" />
            
        </div>

    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="../resources/js/admin/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="../resources/assets/admin/demo/chart-area-demo.js"></script>
    <script src="../resources/assets/admin/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
    <script src="../resources/js/admin/datatables-simple-demo.js"></script>
</body>
</html>
