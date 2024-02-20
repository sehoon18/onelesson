<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" href="${pageContext.request.contextPath}/member/main">One Lesson</a>
    <!-- Sidebar Toggle-->
    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>

    <!-- Navbar-->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0" style="margin-right: 30px;">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <c:if test="${!empty sessionScope.id}">
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/adminFindPass">Settings</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/adminLogout">Logout</a></li>
                    </c:if>
                    <c:if test="${empty sessionScope.id}">
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/adminLogin">Login</a></li>
                    </c:if>
                </ul>
            </li>
        </ul>
    </div>
</nav>
