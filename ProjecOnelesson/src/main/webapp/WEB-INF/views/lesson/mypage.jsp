<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>


<style>
.myinfoA1{
	margin: 50px;
	padding : 1.5rem;
	align-items: center;
	justify-content: center;
}
.myMenu{
	position: relative;
	width: 100%;
	height: 100px;
}


.userInfo{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid black;
	background-color : gray;
	width: 120px;
	height : 30px;
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
	height : 30px;
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
	height : 30px;
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
	height : 30px;
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
	height : 30px;
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
.userLesson1{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid orange;
	background-color : white;
	width: 200px;
	height : 250px;
	position: relative;
	font-size: 15px;
	color: black;
}
.userLesson2{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid orange;
	background-color : white;
	width: 200px;
	height : 250px;
	position: relative;
	font-size: 15px;
	color: black;
}
.userLesson3{
	display: inline-block;
	padding: 1rem 0;
	font-size: 2em;
	text-align: center;
	border: solid orange;
	background-color : white;
	width: 200px;
	height : 250px;
	position: relative;
	font-size: 15px;
	color: black;
}

</style>
</head>
<!-- 헤더 넣는 곳 -->
 <header data-bs-theme="dark">
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">OneLesson</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">공지사항/이벤트</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/lesson/lessonList">레슨</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">자주묻는질문</a>
              </li>                 
            </ul>
            <form class="d-flex mx-auto" role="search">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
             <div class="info-card-text">
                                    <div class="fs-lg text-truncate text-truncate-lg"><span style="color:#fff;font-weight:900;">${memberDTO_name }</span>님</div>
                                    <span class="text-truncate text-truncate-md opacity-80">안녕하세요!</span>
                                </div>     
          </div>
        </div>
      </nav>
    </header>
<!-- 헤더 넣는 곳 -->
<div id="actionbar-main" class="fixed app-header borderW1 bigTopMenuLayout blackTransShadow borderB grayLBorder nav-down" style="display: flex; align-items: center; width: 100%; position: relative; transition: top 0.2s ease 0s, background-color 0.5s ease-in-out 0s; z-index: 800; background-color: rgb(255, 255, 255);">
                <a href="#" style="float:left; margin-left: 10px; z-index: 10;" class="homeAsUp" onclick="backPage()" data-actions="%5B%7B%22methodName%22%3A%22METHOD_GO_BACK%22%2C%22methodParams%22%3Anull%2C%22methodStyle%22%3Anull%2C%22platforms%22%3A7%7D%5D">
                        <i class="backPage">1<img src=""></i>
                    </a>
       <div id="hasTitle" class=" blackDFont " onclick="return bindAction(this);" data-actions="%5B%5D" style=" font-size:26px; text-align: center; margin:0 auto;                   z-index:10;">
                <input type="button" class="homeB" name="메인페이지 버튼" value="홈 이미지" onclick="homePage()"></i><span id="actionBarTitleText">마이페이지</span>
            </div>
       <div class="actionItems" style="display:flex; z-index:10; float: right; padding-right: 14px; top: 15px; right: 0; ">
            <span class="headerDefaultMenu-lg" style="font-size:20px;vertical-align: super;">
                                                    <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fal fa-user-circle" style="margin-right: 20px;font-size:30px;vertical-align: sub; cursor: pointer;"></i>
                    </a>
                    <div class="dropdown-menu menu dropdown-menu-right p-0" style="min-width: 178px;">
                        <div class="dropdown-header d-flex flex-row px-4 py-4 rounded-top text-white" style="background-color: #f14e00;">
                            <div class="d-flex flex-row align-items-center mt-1 mb-1 color-white">
                                <span class="mr-2">
                                    <img src="/upFolder/lessonall/upFolder/upFile/USERIMG/2024_s/USERIMG_FONT_65c1ee703eff4.jpg" class="rounded-circle profile-image">
                                </span>
                               
                            </div>
                        </div>
                        <button class="dropdown-item" type="button" onclick="location.href='/mer/mypage/dashboard'">마이페이지</button>
                                                  <button class="dropdown-item" type="button" onclick="'">레슨 수강 신청/관리</button>
                          <button class="dropdown-item" type="button" onclick="location.href=''">찜리스트 관리</button>
                                            </div>
        </div>
    </div>
    <span class="myinfoA1"><img src="" class="myProImg" style="width: 80px; height: 80px;"></span>
    <div class="myName">  ${memberDTO }회원</div>
      <div class="myMenu">              
     <span class="userInfo"><a><input type="button" value="나의 정보 확인" onclick="myUserInfo"></a></span>    
     <span class="userlesson"><a><input type="button" value="나의 레슨 확인" onclick="myLessonInfo"></a></span>
     <span class="userPayment"><a><input type="button" value="나의 결제 확인" onclick="myPaymentInfo"></a></span>
	 <span class="userReview"><a><input type="button" value="나의 후기 확인" onclick="myReveiwInfo"></a></span>
	 <span class="userQnA"><a><input type="button" value="나의 문의 확인" onclick="myQnAInfo"></a></span>
	 		<div class="myPageT">.</div>
	 		<div class="myLessonInfo">나의 레슨 수강 보기 <input type="button" class="myLessonInfoB" value="나의 레슨 모두 보기" onclick="myLessonInfo_P"><br>
	 		<span class="userLesson1">레슨<h2>수영교습</h2><br><img src="" style="width: 100px; height: 80px;"><br>강사 : 하둘리<br>수강 시간 : 2024-02-29</span>
	 		<span class="userLesson2">레슨<h2>스키기초</h2><br><img src="" style="width: 100px; height: 80px;"><br>강사 : 김청운<br>수강 시간 : 2024-02-27</span>
	 		<span class="userLesson3">레슨<h2>집밥기초</h2><br><img src="" style="width: 100px; height: 80px;"><br>강사 : 송중혁<br>수강 시간 : 2024-02-25</span>
	 		</div>
	 			
	 </div>

 <script>
 function backPage(){
		history.back();
	}
 function homePage(){
		location.href="../lesson/main.jsp";
	}
 function myLessonInfo_P(){
	 location.href="../lesson/myLesson_Page";
 }
 
 </script>
</body>
</html>