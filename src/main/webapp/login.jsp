<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>
<%@ include file="all_component/all_css.jsp"%>
</head>
<body>
	<%@ include file="all_component/navbar.jsp"%>

	<div class="container-fluid">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i style='font-size: 24px' class='fas'>&#xf4ba;</i></i>
							<h2>User Login</h2>
							
							<c:if test="${not empty msg}">
							<div class="alert alert-danger" role="alert">${msg}</div>
							<c:remove var="msg" />
						</c:if>
						
						</div>
						<form action="login" method="post">
							<div class="form-group">
								<label for="username">Username:</label> <input type="text"
									class="form-control" id="username" name="username">
							</div>

							<div class="form-group">
								<label for="password">Password:</label> <input type="password"
									class="form-control" id="password" name="password">
							</div>
							<button type="submit" class="btn btn-primary btn-block"
								style="font-size: 20px; margin-top: 20px; padding: 10px; width: 498px;">Login</button>
							

						</form>

						<!-- Line for new user registration -->
						<p class="mt-3">
							New User? <a href="register.jsp">Register Here</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>