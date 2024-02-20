<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
  <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/album/">

    

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">


<style>
      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }
.head-Boxleft{
	display: inline-block;
	float : left;
	width: 100px;
	height : 100px;
}
.head-Box-center{
	display: inline-block;
	width:1100px;
	height: 100px;
	flex: em;
}
.head-Box-right{
	display: inline-block;
	height: 150px;
	flex: em;
	float: right;
	padding: 1.2em;
	vertical-align: bottom;
}

.myinfoA1{
	margin: 50px;
	padding : 1.5rem;
	align-items: center;
	justify-content: center;
}
.myMenu{
display: inline-block;
	position: relative;
	width: 100%;
	height: 50px;
	padding-top: 30px;
}


.userInfo{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;

}
.userlesson{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}	
.userPayment{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}
.userReview{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}
.mainPage {
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}
.userQnA {
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}

.JJimList {
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}

.userCenter {
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 60px;
	position: relative;
	font-size: 15px;
	color: white;
	
}
.myPageT{
	display : inline-block;
	background-color: green;
	width: 100%;
	height: 10px;
	position: relative;
	margin-top: 10px;
}
.myPageT2{
	display : inline-block;
	background-color: green;
	width: 100%;
	height: 10px;
	position: relative;
	margin-top: auto;
}

.myLessonInfoB{
	float: right;
}
.myLessonInfo{
	display : inline-block;
	width: 100%;
	height: 10px;
	position: relative;
	padding-left: 10px;
	
}

.backPage{
	display : inline-block;
	float : left;
	width: 50px;
	height: 50px;
	
}
.container{
	width: 100%;
	padding-right: calc(var(1.5em) * .5);
	padding-left: calc(var(1.5em) * .5);
	margin-right: auto;
	margin-left: auto;
}
.top-margin{
	display : inline-block;
	height: 100px;

}
.topView{
	display: inline-block;
}
.pageMargin{
	width: 100%;
	height: 50px;
}
}
.payment-box1{
	position: static;
	width: 1500px;
	margin-top: 10px;
	border: solid black;
	height: 30px;
}
.payment-box2{
	position: static;
	width: 1500px;
	border: solid;
	border-color: silver;
	height: 30px;
}
.payment-text1{
	position: static;
	width: 150px;
	text-align: center;
	float: left;
}

</style>
</head>
<!-- 헤더 넣는 곳 -->
 <jsp:include page="../inc/header.jsp" />
<!-- 헤더 넣는 곳 -->
<body>
<main  style="height: 1200px;">
	<div class="top-margin"></div>

    
    
    <div id="container" style="width: 1100px; margin: 0px auto;">
    	<table>
	<tr><td style="width: 300px;"></td><td style="width: 500px; text-align: center;"><h2 class="topView">마이페이지</h2></td><td style="width: 300px;">
	<span class="head-Box-right" style="text-align: center;">
	<img src="${pageContext.request.contextPath}/resources/images/default.png" class="myProImg" style="width: 80px; height: 80px; margin: 0px auto;"><br>
    <span class="myName">${memberDTO.name } 회원</span>           
    </span>
	</td></tr>
	</table>
    
    <div class="btn-group" role="group" aria-label="Basic example" style="display: flex; justify-content : center;">
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/myInfo'">내 정보</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/myPayment'">결제내역</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/reviewList'">후기</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/wish'">찜리스트</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/main'">메인페이지</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/lessonQna'">레슨 문의</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/qnaList'">관리자에게 문의</button>
	</div>
 <div class="myPageT"></div>
	 		<h4 style="text-align: center;">최근 수강한 강의</h4>
<!--   <div class="album py-5 bg-body-tertiary"> -->
<div class="container">
	<div class="container marketing">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
      <c:forEach var="lessonDTO" items="${lessonList }">
   		<div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" role="img" aria-label="Placeholder: Thumbnail" focusable="false">
			    <image xlink:href="${pageContext.request.contextPath}/resources/upload/${lessonDTO.preview}" x="0" y="0" width="100%" height="225"/>
			</svg>
            <div class="card-body">
            <div class="d-flex justify-content-between align-items-center" style="margin: 5px;">
              <div>${lessonDTO.subject }</div>
              <small class="text-body-secondary"><fmt:formatNumber value="${lessonDTO.price }" type="currency"/></small>
            </div>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='${pageContext.request.contextPath}/lesson/lessonInfo?num=${lessonDTO.num}'">상세정보</button>
<!--                   <button type="button" class="btn btn-sm btn-outline-secondary" onclick="toggleHeart(this)"><i class="fas fa-heart heart"></i></button> -->
                </div>
                <small class="text-body-secondary"><fmt:formatDate value="${lessonDTO.update }" pattern="yyyy.MM.dd"/></small>
              </div>
            </div>
          </div>
        </div>
      </c:forEach>
      </div>
    <script>
        function toggleHeart(el) {
            var heartIcon = el.querySelector('.heart');
            heartIcon.classList.toggle('filled');
        }
    </script>
      
      </div>
	<nav aria-label="Page navigation example" style="margin-top: 10px">
	  <ul class="pagination justify-content-end">
	  <c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
	    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/member/mypage?pageNum=${pageDTO.startPage - pageDTO.pageBlock}">Previous</a></li>
	  </c:if>
	  
	  <c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
	    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/member/mypage?pageNum=${i}">${i }</a></li>
	  </c:forEach>
	  
	  <c:if test="${pageDTO.endPage < pageDTO.pageCount }">
	    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/member/mypage?pageNum=${pageDTO.startPage + pageDTO.pageBlock}">Next</a></li>
	  </c:if>  
	  </ul>
	</nav>
    </div>	
      <div class="myPageT2"></div>
	 		<div class="myLessonInfo">나의 후기 간단히 보기<br>
				<div class="form-group" >
					<div style="border: 1px solid #ccc; width: 1080px; height: 100px; margin: 2px auto;">리뷰 칸1</div>
					<div style="border: 1px solid #ccc; width: 1080px; height: 100px; margin: 2px auto;">리뷰 칸2</div>
					<div style="border: 1px solid #ccc; width: 1080px; height: 100px; margin: 2px auto;">리뷰 칸3</div>
			    </div>	
  			</div>
  			</div>
</main>
<script>
 function backPage(){
		history.back();
	}
 function mainPage(){
		location.href="../lesson/main.jsp";
	}
 function myLessonInfo_P(){
	 location.href="../lesson/myLesson_Page";
 }
 </script>
 <!-- 푸터 넣는곳 -->
<jsp:include page="../inc/footer.jsp" />
<!-- 푸터 넣는곳 --> 
</body>
</html>