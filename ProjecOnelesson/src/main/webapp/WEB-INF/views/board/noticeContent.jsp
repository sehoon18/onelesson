<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NOTICE</title>

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
      </div>
    </div>
  </section>
</div>

<div align="center" style="margin-top: 50px;">

<div style="width: 1000px;">
<div id="listDiv">
<h3 style="margin-bottom: 30px;">👮‍♂️‍공지/이벤트</h3>
<table id="listTable" class="table table-bordered">
<tr><td style="width: 100px;">번호</td><td style="width: 800px;"><div>
  <label>${boardDTO.num}</label>
</div></td></tr>
<tr><td style="width: 100px;">타입</td><td style="width: 800px;"><div>
  <c:if test="${boardDTO.type == 0}">
  <label>공지</label>
  </c:if>
  <c:if test="${boardDTO.type == 1}">
  <label>이벤트</label>
  </c:if>
</div></td></tr>
<tr><td style="width: 100px;">조회수</td><td style="width: 800px;"><div>
  <label>${boardDTO.readcount}</label>
</div></td></tr>
<tr><td style="width: 100px;">작성일</td><td style="width: 800px;"><div>
  <label>${boardDTO.date}</label>
</div></td></tr>
<tr><td style="width: 100px;">제목</td><td style="width: 800px;"><div>
  <label>${boardDTO.subject}</label>
</div></td></tr>
<tr><td style="height: 200px;">내용</td><td><div>
  <label>${boardDTO.content}</label>
</div></td></tr>
</table>

</div>
</div>
<br>
<button class="btn btn-outline-info" onclick="location.href='${pageContext.request.contextPath}/board/notice'">돌아가기</button>
<hr>
</div>
 	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
