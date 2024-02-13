<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>category</title>
<style>
  .row {
    display: flex;
    justify-content: space-between;
  }
  .category_obj {
	flex: 1;
    margin: 0 10px;
    text-align: center;
  }
</style>
</head>
<body>

<div class="row justify-content-center">
      <div class="category_obj">
		<div style="background: url('/images/cooking.png'); height="100%"; width="100%";></div>
       <h2 class="fw-normal">요리</h2>
        <p><a class="btn btn-secondary" href="#">자세히보기 &raquo;</a></p>
      </div><!-- /.col-lg-2 -->
      <div class="category_obj">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg>
        <h2 class="fw-normal">스포츠</h2>
        <p><a class="btn btn-secondary" href="#">자세히보기 &raquo;</a></p>
      </div><!-- /.col-lg-2 -->
      <div class="category_obj">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg>
        <h2 class="fw-normal">공예</h2>
        <p><a class="btn btn-secondary" href="#">자세히보기 &raquo;</a></p>
      </div><!-- /.col-lg-2 -->
      <div class="category_obj">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg>
        <h2 class="fw-normal">예술</h2>
        <p><a class="btn btn-secondary" href="#">자세히보기 &raquo;</a></p>
      </div><!-- /.col-lg-2 -->
      <div class="category_obj">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg>
        <h2 class="fw-normal">기타</h2>
        <p><a class="btn btn-secondary" href="#">자세히보기 &raquo;</a></p>
      </div><!-- /.col-lg-2 -->
</div><!-- /.row -->

</body>
</html>