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
    <title>회원 관리 - SB Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="../resources/css/admin/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    
  <script src="/docs/5.3/assets/js/color-modes.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>

<title>공지/이벤트</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

 		<link rel="canonical" href="https://getbootstrap.kr/docs/5.3/examples/sticky-footer-navbar/">
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">

</head>
<body>

<jsp:include page="../admin/inc/top.jsp"/>

<jsp:include page="../admin/inc/left.jsp" /> 

        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">공지/이벤트</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">공지/이벤트 관리 목록입니다.</li>
                    </ol>


<div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <table class="table">
                            <tr>
                                <td>번호</td>
                                <td>${adminNoticeDTO.num}</td>
                            </tr>
                            <tr>
                                <td>타입</td>
                                <td>${adminNoticeDTO.type}</td>
                            </tr>
                            <tr>
                                <td>조회수</td>
                                <td>${adminNoticeDTO.readcount}</td>
                            </tr>
                            <tr>
                                <td>작성일</td>
                                <td>${adminNoticeDTO.date}</td>
                            </tr>
                            <tr>
                                <td>제목</td>
                                <td>${adminNoticeDTO.subject}</td>
                            </tr>
                            <tr>
                                <td>내용</td>
                                <td>${adminNoticeDTO.content}</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            
<c:if test="${!empty sessionScope.id}">
	<c:if test="${sessionScope.id == adminNoticeDTO.id}">
		<input type="button" value="수정" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/admin/noticeUpdate?num=${adminNoticeDTO.num}'">
		<input type="button" value="삭제" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/admin/noticeDelete?num=${adminNoticeDTO.num}'">
	</c:if>
</c:if>
                
            <hr>
            <input type="button" value="목록" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/admin/notice'">
        </div>
    </main>
</div>

<jsp:include page="../admin/inc/bottom.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>