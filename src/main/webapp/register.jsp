<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register page</title>
<%@ include file="all_component/all_css.jsp"%>

</head>
<body >
	<%@ include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card mt-5">
					<div class="card-body">
						<h2 class="mb-3 text-center">User Registration</h2>
						
						<c:if test="${not empty msg}">
							<div class="alert alert-danger" role="alert">${msg}</div>
							<c:remove var="msg" />
						</c:if>
						
						<form action="register" method="post">
							<div class="form-group">
								<label for="username">Username:</label> <input type="text"
									class="form-control" id="username" name="name" required>
							</div>
							<div class="form-group">
								<label for="email">Email:</label> <input type="email"
									class="form-control" id="email" name="email" required>
							</div>
							<div class="form-group">
								<label for="qualification">Qualification:</label> <select
									class="form-control" id="qualification" name="qualification">
									<option value="">Select Qualification</option>
									<option value="High School">High School</option>
									<option value="Diploma">Diploma</option>
									<option value="Bachelor's Degree">Bachelor's Degree</option>
									<option value="Master's Degree">Master's Degree</option>
									<option value="PhD">PhD</option>
								</select>
							</div>

							<div class="form-group">
								<label for="contact">Contact Number:</label> <input type="text"
									class="form-control" id="contact" name="contactNumber" required>
							</div>
							<div class="form-group">
								<label for="password">Password:</label> <input type="password"
									class="form-control" id="password" name="password" required>
							</div>
							<div class="form-group">
								<label for="confirmPassword">Confirm Password:</label> <input
									type="password" class="form-control" id="confirmPassword"
									name="confirmPassword" required>
							</div>
							<button type="submit" class="btn btn-primary btn-block"
								style="font-size: 20px; margin-top: 20px; margin-left: 60px; padding: 10px; width: 498px;">Register</button>
						</form>
						<a href="login.jsp" class="nav-link">
						<button type="submit" class="btn btn-secondary btn-block"
								style="font-size: 10px; margin-left: 250px; margin-top:20px; padding: 10px; width: 98px;">Back</button>
								</a>
					</div>
				</div>
			</div>
</body>
</html>