<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>One Lesson</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="../resources/css/admin/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
    
    <style>
    .card-body{
        width: 100%;
        height: 100%;
        padding: 0px;
        margin:0px;
    }
    .container-fluid {
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
        margin-right: auto;
        margin-left: auto;
   }
  	  .link {
	  color:black;
	  text-decoration:none;
	  }
	  .link:hover {
		color: red;
		text-decoration:underline;
	}
    </style>
    
</head>
<body class="sb-nav-fixed">
    <jsp:include page="inc/top.jsp" />
    <jsp:include page="inc/left.jsp" />
    <div id="layoutSidenav_content">
        <main>
        <br>
                 <c:if test="${sessionScope.id == 'admin'}">
                 <div>
                <div class="row">
                    <div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-area me-1"></i>
                                방문자수
                            </div>
                            <div class="card-body"> <canvas id="visitorChart" width="auto;" height="50"></canvas></div>
                        </div>
                    </div>
                    <div class =" row" >
                    <div class="col-lg-6" style="width:200;">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-area me-1"></i>
                               공지/이벤트    
                               <button style="float: right;  color:blue; border:none;" type="button" onclick="location.href='${ pageContext.request.contextPath}/admin/notice'">바로가기</button>
                            </div>
                            <div class="card-body"><table id="noticeTable" class="table table-bordered">
                                <thead>
                                   <tr style="text-align: center; vertical-align: middle;">
                                        <th style="width: 15%;">타입</th>
                                        <th style="width: 35%;">제목</th>
                                        <th style="width: 8%;">조회수</th>
                                        <th style="width: 15%;">작성일</th>
                                    </tr>
                                </thead>   
                                <tbody>
                                    <c:forEach var="notice" items="${noticeList}">
                                       <tr style="text-align: center; vertical-align: middle;">
                                            <c:choose>
                                            <c:when test="${notice.type == 0}">
                                            <td>공지사항</td>
                                            </c:when>
                                            <c:when test="${notice.type == 1}">
                                           <td>이벤트</td>
                                            </c:when>
                                            <c:otherwise>
                                            알 수 없는 타입
                                            </c:otherwise>
                                            </c:choose>
                                            <td><a class="link" href="${pageContext.request.contextPath}/admin/noticeContent?num=${notice.num}">${notice.subject}</a></td>
                                            <td>${notice.readcount}</td>
                                            <td><fmt:formatDate value = "${notice.date}" pattern="yyyy-MM-dd"/></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                          </table></div>
                    </div>
                </div>
                
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-area me-1"></i>
                                문의
                                <button style="float: right;  color:blue; border:none;" type="button" onclick="location.href='${ pageContext.request.contextPath}/admin/qna'">바로가기</button>
                            </div>
                            <div class="card-body"> <table id="noticeTable" class="table table-bordered">
                                <thead>
                                    <tr style="text-align: center; vertical-align: middle;">
                                        <th style="width: 8%;">아이디</th>
                                        <th style="width: 40%;">제목</th>
                                        <th style="width: 10%;">답변여부</th>
                                        <th style="width: 15%;">작성일</th>
                                    </tr>
                                </thead>   
                                <tbody>
                                    <c:forEach var="qna" items="${qnaList}">
                                          <tr style="text-align: center; vertical-align: middle;">                                      
                                            <td>${qna.id}</td>
                                            <td><a class="link" href="${pageContext.request.contextPath}/admin/qnaContent?num=${qna.num}">${qna.subject}</a></td>
                                            <td>
                                            <c:choose>
                                            <c:when test="${qna.answered}">
                                           		 O
                                            </c:when>
                                            <c:otherwise>
                                          		 X
                                            </c:otherwise>
                                            </c:choose>
                                            </td>
                                            <td><fmt:formatDate value = "${qna.update}" pattern="yyyy-MM-dd"/></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                                           </table></div>
                                           </div>
                           </div>
                        </div>
                    </div>
                </div>
            </c:if>
        </main>
        <jsp:include page="inc/bottom.jsp" />
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../resources/js/admin/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
    <script src="../resources/js/admin/datatables-simple-demo.js"></script>
    
    
    <script>
    // 그래프 데이터
    var visitorData = {
        labels: ["1월 31일", "2월 7일", "2월 14일", "2월 21일", "2월 28일", "3월 6일"],
        datasets: [{
            label: '방문자 수',
            data: [200, 300 , 400 , 500 , 800 , 600 , 1000], // 최대치 2000
            backgroundColor: 'rgba(255, 99, 132, 0.2)',
            borderColor: 'rgba(255, 99, 132, 1)',
            borderWidth: 1
        }]
    };

    // 그래프 설정
    var visitorChart = new Chart(document.getElementById('visitorChart'), {
        type: 'line',
        data: visitorData,
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
</script>
    
    

    
    
    
    
    
    
    
    
</body>
</html>