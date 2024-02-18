<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">

	<jsp:include page="inc/top.jsp" />
        
    <jsp:include page="inc/left.jsp" />    
        
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">회원 관리</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">회원 관리 목록입니다.</li>
                    </ol>
                    
                    <div class="card mb-4">
    <div class="card-header">
    	<i class="fas fa-table me-1"></i>
    	회원 목록
	</div>
	<div class="datatable-top">
   		<div class="d-flex justify-content-end">
        	<div class="me-3" style="width: 150px;">
            	<select class="form-select form-select-sm">
                	<option value="all">전체</option>
                	<option value="student">학생</option>
                	<option value="mentor">강사</option>
            	</select>
        	</div>
        		<div style="width: 150px;">
            		<select class="form-select form-select-sm">
                		<option value="id">아이디</option>
                		<option value="name">이름</option>
                		<option value="nick">닉네임</option>
            		</select>
        		</div>
        	<div class="input-group ms-3">
            	<input class="form-control form-control-sm" type="text" placeholder="검색어를 입력하세요" />
            	<button class="btn btn-primary btn-sm" type="button"><i class="fas fa-search"></i></button>
        	</div>
    	</div>
	</div>

                        <div class="card-body">
                            <table id="memberTable" class="table table-bordered">
                                <thead>
                                    <tr>
                                    	<th style="width: 10%; text-align: center;">회원 아이디</th>
                                    	<th style="width: 10%; text-align: center;">이름</th>
                                    	<th style="width: 10%; text-align: center;">닉네임</th>
                                    	<th style="width: 10%; text-align: center;">생년월일</th>
                                    	<th style="width: 10%; text-align: center;">연락처</th>
                                    	<th style="width: 10%; text-align: center;">이메일</th>
                                    	<th style="width: 10%; text-align: center;">타입</th>
                                    	<th style="width: 10%; text-align: center;">상태</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="member" items="${members}">
                                        <tr>
                                            <td>${memberDTO.id}</td>
                                            <td>${memberDTO.name}</td>
                                            <td>${memberDTO.nick}</td>
                                            <td>${memberDTO.birth}</td>
                                            <td>${memberDTO.phone}</td>
                                            <td>${memberDTO.email}</td>
                                            <td>${memberDTO.type}</td>
                                            <td>${memberDTO.status}</td>
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
    </div>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="../resources/js/admin/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="../resources/assets/admin/demo/chart-area-demo.js"></script>
    <script src="../resources/assets/admin/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
    <script src="../resources/js/admin/datatables-simple-demo.js"></script>
</body>
</html>
