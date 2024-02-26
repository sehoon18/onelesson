<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 문의</title>
<title>Q&A</title>

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
<div style="background-size: cover; background-position: center; background-image: url('${pageContext.request.contextPath}/resources/images/qnaimage.jpg');">
  <section class="py-5 text-center container" style="height: 300px;">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
      </div>
    </div>
  </section>
</div>

<div align="center" style="margin-top: 50px;">

<div style="width: 1000px;">
<div id="listDiv">
<h3 style="margin-bottom: 30px;">👮‍♂️‍관리자에게 문의하기</h3>
<table id="listTable">
<tr><td style="width: 100px;">제목</td><td style="width: 800px;"><div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com" value="${boardDTO.subject }" readonly>
  <label for="floatingInput">SUBJECT</label>
</div></td></tr>
<tr><td>내용</td><td><div class="form-floating">
  <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 200px" readonly>${boardDTO.question }</textarea>
  <label for="floatingTextarea2">QUESTION</label>
</div></td></tr>
<tr><td>답변</td><td><div class="form-floating">
  <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 200px" readonly>${boardDTO.answer }</textarea>
  <label for="floatingTextarea2">ANSWER</label>
</div></td></tr>
</table>

</div>
</div>
<br>
<button class="btn btn-outline-success" onclick="location.href='${pageContext.request.contextPath}/board/qnaList'">돌아가기</button>
<hr>
</div>
 	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
