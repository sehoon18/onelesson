<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>자주 묻는 질문</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

</head>
<body>
<div class="container">
	<div class="h4 pb-2 mb-4 text-danger border-bottom border-secondary">
		<h4 class="text-center"><a href="#">자주 묻는 질문</a></h1>
	</div>

<table class="table table-hover text-center">
  <thead class="table-dark">
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>테스트</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>테스트2</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>테스트3</td>
    </tr>
  </tbody>
</table>

	<nav aria-label="Page navigation example">
  		<ul class="pagination justify-content-center">
    		<li class="page-item">
      			<a class="page-link" href="#" aria-label="Previous">
        			<span aria-hidden="true">&laquo;</span>
      			</a>
    		</li>
    		<li class="page-item"><a class="page-link" href="#">1</a></li>
    		<li class="page-item"><a class="page-link" href="#">2</a></li>
    		<li class="page-item"><a class="page-link" href="#">3</a></li>
    		<li class="page-item"><a class="page-link" href="#">4</a></li>
    		<li class="page-item"><a class="page-link" href="#">5</a></li>
    		<li class="page-item">
      			<a class="page-link" href="#" aria-label="Next">
        			<span aria-hidden="true">&raquo;</span>
      			</a>
    		</li>
  		</ul>
	</nav>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>