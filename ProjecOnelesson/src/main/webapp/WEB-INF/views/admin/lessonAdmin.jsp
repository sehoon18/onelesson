<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>레슨 관리 - SB Admin</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="../resources/css/admin/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
    
    <style>
   /* 테이블을 감싸는 div */
#lessonTableWrapper {
    overflow-x: auto; /* 가로 스크롤 생성 */
    max-height: 700px; 
    position: relative;
}

/* 테이블 헤더 고정 */
#lessonTable thead {
    position: sticky;
    top: 0; /* 화면 상단에 고정 */
    background-color: white; /* 헤더 배경색 설정 */
    z-index: 1; /* 다른 요소 위에 표시되도록 설정 */
}
   </style>
   
</head>
<body class="sb-nav-fixed">

	<jsp:include page="inc/top.jsp" />
        
    <jsp:include page="inc/left.jsp" />
        
        <div id="layoutSidenav_content">
            <main>
                <div>
                 <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            레슨 목록
                        </div>
                        <form action="${pageContext.request.contextPath}/admin/lessonAdmin">
                        	<div class="datatable-top">
   								<div class="d-flex justify-content-end">
        							<div class="me-2" style="width: 150px;">
            							<select class="form-select form-select-sm" name="category">
                							<option value="all">전체</option>
                							<option value="요리">요리</option>
                							<option value="스포츠">스포츠</option>
                							<option value="공예">공예</option>
                							<option value="예술">예술</option>
                							<option value="기타">기타</option>
            							</select>
        							</div>
        							<div class="me-2" style="width: 150px;">
            							<select class="form-select form-select-sm" name="field">
                							<option value="id">아이디</option>
                							<option value="subject">제목</option>
            							</select>
        							</div>
        							<div style="width: 160px;">
            							<select class="form-select form-select-sm" name="status">
                							<option value="100">전체</option>
                							<option value="0">진행중</option>
                							<option value="1">종료</option>
            							</select>
        							</div>
        							<div class="input-group ms-3">
            							<input class="form-control form-control-sm" type="text" placeholder="검색어를 입력하세요" name="keyword"/>
            							<button class="btn btn-primary btn-sm" type="submit"><i class="fas fa-search"></i></button>
        							</div>
    							</div>
							</div>
                        </form>
                        
                        
                       <div id="lessonTableWrapper">
                            <table id="lessonTable" class="table table-bordered" style="width:1675px;">
                                <thead>
                                 <tr style="text-align: center; vertical-align: middle;">
                                    	<th style="width: 5%; text-align: center;">레슨번호</th>
                                    	<th style="width: 8%; text-align: center;">강사 아이디</th>
                                    	<th style="width: 5%; text-align: center;">카테고리</th>
                                    	<th style="width: 20%; text-align: center;">제목</th>
                                    	<th style="width: 20%; text-align: center;">지역</th>
                                    	<th style="width: 10%; text-align: center;">가격</th>
                                    	<th style="width: 6%; text-align: center;">작성일</th>
                                    	<th style="width: 6%; text-align: center;">레슨일</th>
                                    	<th style="width: 5%; text-align: center;">상태</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="lesson" items="${lessonList}">
                                     <tr style="text-align: center; vertical-align: middle;">
                                            <td>${lesson.num}</td> 
                                            <td>${lesson.id}</td> 
								            <td>${lesson.subCategory}</td>
								            <td>${lesson.subject}</td> 
                                            <td>${lesson.location}</td> 
								            <td><fmt:formatNumber value="${lesson.price}" pattern="#,###" />원</td>
                                            <td><fmt:formatDate value = "${lesson.update}" pattern="yyyy-MM-dd"/></td> 
								            <td>${lesson.date}</td>
								            <c:choose>
                                            <c:when test="${lesson.status == 0}">
                                            <td>진행중</td>
                                            </c:when>
                                            <c:when test="${lesson.status == 1}">
                                           <td>종료</td>
                                            </c:when>
                                            </c:choose>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
            
            <jsp:include page="inc/bottom.jsp" />
            
        </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../resources/js/admin/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
    <script src="../resources/assets/admin/demo/chart-area-demo.js"></script>
    <script src="../resources/assets/admin/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
    <script src="../resources/js/admin/datatables-simple-demo.js"></script>
</body>
</html>
