<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/adminMain">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                관리자 메인페이지
                            </a>
                            <div class="sb-sidenav-menu-heading">Interface</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseSiteStatus" aria-expanded="false" aria-controls="collapseSiteStatus">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                사이트 현황 조회
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseSiteStatus" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/admin/memberAdmin">회원 관리</a>
                                    <a class="nav-link" href="${pageContext.request.contextPath}/admin/lessonAdmin">레슨 관리</a>
                                </nav>
                            </div>
                            
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseBoardManagement" aria-expanded="false" aria-controls="collapseBoardManagement">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                게시판 관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseBoardManagement" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/admin/notice">공지/이벤트 게시판</a>
                                    <a class="nav-link" href="${pageContext.request.contextPath}/admin/faq">FAQ 게시판</a>
                                    <a class="nav-link" href="${pageContext.request.contextPath}/admin/qna">Q&A 게시판</a>
                                </nav>
                            </div>
                            
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/paymentAdmin">
                                <div class="sb-nav-link-icon"><i class="fas fa-calculator"></i></div>
                                정산 관리
                            </a>
                        </div>
                    </div>
                    
						<div class="sb-sidenav-footer">
							<c:if test="${!empty sessionScope.id}">
        						<div class="small">관리자 ${sessionScope.id}님</div>
        					</c:if>
						</div>
					
                </nav>
            </div>