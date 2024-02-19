<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 결제 목록 확인</title>
  <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/album/">

    

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">


<style>
.head-Boxleft{
	display: inline-block;
	float : left;
	width: 100px;
	height : 100px;
}
.head-Box-center{
	display: inline-block;
	height: 100px;
	flex: em;
	padding-left: 25%;
}
.head-Box-right{
	display: inline-block;
	height: 130px;
	flex: em;
	float: right;
	padding: 1.5em;
	border: solid skyblue;
	
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

.userUpdate{
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
.myName{
	margin-left: 70px;
	
}

.myPageT2{
	display : inline-block;
	background-color: orange;
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
	width: 1500px;
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
	width : 100%;
	height: 150px;

}
.topView{
	display: inline-block;
}
.paymentVeiw{
	display: inline-block;
}
tr{
	display: grid;
	width: 100%;
	position: relative;
	height: 20px;
	margin-top: auto;
	float: left;
}

td{
	display: inline-block;
	margin-left: 100px;
	
}
.payment-box1{
	position: static;
	width: 1500px;
	margin-top: 10px;
	border: solid black;
}
.payment-box2{
	position: static;
	width: 1500px;
	border: solid;
	border-color: silver;
	height: 30px;
}
.payment-text1{
	margin-left: 70px;
	margin-right : 70px;
	position: static;
}
.payment-text1 > .payment-text2{
	float : left;
}
.payment-text2{
	margin-left: 70px;
	margin-right : 70px;
	position: static;
	text-align: center;
}
.payment-text2 > .payment-text3{
	float : left;
}
.payment-text3{
	margin-left: 70px;
	margin-right : 70px;
	position: static;
	text-align: center;
}
.payment-text3 > .payment-text4{
	float : left;
}
.payment-text4{
	margin-left: 70px;
	margin-right : 70px;
	position: static;
	text-align: center;
}
.payment-text4 > .payment-text5{
	float : left;
}
.payment-text5{
	margin-left: 70px;
	margin-right : 70px;
	position: static;
	text-align: center;
}
.payment-text5 > .payment-text6{
	float : left;
}
.payment-text6{
	margin-left: 70px;
	margin-right : 70px;
	position: static;
	text-align: center;
}
.payment-inBox{
	position: static;
	width: 1500px;
}
.bottom-margin{
	display : inline-block;
	width : 100%;
	height: 150px;

}
.paymentIn-text1{
	position: static;
	width: 180px;
	text-align: center;
	float: left;
}
.paymentIn-text2{
	position: static;
	width: 200px;
	text-align: center;
	float: left;
}
.paymentIn-text3{
	position: static;
	width: 200px;
	text-align: center;
	float: left;
}
.paymentIn-text4{
	position: static;
	width: 200px;
	text-align: center;
	float: left;
}
.paymentIn-text5{
	position: static;
	width: 200px;
	text-align: center;
	float: left;
}
.paymentIn-text6{
	position: static;
	width: 200px;
	text-align: center;
	float: left;
}

</style>
</head>
<!-- 헤더 넣는 곳 -->
<jsp:include page="../inc/header.jsp" />
<!-- 헤더 넣는 곳 -->
<body>
	<div class="top-margin"> </div>
	<div class="head-Boxleft"><button type="button" class="backPage" onclick="backPage()"><img src="${pageContext.request.contextPath}/resources/images/backArroy.jpg" style="width: 50px; height: 50px;"></button></div>
      
    <span class="head-Box-center"><h2 class="topView">나의 결제 목록</h2></span>
    <span class="head-Box-right">
    <span class="myinfoA1"><img src="" class="myProImg" style="width: 80px; height: 80px;">
    <span class="myName">  000 회원
         </span>           
    </span>
    </span>
      <div class="myMenu">              
     <span class="userInfo"><a><input type="button" value="나의 정보 보기" i onclick="location.href='${pageContext.request.contextPath}/member/mypage'"></a></span>             
     <span class="userUpdate"><a><input type="button" value="나의 정보 수정" i onclick="location.href='${pageContext.request.contextPath}/member/myInfo'"></a></span>      
     <span class="userlesson"><a><input type="button" value="나의 레슨 확인" onclick="location.href='${pageContext.request.contextPath}/member/myLessonList'"></a></span>
     <span class="userPayment"><a><input type="button" value="나의 결제 확인" onclick="myPaymentInfo"></a></span>
	 <span class="userReview"><a><input type="button" value="나의 후기 확인" onclick="location.href='${pageContext.request.contextPath}/board/review'"></a></span>
	 <span class="userQnA"><a><input type="button" value="나의 문의 확인" onclick="myQnAInfo"></a></span>
	 <span class="mainPage"><a><input type="button" value="메인 페이지" onclick="location.href='${pageContext.request.contextPath}/member/main'"></a></span>
	 <span class="JJimList"><a><input type="button" value="찜 리스트 확인" onclick=""></a></span>
	 <span class="userCenter"><a><input type="button" value="고객 센터" onclick=""></a></span>
	 </div>
<div class="myPageT2"></div>
	 		<div class="myLessonInfo"><b>결제 내역 </b><br>
	 				<div class="payment-box1">
	 				</div>
	 					<span class="payment-text1">no</span>
	 					<span class="payment-text2">주문번호</span>
	 					<span class="payment-text3">결제일자</span>
	 					<span class="payment-text4">결제레슨</span>
	 					<span class="payment-text5">가격</span>
	 					<span class="payment-text6">결제상태</span>
	 					</div>
	 		<div class="payment-box2">
	 			<div class="payment-inBox">
	 				<span class="paymentIn-text1">7</span>
	 				<span class="paymentIn-text2">7</span>
	 				<span class="paymentIn-text3">7</span>
	 				<span class="paymentIn-text4">7</span>
	 				<span class="paymentIn-text5">7</span>
	 				<span class="paymentIn-text6">7</span>
	 			</div>
	 		</div>
	 			<div class="payment-box2">
	 				<span class="paymentIn-text1">7</span>
	 				<span class="paymentIn-text2">7</span>
	 				<span class="paymentIn-text3">7</span>
	 				<span class="paymentIn-text4">7</span>
	 				<span class="paymentIn-text5">7</span>
	 				<span class="paymentIn-text6">7</span>
	 			</div>
	 			<div class="payment-box2">
	 				<span class="paymentIn-text1">7</span>
	 				<span class="paymentIn-text2">7</span>
	 				<span class="paymentIn-text3">7</span>
	 				<span class="paymentIn-text4">7</span>
	 				<span class="paymentIn-text5">7</span>
	 				<span class="paymentIn-text6">7</span>
	 			</div>
	 			<div class="payment-box2">
	 				<span class="paymentIn-text1">7</span>
	 				<span class="paymentIn-text2">7</span>
	 				<span class="paymentIn-text3">7</span>
	 				<span class="paymentIn-text4">7</span>
	 				<span class="paymentIn-text5">7</span>
	 				<span class="paymentIn-text6">7</span>
	 			</div>
	 			<div class="payment-box2">
	 				<span class="paymentIn-text1">7</span>
	 				<span class="paymentIn-text2">7</span>
	 				<span class="paymentIn-text3">7</span>
	 				<span class="paymentIn-text4">7</span>
	 				<span class="paymentIn-text5">7</span>
	 				<span class="paymentIn-text6">7</span>
	 			</div>		
	 		<div class="bottom-margin"></div>
  
<!-- 푸터 넣는곳 -->
<jsp:include page="../inc/footer.jsp" />
<!-- 푸터 넣는곳 --> 
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
</body>
</html>