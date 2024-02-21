<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>회원 관리 - SB Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="../resources/css/admin/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    
  <script src="/docs/5.3/assets/js/color-modes.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
  
    <title>자주 묻는 질문</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css"
          integrity="sha256-IKhQVXDfwbVELwiR0ke6dX+pJt0RSmWky3WB2pNx9Hg=" crossorigin="anonymous">


</head>
<body>

<jsp:include page="../inc/header.jsp"/>

<jsp:include page="../admin/inc/left.jsp"/> 

<main class="flex-shrink-0" style="padding-top: 100px">
    <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">자주 묻는 질문</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">자주 묻는 질문 관리 목록입니다.</li>
                    </ol>
        
            <div class="row">
                <div class="col-md-10">
                    <label for="subject" class="form-label">제목</label>
                    <label>${adminFaqDTO.subject}</label>
                </div>
                <div class="col-12">
                    <label for="myEditor" class="form-label">상세 설명</label>
                    <textarea class="form-control" id="content" rows="10" readonly>${adminFaqDTO.content}</textarea>
                </div>
            </div>
            
            <c:if test="${!empty sessionScope.id}">
            	<c:if test="${sessionScope.id == boardDTO.name}">
            		<input type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/admin/faqUpdate?num=${adminBoardDTO.num}'">수정</input>
            		<input type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/admin/faqDelete?num=${adminBoardDTO.num}'">삭제</input>
            	</c:if>
            </c:if>
            
            <hr>
            <input type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/admin/faq'">목록</input>
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
            lang: 'ko-KR', // default: 'en-US'
        });

</script>

<jsp:include page="../admin/inc/bottom.jsp"/>

</body>
</html>
