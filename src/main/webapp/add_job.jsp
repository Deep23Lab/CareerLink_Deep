<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="all_component/all_css.jsp"%>
<style>
/* Internal CSS styles */
.back-img {
	background: url("img/j2.png");
	height: 100vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.card {
	margin-top: 50px;
}

.card-body {
	padding: 30px;
}

.form-row {
	margin-bottom: 20px; /* Adjust margin as needed */
}

.form-group {
	margin-bottom: 20px; /* Adjust margin as needed */
}

.btn-primary {
	margin-right: 10px;
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

	<div class="container-fluid p-2 back-img">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>

						<c:if test="${not empty msg}">
							<div class="alert alert-danger" role="alert">${msg}</div>
							<c:remove var="msg" />
						</c:if>

						<h5>Add Jobs</h5>
					</div>
					<form action="addjob" method="post">
						<div class="form-group">
							<label for="title">Job Title:</label> <input type="text"
								class="form-control" id="title" name="title" required>
						</div>

						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="location">Location:</label> <select
									class="form-control" id="location" name="location" required>
									<option value="">Select City</option>
									<option value="Mumbai">Mumbai</option>
									<option value="Delhi">Delhi</option>
									<option value="Bangalore">Bangalore</option>
									<option value="Hyderabad">Hyderabad</option>
									<option value="Chennai">Chennai</option>
									<option value="Kolkata">Kolkata</option>
									<option value="Ahmedabad">Ahmedabad</option>
									<option value="Pune">Pune</option>
									<option value="Jaipur">Jaipur</option>
									<option value="Surat">Surat</option>
									<option value="Lucknow">Lucknow</option>
									<option value="Kanpur">Kanpur</option>
									<option value="Nagpur">Nagpur</option>
									<option value="Indore">Indore</option>
									<option value="Thane">Thane</option>
									<option value="Bhopal">Bhopal</option>
									<option value="Visakhapatnam">Visakhapatnam</option>
									<option value="Pimpri-Chinchwad">Pimpri-Chinchwad</option>
									<option value="Patna">Patna</option>
									<option value="Vadodara">Vadodara</option>
									<option value="Ghaziabad">Ghaziabad</option>
									<option value="Ludhiana">Ludhiana</option>
									<option value="Agra">Agra</option>
									<option value="Nashik">Nashik</option>
									<option value="Ranchi">Ranchi</option>
									<option value="Faridabad">Faridabad</option>
									<option value="Meerut">Meerut</option>
									<option value="Rajkot">Rajkot</option>
									<option value="Kalyan-Dombivli">Kalyan-Dombivli</option>
									<option value="Vasai-Virar">Vasai-Virar</option>
									<option value="Varanasi">Varanasi</option>
									<option value="Srinagar">Srinagar</option>
									<option value="Aurangabad">Aurangabad</option>
									<option value="Dhanbad">Dhanbad</option>
									<option value="Amritsar">Amritsar</option>
									<option value="Navi Mumbai">Navi Mumbai</option>
									<option value="Allahabad">Allahabad</option>
									<option value="Howrah">Howrah</option>
									<option value="Ranchi">Ranchi</option>
									<option value="Gwalior">Gwalior</option>
									<option value="Jabalpur">Jabalpur</option>
									<option value="Coimbatore">Coimbatore</option>
									<option value="Vijayawada">Vijayawada</option>
									<option value="Jodhpur">Jodhpur</option>
									<option value="Madurai">Madurai</option>
									<option value="Raipur">Raipur</option>
									<option value="Kota">Kota</option>
									<option value="Guwahati">Guwahati</option>
									<option value="Chandigarh">Chandigarh</option>
									<option value="Hubballi-Dharwad">Hubballi-Dharwad</option>
									<option value="Mysore">Mysore</option>
									<option value="Thiruvananthapuram">Thiruvananthapuram</option>
									<option value="Bareilly">Bareilly</option>
									<option value="Moradabad">Moradabad</option>
									<option value="Tiruchirappalli">Tiruchirappalli</option>
									<option value="Gurgaon">Gurgaon</option>
									<option value="Aligarh">Aligarh</option>
									<option value="Jalandhar">Jalandhar</option>
									<option value="Bhubaneswar">Bhubaneswar</option>
									<option value="Salem">Salem</option>
									<option value="Warangal">Warangal</option>
									<option value="Guntur">Guntur</option>
									<option value="Bhiwandi">Bhiwandi</option>
									<option value="Saharanpur">Saharanpur</option>
									<option value="Gorakhpur">Gorakhpur</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label for="category">Category:</label> <select
									class="form-control" id="category" name="category" required>
									<option value="">Select Category</option>
									<optgroup label="Tech Jobs">
										<option value="Software Developer">IT</option>
										<option value="Software Developer">Information
											Technology (IT) Sector</option>
										<option value="Data Analyst">Banking and Finance
											Sector</option>
										<option value="Network Engineer">Healthcare</option>
										<option value="UX/UI Designer">Education</option>
										<option value="Database Administrator">Engineering</option>
										<option value="Systems Administrator">Marketing and
											Advertising</option>
										<option value="Cybersecurity Analyst">Sales</option>
										<option value="Cloud Architect">Human Resources</option>
										<option value="DevOps Engineer">DevOps Engineer</option>
										<option value="AI/Machine Learning Engineer">Legal
											Sector</option>
										<option value="IT Project Manager">Creative Arts
											Sector</option>
										<!-- Add more tech job options as needed -->
									</optgroup>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label for="status">Status:</label> <select class="form-control"
									id="status" name="status" required>
									<option value="">Select Status</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label for="description">Description:</label>
							<textarea class="form-control" id="description"
								name="description" rows="4" required></textarea>
						</div>
						<button type="submit" class="btn btn-success">Publish
							Job</button>
						<button type="button" class="btn btn-primary"
							onclick="history.back()">
							<i class="fas fa-arrow-left"></i> Back
						</button>	
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>