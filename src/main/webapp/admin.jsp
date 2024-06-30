<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<%@ include file="all_component/all_css.jsp"%>
<style>
    .back-img {
        background: url("img/j2.png");
        height: 100vh;
        width: 100%;
        background-repeat: no-repeat;
        background-size: cover;
        position: relative; /* Add this to make the button relative to the container */
    }
    .home-button {
        position: absolute;
        color: black;	
        top: 20px;
        right: 20px;
        z-index: 999; /* Add a higher z-index to ensure the button is on top */
    }
</style>
</head>
<body>
    <%@ include file="all_component/admin_navbar.jsp"%>

	<!-- 	for security purpose only admin can access this pages  -->
	<c:if test="${userobj.role ne 'admin' }">
		<c:redirect url="admin_login.jsp"></c:redirect>

	</c:if>
	<!-- 	for security purpose only admin can access this pages  -->

	<div class="container-fluid back-img">
        <div class="text-center">
            <h1 class="text-black p-4">Welcome Admin</h1>
        </div>
        
        <!-- Admin Button (if needed) -->
        <li class="nav-item">
            <a href="admin.jsp" class="nav-link">
                <button type="button" class="btn btn-warning">
                    <i class="fas fa-user-shield"></i> Admin
                </button>
            </a>
        </li>
        <!-- Navigation Buttons -->
        <ul class="navbar-nav me-auto p-4 p-lg-0">
            <!-- Home Button -->
            <li class="nav-item">
                <a href="index.jsp" class="nav-link">
                    <button type="button" class="btn btn-primary me-2">
                        <i class="fas fa-home"></i> Home
                    </button>
                </a>
            </li>
            <!-- Add New Job Postings Button -->
            <li class="nav-item">
                <a href="add_job.jsp" class="nav-link">
                    <button type="button" class="btn btn-primary me-2">
                        <i class="fas fa-plus"></i> Add New Jobs
                    </button>
                </a>
            </li>
            <!-- View Job Applications Button -->
            <li class="nav-item">
                <a href="view_job.jsp" class="nav-link">
                    <button type="button" class="btn btn-primary">
                        <i class="fas fa-eye"></i> View Job Applications
                    </button>
                </a>
            </li>
            
        <li class="nav-item">
            <a href="logout.jsp" class="nav-link">
                <button type="button" class="btn btn-danger">
                    <i class="fas fa-sign-out-alt"></i> Logout
                </button>
            </a>
        </li>
        </ul>
    </div>
</body>
</html>
