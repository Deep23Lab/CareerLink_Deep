<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Logout</title>
<%@ include file="all_component/all_css.jsp"%>
</head>
<body>
<%-- 	<%@ include file="all_component/navbar.jsp"%> --%>
	<div class="container mt-5">
		<div class="row">	
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">Thank You</h4>
						<p class="card-text">You have been successfully logged out.
							Thank you for using our service.</p>
						<!-- Add any additional message or redirection links here -->
					</div>
					<a href="index.jsp" class="nav-link">
                <button type="button" class="btn btn-danger">
                    <i class="fas fa-sign-out-alt"></i> Back To Home
                </button>
                </a>
				</div>		      
			</div>
		</div>
</body>
</html>