<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html lang="ko">
<head>
<title>관리자 메인</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Dashboard - SB Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="../resources/css/admin/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
    <jsp:include page="inc/top.jsp" />
    <jsp:include page="inc/left.jsp" />
    <div id="layoutSidenav_content">
        <main>
        <br>
            <div class="container-fluid px-4">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-area me-1"></i>
                                방문자수
                            </div>
                            <div class="card-body"> <canvas id="visitorChart" width="200" height="80"></canvas></div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-area me-1"></i>
                               공지/이벤트
                            </div>
                            <div class="card-body"><canvas id="topRightChart" width="100%" height="300"></canvas></div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-area me-1"></i>
                                회원 분포도
                            </div>
                            <div class="card-body"><canvas id="bottomLeftChart" width="200" height="80"></canvas></div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-area me-1"></i>
                                문의
                            </div>
                            <div class="card-body"><canvas id="bottomRightChart" width="100%" height="300"></canvas></div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="inc/bottom.jsp" />
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="../resources/js/admin/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
    <script src="../resources/js/admin/datatables-simple-demo.js"></script>
    
    
    <script>
    // 그래프 데이터
    var visitorData = {
        labels: ["9월", "10월", "11월", "12월", "1월", "2월"],
        datasets: [{
            label: '방문자 수',
            data: [500, 600, 700, 1000, 1200, 1000 , 2000], // 최대치 2000
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
    
    <script>
    var memberData = {
    labels: ["강사", "일반회원"],
    datasets: [{
        label: '회원 분포도',
        data: [40, 60], //강사 40 일반 60
        backgroundColor: [
            'rgba(255, 99, 132, 0.2)', 
            'rgba(54, 162, 235, 0.2)'   
        ],
        borderColor: [
            'rgba(255, 99, 132, 1)',
            'rgba(54, 162, 235, 1)'
        ],
        borderWidth: 1
    }]
};


var memberChart = new Chart(document.getElementById('bottomLeftChart'), {
    type: 'bar',
    data: memberData,
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