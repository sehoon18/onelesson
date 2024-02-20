<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>faqList</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
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
<!--         <h1 class="fw-light" style="color: white;">Q&A</h1> -->
      </div>
    </div>
  </section>
</div>

<div align="center" style="margin-top: 50px;">

<div style="width: 1000px;">
<div id="listDiv">
<h3 style="margin-bottom: 30px;">👨‍🏫강사에게 문의하기</h3>
<table id="listTable">
<tr><td style="width: 100px;">제목</td><td style="width: 800px;"><div class="form-floating mb-3">
  <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" value="레슨 예약이 안돼요." readonly>
  <label for="floatingInput">SUBJECT</label>
</div></td></tr>
<tr><td>내용</td><td><div class="form-floating">
  <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 200px" readonly>예약버튼을 누르면 멈추는 현상이 있어요.</textarea>
  <label for="floatingTextarea2">QUESTION</label>
</div></td></tr>
<tr><td>답변</td><td><div class="form-floating">
  <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 200px" readonly>현재 고치는 중 입니다.</textarea>
  <label for="floatingTextarea2">ANSWER</label>
</div></td></tr>
<!-- <tr><td>답변</td><td><div class="form-floating"> -->
<!--   <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea> -->
<!--   <label for="floatingTextarea2">ANWSER</label> -->
<!-- </div></td></tr> -->

</table>

</div>
</div>
<br>
<button class="btn btn-info" onclick="location.href='${pageContext.request.contextPath}/board/qnaWritePro'">글쓰기</button>
<button class="btn btn-outline-info" onclick="location.href='${pageContext.request.contextPath}/board/qnaList'">돌아가기</button>
<hr>
</div>
 	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
