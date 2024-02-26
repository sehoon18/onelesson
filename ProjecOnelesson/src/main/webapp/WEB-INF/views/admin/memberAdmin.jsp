<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>회원 관리 - SB Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="../resources/css/admin/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
   
      <style>
   /* 테이블을 감싸는 div */
#memberTableWrapper {
    overflow-x: auto; /* 가로 스크롤 생성 */
    max-height: 700px; 
    position: relative;
}

/* 테이블 헤더 고정 */
#memberTable thead {
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
    	회원 목록
	</div>
	<form action="${pageContext.request.contextPath}/admin/memberAdmin">
	<div class="datatable-top">
   		<div class="d-flex justify-content-end">
        	<div class="me-2" style="width: 150px;">
            	<select class="form-select form-select-sm" name="type">
                	<option value="100">전체</option>
                	<option value="0">학생</option>
                	<option value="1">강사</option>
            	</select>
        	</div>
        		<div style="width: 150px;">
            		<select class="form-select form-select-sm" name="field">
                		<option value="id">아이디</option>
                		<option value="name">이름</option>
                		<option value="nick">닉네임</option>
            		</select>
        		</div>
        	<div class="input-group ms-3">
            	<input class="form-control form-control-sm" type="text" placeholder="검색어를 입력하세요" name="keyword"  />
            	<button class="btn btn-primary btn-sm" type="submit"><i class="fas fa-search"></i></button>
        	</div>
    	</div>
	</div>
            	</form>

                       <div id="memberTableWrapper">
                            <table id="memberTable" class="table table-bordered" style="width:1675px;">
                                <thead>
                                    <tr style="text-align: center; vertical-align: middle;" >
                                    	<th style="width: 80px;">타입</th>
						                <th style="width: 150px;">회원 아이디</th>
						                <th style="width: 80px;">이름</th>
						                <th style="width: 150px;">닉네임</th>
						                <th style="width: 130px;">생년월일</th>
						                <th style="width: 150px;">연락처</th>
						                <th style="width: 70px;">이메일</th>
						                <th style="width: 80px;">성별</th>
						                <th style="width: 150px;">사업자등록번호</th>
						                <th style="width: 150px;">통신판매번호</th>
						                <th style="width: 150px;">포인트</th>
						                <th style="width: 120px;">가입일</th>
						                <th style="width: 100px;">상태</th>
						                <th style="width: 100px;">설정</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="member" items="${memberList}">
                                        <tr style="text-align: center; vertical-align: middle;">
                                            <c:choose>
                                            <c:when test="${member.type == 0}">
                                            <td>학생</td>
                                            </c:when>
                                            <c:when test="${member.type == 1}">
                                            <td>강사</td>
                                            </c:when>
                                            </c:choose>
                                            <td>${member.id}</td>
                                            <td>${member.name}</td>
                                            <td>${member.nick}</td>
                                            <td>${member.birth}</td>
                                            <td>${member.phone}</td>
                                            <td>${member.email}</td>
                                            <c:choose>
                                            <c:when test="${member.gender == 0}">
                                            <td>남자</td>
                                            </c:when>
                                            <c:when test="${member.gender == 1}">
                                            <td>여자</td>
                                            </c:when>
                                            </c:choose>
                                            <c:choose>
                                            <c:when test="${member.type == 1}">
                                            <td>${member.businessNum}</td>
                                            <td>${member.mailOrderNum}   
                                            </c:when>
                                            <c:when test="${member.type == 0}">                                            
                                            <td>X</td>                                          
											<td>X</td>                                           
                                            </c:when>
                                            </c:choose>
                                            <td><fmt:formatNumber value="${member.point}" pattern="#,###" />P</td>
                                            <td><fmt:formatDate value ="${member.join}" pattern="yyyy-MM-dd"/></td>
                                            <c:choose>
                                            <c:when test="${member.status == 0}">
                                            <td>활성화</td>
                                            </c:when>
                                            <c:when test="${member.status == 1}">
                                            <td>비활성화</td>
                                            </c:when>
                                            </c:choose>
                                            <td><c:choose>
                <c:when test="${member.status == 0}">
                    <form action="${pageContext.request.contextPath}/admin/changeStatus" method="post">
                        <input type="hidden" name="id" value="${member.id}" />
                        <input type="hidden" name="status" value="1" />
                        <input type="submit" value="비활성화" />
                    </form>
                </c:when>
                <c:otherwise>
                    <form action="${pageContext.request.contextPath}/admin/changeStatus" method="post">
                        <input type="hidden" name="id" value="${member.id}" />
                        <input type="hidden" name="status" value="0" />
                        <input type="submit" value="활성화" />
                    </form>
                </c:otherwise>
            </c:choose></td>
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
