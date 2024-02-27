<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OneLesson</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript" src="./jquery/jquery.twbsPagination.min.js"></script>

<style type="text/css">
.table th, .table td {
	text-align: center;
	vertical-align: middle!important;
}

	#listDiv{
	width=980px;
	margin: auto;
	}
	a{
	text-decoration : none;
	color: black;
 	margin:auto; 
	
	}
	#listTable{
	margin:auto;
	border-collapse :collapse;
	}
</style>

</head>
<body bgcolor="#e9e9e9">
	<jsp:include page="../inc/header.jsp" />
<div style="background-size: cover; background-position: center;"> <img src="${pageContext.request.contextPath}/resources/images/b_7.png" width="100%"/>
</div>

<div align="center" style="margin-top: 50px; margin-bottom: 50px;">

<div style="width: 1000px; margin-bottom: 50px;">
<div id="listDiv">
<form action="${pageContext.request.contextPath}/board/qnaWritePro" method="post">
<input type="hidden" name="name" value="${sessionScope.id }"> 
<table id="listTable">
<tr><td style="width: 100px;">제목</td><td style="width: 800px;"><div class="form-floating mb-3">
  <input name="subject" type="text" class="form-control" id="floatingInput">
  <label for="floatingInput">SUBJECT</label>
</div></td></tr>
<tr><td>내용</td><td><div class="form-floating">
  <textarea name="content" class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 300px"></textarea>
  <label for="floatingTextarea2">QUESTION</label>
</div></td></tr>
<!-- <tr><td>답변</td><td><div class="form-floating"> -->
<!--   <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea> -->
<!--   <label for="floatingTextarea2">ANWSER</label> -->
<!-- </div></td></tr> -->
<tr><td></td><td style="text-align: center;">
<input type="submit" class="btn btn-success" value="글쓰기" style="margin-top:50px;">
<%-- <button class="btn btn-outline-info" onclick="location.href='${pageContext.request.contextPath}/board/qnaList'">돌아가기</button> --%>
</td></tr>
</table>
</form>

</div>
</div>
<hr>
</div>
 	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
