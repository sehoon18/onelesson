<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리</title>
<style>

/* 	  카테고리 밑줄    */
	  .catecolor {
	  color:black;
	  text-decoration:none;
	  }
	  /* 	  카테고리 밑줄 마우스 올리면   */
	 .catecolor:hover {
		color: red;
		text-decoration:underline;
	}

</style>
</head>
<body>

  <div class="container marketing">
<!--   레슨리스트에 맞게 띄움 -->
  <br><br><br><br>
    <div class="row justify-content-center">
        <div class="col-lg-4 col-md-3 col-sm-4">
            <div class="text-center">
            <!--            카테고리이미지1 -->
            <a href="${pageContext.request.contextPath}/lesoon/lessonList"> 
                <img src="${pageContext.request.contextPath}/resources/images/main/cooking.png" class="rounded-circle" alt="category Image" width="140" height="140">
             </a>
			 <h2 class="fw-normal"><a class="catecolor" href="${pageContext.request.contextPath}/lesoon/lessonList">요리</a></h2>
            </div>
        </div>
        <div class="col-lg-4 col-md-3 col-sm-4">
            <div class="text-center">
            <!--            카테고리이미지2 -->
            <a href="${pageContext.request.contextPath}/lesoon/lessonList"> 
                <img src="${pageContext.request.contextPath}/resources/images/main/sports.png" class="rounded-circle" alt="Profile Image" width="140" height="140">
                </a>
                <h2 class="fw-normal"><a class="catecolor" href="${pageContext.request.contextPath}/lesoon/lessonList">스포츠</a></h2>
            </div>
        </div>
        <div class="col-lg-4 col-md-3 col-sm-4">
            <div class="text-center">
            <!--            카테고리이미지3 -->
            <a href="${pageContext.request.contextPath}/lesoon/lessonList"> 
                <img src="${pageContext.request.contextPath}/resources/images/main/craft.png" class="rounded-circle" alt="Profile Image" width="140" height="140">
                </a>
                <h2 class="fw-normal"><a class="catecolor" href="${pageContext.request.contextPath}/lesoon/lessonList">공예</a></h2>
            </div>
        </div>
        <div class="col-lg-4 col-md-3 col-sm-4">
            <div class="text-center">
            <!--            카테고리이미지4 -->
            <a href="${pageContext.request.contextPath}/lesoon/lessonList">
                <img src="${pageContext.request.contextPath}/resources/images/main/art.png" class="rounded-circle" alt="Profile Image" width="140" height="140">
                </a>
                <h2 class="fw-normal"><a class="catecolor" href="${pageContext.request.contextPath}/lesoon/lessonList">예술</a></h2>
            </div>
        </div>
        <div class="col-lg-4 col-md-3 col-sm-4">
            <div class="text-center">
<!--           			    카테고리이미지5 -->
			<a href="${pageContext.request.contextPath}/lesoon/lesoonlist"> 
                <img src="${pageContext.request.contextPath}/resources/images/main/etc.png" class="rounded-circle" alt="Profile Image" width="140" height="140">
                </a>
                <h2 class="fw-normal"><a class="catecolor" href="${pageContext.request.contextPath}/lesoon/lessonList">기타</a></h2>
            </div>
        </div>
    </div>
    </div>
</body>
</html>