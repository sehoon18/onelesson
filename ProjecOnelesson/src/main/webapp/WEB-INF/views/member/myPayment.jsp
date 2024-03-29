<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OneLesson</title>
	<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
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
	height: 200px;
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
.myPayment{
/* 	width: 2000px; */
	height: 40px;
	border-bottom: 3px solid;
	border-color: gray;
	position: static;
}
.payment-text1{
	position : static;
	width: 110px;
	float: left;
	margin-left: 1px;
	text-align: center;
	}
.payment-text2{
	position : static;
	width: 120px;
	float: left;
	margin-left: 20px;
	text-align: center;
	}
.payment-text3{
	position : static;
	width: 80px;
	float: left;
	margin-left: 40px;
	text-align: center;
	}
.payment-text4{
	position : static;
	width: 100px;
	float: left;
	margin-left: 20px;
	text-align: center;
	}
.payment-text5{
	position : static;
	width: 80px;
	float: left;
	margin-left: 50px;
	text-align: center;
	}
	
.payment-text6{
	position : static;
	width: 80px;
	float: left;
	margin-left: 70px;
	text-align: center;
	}
.payment-text7{
	position : static;
	width: 80px;
	float: left;
	margin-left: 20px;
	text-align: center;
	}
.payment-text8{
	position : static;
	width: 80px;
	float: left;
	margin-left: 20px;
	text-align: center;
	}
.payment-text9{
	position : static;
	width: 80px;
	float: left;
	margin-left: 20px;
	text-align: center;
	}

.payment-inBox7{
/* 	width: 1500px; */
	border-bottom: 3px solid;
	border-bottom-color: green;
	position: static;
	display: inline-block;
	padding: 10px;
}

.paymentIn-text1{
	width: 40px;
	height: 30px;
	border-bottom: 2px solid;
	border-bottom-color: black;
	position: static;
	display: inline-block;
	text-align: center;
	margin-left: 20px;
}
.paymentIn-text2{
	width: 200px;
	height: 30px;
	border-bottom: 2px solid;
	border-bottom-color: black;
	position: static;
	display: inline-block;
	text-align: center;
	margin-left: 5px;
}
.paymentIn-text3{
	width: 90px;
	height: 30px;
	border-bottom: 2px solid;
	border-bottom-color: black;
	position: static;
	display: inline-block;
	text-align: center;
	margin-left: 5px;
}
.paymentIn-text4{
	width: 90px;
	height: 30px;
	border-bottom: 2px solid;
	border-bottom-color: black;
	position: static;
	display: inline-block;
	text-align: center;
	margin-left: 5px;
}
.paymentIn-text5{
	width: 170px;
	height: 30px;
	border-bottom: 2px solid;
	border-bottom-color: black;
	position: static;
	display: inline-block;
	text-align: center;
	margin-left: 5px;
}
.paymentIn-text6{
	width: 100px;
	height: 30px;
	border-bottom: 2px solid;
	border-bottom-color: black;
	position: static;
	display: inline-block;
	text-align: center;
	margin-left: 5px;
}
.paymentIn-text7{
	width: 100px;
	height: 30px;
	border-bottom: 2px solid;
	border-bottom-color: black;
	position: static;
	display: inline-block;
	text-align: center;
	margin-left: 5px;
}
.paymentIn-text8{
	width: 80px;
	height: 30px;
	border-bottom: 2px solid;
	border-bottom-color: black;
	position: static;
	display: inline-block;
	text-align: center;
	margin-left: 5px;
}
.paymentIn-text9{
	width: 100px;
	height: 30px;
	border-bottom: 2px solid;
	border-bottom-color: black;
	position: static;
	display: inline-block;
	text-align: center;
	margin-left: 5px;
}

</style>
</head>
<!-- 헤더 넣는 곳 -->
 <jsp:include page="../inc/header.jsp" />
<!-- 헤더 넣는 곳 -->
<body>
<main  style="height: 100%;">
	<div class="top-margin"></div>

    
    
    <div id="container" style="width: 1100px; margin: 0px auto;">
    	<table>
	<tr><td style="width: 300px;"></td><td style="width: 500px; text-align: center;"><h2 class="topView">마이페이지</h2></td><td style="width: 300px;">
	<span class="head-Box-right" style="text-align: center;"  onclick="location.href='${pageContext.request.contextPath}/member/myInfo'">
	<img src="${pageContext.request.contextPath}/resources/images/default.png" class="myProImg" style="width: 80px; height: 80px; margin: 0px auto;"><br>
    <span class="myName">${memberDTO.nick } 회원</span>           
    </span>
	</td></tr>
	</table>
    
     <div class="btn-group" role="group" aria-label="Basic example" style="display: flex; justify-content : center;">
    <c:if test="${memberDTO.type == 0 }">
		<div class="btn-group" role="group" aria-label="Basic example" style="display: flex; justify-content : center;">
		<button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/mypage'">내 정보</button>		
		<button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/myPayment'">결제내역</button>
		<button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/reviewList'">내가 쓴 리뷰</button>
		<button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/wish'">찜리스트</button>
		<button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/main'">메인페이지</button>
		<button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/lessonQna'">레슨 문의</button>
		<button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/qnaList'">관리자에게 문의</button>
		</div>
    </c:if>
    
    <c:if test="${memberDTO.type == 1 }">
	<div class="btn-group" role="group" aria-label="Basic example" style="display: flex; justify-content : center;">
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/mypage'">내 정보</button>
  	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/lesson/lessonInsert'">레슨등록</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/myPayment'">정산내역</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/reviewList'">받은 리뷰</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/member/main'">메인페이지</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/lessonQna'">내가 받은 문의</button>
	  <button type="button" class="btn btn-outline-success btn-lg" onclick="location.href='${pageContext.request.contextPath}/board/qnaList'">관리자에게 문의</button>
	</div>
    </c:if>
	</div>
	<div class="myPageT"></div>
	</div>
				<c:if test="${ 0 eq memberDTO.type }">
	 		<h4 style="text-align: center;">나의 결제 정보 내역 보기</h4>
	 			</c:if>
	 			<c:if test="${ 1 eq memberDTO.type }">
	 		<h4 style="text-align: center;">나의 정산 정보 내역 보기</h4>
	 			</c:if>
</main>
<div style="width: 1100px; margin: 50px auto;">
					<div class="myPayment">
	 					<span class="payment-text1">결제번호</span>
	 					<span class="payment-text2">레슨 제목</span>
	 					<span class="payment-text3">레슨 가격</span>
	 					<span class="payment-text4">구매자 이름</span> 					
	 					<span class="payment-text5">결제 시간</span>
	 					<span class="payment-text6">결제 방법</span>
	 					<span class="payment-text7">결제 상태</span>
	 					<c:if test="${ 1 eq memberDTO.type }">
	 					<span  class="payment-text8">수수료</span>
	 					<span  class="payment-text9">정산금액</span>
	 					</c:if>
	 					</div>
 	 				
	 			<div class="payment-inBox7">
  				<c:forEach var="orderDTO" items="${orderList }">
  				<c:if test="${ 0 eq memberDTO.type }">
 				<span class="paymentIn-text1">${orderDTO.ORDER_NUM }</span> 
  	 				<span class="paymentIn-text2">${orderDTO.LES_SUBJECT }</span>
 	 				<span class="paymentIn-text3">${orderDTO.LES_PRICE }</span>
					<span class="paymentIn-text4">${orderDTO.MEM_NAME }</span>
					<span class="paymentIn-text5">${orderDTO.ORDER_DATE }</span>
						<c:if test="${ 'kg_inicis' eq orderDTO.ORDER_METHOD }"></c:if> 
	 				<span class="paymentIn-text6">kg이니시스</span> 
	 					<c:if test="${ 0 eq orderDTO.ORDER_STATUS }">
	 				<span class="paymentIn-text7">결제 완료</span>
	 					</c:if><br></c:if>
				</c:forEach>
	 			<c:forEach var="orderDTO" items="${orderList }">
  				<c:if test="${ 1 eq memberDTO.type }">
 				<span class="paymentIn-text1">${orderDTO.ORDER_NUM }</span> 
  	 				<span class="paymentIn-text2">${orderDTO.LES_SUBJECT }</span>
 	 				<span class="paymentIn-text3">${orderDTO.LES_PRICE }</span>
					<span class="paymentIn-text4">${orderDTO.MEM_NAME }</span>
					<span class="paymentIn-text5">${orderDTO.ORDER_DATE }</span>
						<c:if test="${ 'kg_inicis' eq orderDTO.ORDER_METHOD }"></c:if> 
	 				<span class="paymentIn-text6">kg이니시스</span> 
	 					<c:if test="${ 0 eq orderDTO.ORDER_STATUS }">
	 				<span class="paymentIn-text7">결제 완료</span>
	 				<span class="paymentIn-text8" id="adminPay">${orderDTO.LES_PRICE * 0.1}</span>
	 				<span class="paymentIn-text9" id="mentoPay">${orderDTO.LES_PRICE * 0.9}</span>
	 					</c:if>
	 					<br></c:if>
				</c:forEach>
	 			
	 			
	 			</div>
</div>	 			
	 			 <script>
        function toggleHeart(el) {
            var heartIcon = el.querySelector('.heart');
            heartIcon.classList.toggle('filled');
        }
    </script>
      
      
	<nav aria-label="Page navigation example" style="margin-top: 10px">
	  <ul class="pagination justify-content-end">
	  <c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
	    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/member/myPayment?pageNum=${pageDTO.startPage - pageDTO.pageBlock}">Previous</a></li>
	  </c:if>
	  
	  <c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
	    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/member/myPayment?pageNum=${i}">${i }</a></li>
	  </c:forEach>
	  
	  <c:if test="${pageDTO.endPage < pageDTO.pageCount }">
	    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/lesson/lessonList?pageNum=${pageDTO.startPage + pageDTO.pageBlock}">Next</a></li>
	  </c:if>  
	  </ul>
	</nav>
   
  
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
<script>

var oPrice = ${orderDTO.LES_PRICE };

var adminPrice = oPrice * 0.1;
document.getElementById("adminPay").textContent = adminPrice;


 </script>

</body>
</html>