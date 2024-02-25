<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                    <h1 class="mt-4">공지 / 이벤트</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">공지 / 이벤트 관리 목록입니다.</li>
                    </ol>

<h3 style="margin-bottom: 30px;">👮‍♂️‍관리자에게 문의하기</h3>
<table class="table table-bordered">
<tr><td style="width: 100px;">제목</td><td style="width: 800px;"><div>
  <label>{boardDTO.subject}</label>
</div></td></tr>
<tr><td>내용</td><td><div>
  <label>{boardDTO.question}</label>
</div></td></tr>
<tr><td>답변</td><td><div>
  <label>{adminQnaDTO.answer}</label>
</div></td></tr>
<!-- <tr><td>답변</td><td><div class="form-floating"> -->
<!--   <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea> -->
<!--   <label for="floatingTextarea2">ANWSER</label> -->
<!-- </div></td></tr> -->

</table>

<br>
<c:if test="${! empty sessionScope.id}">
	<c:if test="${sessionScope.id eq adminQnaDTO.id}">
		<input type="button" value="답변하기" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/admin/qnaAnswer?num=${adminQnaDTO.num}'">
	</c:if>
</c:if>
<input type="button" value="목록" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/admin/qna'">
</div>
 	            </main>
            
            <jsp:include page="inc/bottom.jsp" />
            
        </div>
</body>
</html>
