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
                <div class="container-fluid px-4">
                    <h1 class="mt-4">자주 묻는 질문</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">자주 묻는 질문 관리 목록입니다.</li>
                    </ol>
                    
<table class="table table-bordered">
<tr><td style="width: 150px;">번호</td><td><div>
  <label>${adminFaqDTO.num}</label>
</div></td></tr>
<tr><td style="width: 150px;">제목</td><td><div>
  <label>${adminFaqDTO.subject}</label>
</div></td></tr>
<tr><td style="height: 200px;">내용</td><td><div>
  <label>${adminFaqDTO.content}</label>
</div></td></tr>
</table>

<br>
<c:if test="${! empty sessionScope.id}">
	<c:if test="${sessionScope.id eq adminFaqDTO.id}">
		<input type="button" value="수정" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/admin/faqUpdate?num=${adminFaqDTO.num}'">
		<input type="button" value="삭제" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/admin/faqDelete?num=${adminFaqDTO.num}'">
	</c:if>
</c:if>
<input type="button" value="목록" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/admin/faq'">
</div>
            </main>
            
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
