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
    <title>OneLesson</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
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
                    <br>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            정산 목록
                        </div>
                        <div class="card-body">
                        	<c:if test="${sessionScope.id eq 'admin'}">
                            <table id="datatablesSimple">
                                <thead>
                                        <tr>
                                            <th>레슨명</th>
                                            <th>정산 신청일</th>
                                            <th>판매대금</th>
                                            <th>정산 수수료</th>
                                            <th>총 정산금액</th>
                                            <th>상태</th>
					    					<th>정산 완료일</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>레슨명</th>
                                            <th>정산 신청일</th>
                                            <th>판매대금</th>
                                            <th>정산 수수료</th>
                                            <th>총 정산금액</th>
                                            <th>상태</th>
					    					<th>정산 완료일</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>강철중 스키 강습</td>
                                            <td>2024-02-29</td>
                                            <td>1,500,000</td>
                                            <td>150,000</td>
                                            <td>1,350,000</td>
                                            <td>정산 대기</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <td>sk8er 스케이트보드 레슨</td>
                                            <td>2024-02-29</td>
                                            <td>600,000</td>
                                            <td>60,000</td>
                                            <td>540,000</td>
                                            <td>정산 대기</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <td>하루만에 마술사 되어보기</td>
                                            <td>2024-02-28</td>
                                            <td>450,000</td>
                                            <td>45,000</td>
                                            <td>405,000</td>
                                            <td>정산 대기</td>
                                            <td>-</td>
                                        </tr>
										<tr>
                                            <td>원데이 요가 레슨</td>
                                            <td>2024-02-25</td>
                                            <td>1,100,000</td>
                                            <td>110,000</td>
                                            <td>990,000</td>
                                            <td>정산 대기</td>
                                            <td>-</td>
                                        </tr>
										<tr>
                                            <td>원데이 파스타 클래스</td>
                                            <td>2024-02-22</td>
                                            <td>780,000</td>
                                            <td>78,000</td>
                                            <td>702,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-02-29</td>
                                        </tr>
										<tr>
                                            <td>수영교실</td>
                                            <td>2024-02-20</td>
                                            <td>1,350,000</td>
                                            <td>135,000</td>
                                            <td>1,215,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-02-27</td>
                                        </tr>
										<tr>
                                            <td>충북 도자기 체험</td>
                                            <td>2024-02-15</td>
                                            <td>800,000</td>
                                            <td>80,000</td>
                                            <td>720,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-02-22</td>
                                        </tr>
										<tr>
                                            <td>코딩교실</td>
                                            <td>2024-02-12</td>
                                            <td>600,000</td>
                                            <td>60,000</td>
                                            <td>540,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-02-19</td>
                                        </tr>
										<tr>
                                            <td>김선생과 함께 하는 베이킹 레슨</td>
                                            <td>2024-02-10</td>
                                            <td>450,000</td>
                                            <td>45,000</td>
                                            <td>405,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-02-17</td>
                                        </tr>
										<tr>
                                            <td>내 손으로 만드는 구움과자</td>
                                            <td>2024-02-08</td>
                                            <td>300,000</td>
                                            <td>30,000</td>
                                            <td>270,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-02-15</td>
                                        </tr>
										<tr>
                                            <td>기초부터 차근차근 기타 교실</td>
                                            <td>2024-02-05</td>
                                            <td>500,000</td>
                                            <td>50,000</td>
                                            <td>450,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-02-12</td>
                                        </tr>
										<tr>
                                            <td>백선생과 함께 만드는 집밥</td>
                                            <td>2024-02-01</td>
                                            <td>1,300,000</td>
                                            <td>130,000</td>
                                            <td>1,170,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-02-08</td>
                                        </tr>
										<tr>
                                            <td>하루만에 마술사 되어보기</td>
                                            <td>2024-01-31</td>
                                            <td>450,000</td>
                                            <td>45,000</td>
                                            <td>405,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-02-07</td>
                                        </tr>
										<tr>
                                            <td>원데이 요가 레슨</td>
                                            <td>2024-01-28</td>
                                            <td>1,100,000</td>
                                            <td>110,000</td>
                                            <td>990,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-02-05</td>
                                        </tr>
										<tr>
                                            <td>원데이 파스타 클래스</td>
                                            <td>2024-01-25</td>
                                            <td>800,000</td>
                                            <td>80,000</td>
                                            <td>720,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-01-31</td>
                                        </tr>
										<tr>
                                            <td>아이패드 드로잉 클래스</td>
                                            <td>2024-01-20</td>
                                            <td>600,000</td>
                                            <td>60,000</td>
                                            <td>540,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-01-27</td>
                                        </tr>
										<tr>
                                            <td>캘리그라피 교실</td>
                                            <td>2024-01-18</td>
                                            <td>400,000</td>
                                            <td>40,000</td>
                                            <td>360,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-01-25</td>
                                        </tr>
										<tr>
                                            <td>원데이 가죽공예 클래스</td>
                                            <td>2024-01-15</td>
                                            <td>900,000</td>
                                            <td>90,000</td>
                                            <td>810,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-01-21</td>
                                        </tr>
										<tr>
                                            <td>DIY 비즈공예 레슨</td>
                                            <td>2024-01-12</td>
                                            <td>350,000</td>
                                            <td>35,000</td>
                                            <td>315,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-01-19</td>
                                        </tr>
										<tr>
                                            <td>퍼스널 향수 만들기</td>
                                            <td>2024-01-10</td>
                                            <td>500,000</td>
                                            <td>50,000</td>
                                            <td>450,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-01-17</td>
                                        </tr>
										<tr>
                                            <td>반지 공방</td>
                                            <td>2024-01-08</td>
                                            <td>700,000</td>
                                            <td>70,000</td>
                                            <td>630,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-01-15</td>
                                        </tr>
										<tr>
                                            <td>하루만에 마술사 되어보기</td>
                                            <td>2024-01-08</td>
                                            <td>450,000</td>
                                            <td>45,000</td>
                                            <td>405,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-01-15</td>
                                        </tr>
										<tr>
                                            <td>원데이 요가 레슨</td>
                                            <td>2024-01-07</td>
                                            <td>1,100,000</td>
                                            <td>110,000</td>
                                            <td>990,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-01-14</td>
                                        </tr>
										<tr>
                                            <td>원데이 파스타 클래스</td>
                                            <td>2024-01-05</td>
                                            <td>800,000</td>
                                            <td>80,000</td>
                                            <td>720,000</td>
                                            <td>정산 완료</td>
                                            <td>2024-01-12</td>
                                        </tr>
                                    </tbody>
                                </table>
                                </c:if>
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
