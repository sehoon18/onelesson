<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
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
.myPageT{
	display : inline-block;
	background-color: orange;
	width: 100%;
	height: 10px;
	position: relative;
	margin-top: 50px;
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
	width : 100%;
	height: 150px;

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
	<div class="top-margin"> </div>
	<div class="head-Boxleft"><button type="button" class="backPage" onclick="backPage()"><img src="${pageContext.request.contextPath}/resources/images/backArroy.jpg" style="width: 50px; height: 50px;"></button></div>
      
    <span class="head-Box-center"><h2 class="topView">마이페이지</h2></span>
    <span class="head-Box-right">
    <span class="myinfoA1"><img src="" class="myProImg" style="width: 80px; height: 80px;">
    <span class="myName">  000 회원
         </span>           
    </span>
    </span>
      <div class="myMenu">              
     <span class="userInfo"><a><input type="button" value="나의 정보 수정" i onclick="location.href='${pageContext.request.contextPath}/member/myInfo'"></a></span>    
     <span class="userlesson"><a><input type="button" value="나의 레슨 확인" onclick="location.href='${pageContext.request.contextPath}/member/myLessonList'"></a></span>
     <span class="userPayment"><a><input type="button" value="나의 결제 확인" onclick="location.href='${pageContext.request.contextPath}/member/myPayment'"></a></span>
	 <span class="userReview"><a><input type="button" value="나의 후기 확인" onclick="location.href='${pageContext.request.contextPath}/board/review'"></a></span>
	 <span class="userQnA"><a><input type="button" value="나의 문의 확인" onclick="myQnAInfo"></a></span>
	 <span class="mainPage"><a><input type="button" value="메인 페이지" onclick="location.href='${pageContext.request.contextPath}/lesson/main'"></a></span>
	 <span class="JJimList"><a><input type="button" value="찜 리스트 확인" onclick=""></a></span>
	 <span class="userCenter"><a><input type="button" value="고객 센터" onclick=""></a></span>
	 </div>
 <div class="myPageT">.</div>
	 		<div class="myLessonInfo">나의 레슨 수강 간단히 보기<br>
  <div class="album py-5 bg-body-tertiary">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div>
                <small class="text-body-secondary">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div>
                <small class="text-body-secondary">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div>
                <small class="text-body-secondary">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        </div>
      </div>	<div class="myPageT2"></div>
	 		<div class="myLessonInfo">나의 후기 간단히 보기<br>
	 		<div class="pageMargin"></div>
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