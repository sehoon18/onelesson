<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">


<div class="b-example-divider"></div>

<footer class="container-fluid">
    <div class="row">
        <div class="col">
            <ul class="nav flex-column flex-md-row" style="margin-left: 200px; font-weight: 500;">
                <li class="nav-item"><a class="nav-link text-body-secondary">회사 주소 : 부산광역시 부산진구 동천로 109 삼한골든게이트빌딩 7층</a></li>
                <li class="nav-item"><a class="nav-link text-body-secondary">회사 이메일 : OneLesson@OneLesson.com</a></li>
                <li class="nav-item"><a class="nav-link text-body-secondary">회사 전화번호: 0000-0000</a></li>
                <li class="nav-item"><a class="nav-link text-body-secondary">사업자등록번호 : 000-00-00000 </a></li>
                <li class="nav-item"><a class="nav-link text-body-secondary">통신판매업신고번호 : 제 2024-부산-1234</a></li>
                <li class="nav-item"><a class="nav-link text-body-secondary">운영시간 : 평일 09:00 ~ 17:00(주말/공휴일 제외)</a></li>
                <li class="nav-item"><a class="nav-link text-body-secondary">고객센터 : T 0000-0000 </a></li>
                <li class="nav-item"><a class="nav-link text-body-secondary">대표자 이름 : 김레슨 </a></li>
            </ul>
        </div>
        <div class="col">
            <ul class="nav flex-column flex-md-row" style="margin-left: 200px; font-weight: 900;">
                <li class="nav-item"><a href="#" class="nav-link text-body-secondary">사이트 이용안내</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-body-secondary">이용약관</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/board/notice" class="nav-link text-body-secondary">공지사항/이벤트</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/board/faq" class="nav-link text-body-secondary">자주묻는질문</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-body-secondary">문의</a></li>
            </ul>
                 </div>
        </div>
                 <div class="text-center">
        <img src="${pageContext.request.contextPath}/resources/images/main/logo.png" alt="Logo" style="width: 240px; height: auto;">
    </div>
</footer>