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
    <title>정산 관리 - SB Admin</title>
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
                    <h1 class="mt-4">정산 관리</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">정산 관리 목록입니다.</li>
                    </ol>
                    
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            정산 목록
                        </div>
                        <div class="card-body">
                            <table id="paymentTable" class="table table-bordered">
                                <thead>
                                    <tr>
                                    	<th style="width: 20%; text-align: center;">업체명</th>
                                    	<th style="width: 15%; text-align: center;">정산 신청일</th>
                                    	<th style="width: 15%; text-align: center;">판매대금</th>
                                    	<th style="width: 15%; text-align: center;">정산 수수료</th>
                                    	<th style="width: 15%; text-align: center;">총 정산금액</th>
                                    	<th style="width: 10%; text-align: center;">상태</th>
                                    	<th style="width: 15%; text-align: center;">정산 완료일</th>
                                    </tr>
                                </thead>
                                <tbody>
                                        <tr>
                                            <td>가나다</td>
                                            <td>2024-02-07</td>
                                            <td>500,000</td>
                                            <td>50,000</td>
                                            <td>450,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-02-14</td>
                                        </tr>
                                        <tr>
                                            <td>마바사</td>
                                            <td>2024-03-07</td>
                                            <td>600,000</td>
                                            <td>60,000</td>
                                            <td>540,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-03-14</td>
                                        </tr>
                                        <tr>
                                            <td>사아자</td>
                                            <td>2024-04-07</td>
                                            <td>700,000</td>
                                            <td>70,000</td>
                                            <td>630,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-04-14</td>
                                        </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
          	
          	<jsp:include page="inc/bottom.jsp" />
          	
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
