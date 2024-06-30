<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<%@ include file="all_component/all_css.jsp"%>
<!-- Additional CSS or stylesheets if needed -->
<style>
.back-img {
	background: url("img/j2.png");
	height: 100vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
	/* Add this to make the button relative to the container */
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
	<%@ include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="row justify-content-center align-items-center vh-100">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center mb-4">Admin Login</h3>
						<form action="login" method="post">
							<div class="form-group">
								<label for="username">Username:</label> <input type="text"
									class="form-control" id="username" name="username" required>
							</div>
							<div class="form-group">
								<label for="password">Password:</label> <input type="password"
									class="form-control" id="password" name="password" required>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Login</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Additional content or scripts if needed -->
</body>
</html>
