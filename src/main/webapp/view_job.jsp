<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@page import="com.entity.Jobs"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: View Jobs</title>
<%@ include file="all_component/all_css.jsp"%>
</head>
<body>
	<%@ include file="all_component/admin_navbar.jsp"%>

	<!-- 	for security purpose only admin can access this pages  -->
	<c:if test="${userobj.role ne 'admin' }">
		<c:redirect url="admin_login.jsp"></c:redirect>

	</c:if>
	<!-- 	for security purpose only admin can access this pages  -->

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<div class="row justify-content-end">
					<div class="col-md-auto">
						<p class="nav-item"><a href="admin.jsp" class="nav-link">
								<button type="button" class="btn btn-primary me-2">
									<i class="fas fa-home"></i> Home
								</button>
						</a></p>
					</div>
					<div class="col-md-auto">
						<p class="nav-item"><a href="logout.jsp" class="nav-link">
								<button type="button" class="btn btn-danger">
									<i class="fas fa-sign-out-alt"></i> Logout
								</button>
						</a></p>
					</div>
				</div>
						<h5 class="text-center text-primary"
							style="margin-top: 70px; font-size: 50px;">ALL JOBS</h5>

						<c:if test="${not empty msg}">
							<div class="alert alert-danger" role="alert">${msg}</div>
							<c:remove var="msg" />
						</c:if>

						<%
						JobDAO dao = new JobDAO(DBConnect.getConn());
						List<Jobs> list = dao.getAllJobs();
						for (Jobs j : list) {
						%>
						<div class="card mt-2"
							style="border: 1px solid #dee2e6; border-radius: 0.25rem;">
							<div class="card-body" style="padding: 1.65rem;">
								<div class="text-center text-primary">
									<i class="far fa-clipboard fa-2x"></i>
								</div>

								<h6 style="font-weight: bold; color: blue; font-size: 25px;">
									Job Title:
									<%=j.getTitle()%></h6>
								<p>
									Description:
									<%=j.getDescription()%></p>
								<br>
								<div class="form-row">
									<div class="form-group col-md-3">
										<input type="text" class="form-control form-control-sm"
											value="Location: <%=j.getLocation()%>" readonly
											style="padding: 0.65rem 0.5rem; font-size: 0.875rem;">
									</div>
									<div class="form-group col-md-3">
										<input type="text" class="form-control form-control-sm"
											value="Category: <%=j.getCategory()%>" readonly
											style="padding: 0.65rem 0.5rem; font-size: 0.875rem;">
									</div>
									<div class="form-group col-md-3">
										<input type="text" class="form-control form-control-sm"
											value="Status: <%=j.getStatus()%>" readonly
											style="padding: 0.65rem 0.5rem; font-size: 0.875rem;">
									</div>
								</div>

								<h6>
									Publish Date:
									<%=j.getPdate()%></h6>
								<div class="text-center">
									<a href="edit_job.jsp?id=<%=j.getId()%>"
										class="btn btn-sm bg-success text-white"
										style="padding: 0.65rem 0.9rem; font-size: 0.875rem; background-color: #28a745;">
										Edit</a> <a href="delete?id=<%=j.getId()%>"
										class="btn btn-sm bg-danger text-white"
										style="padding: 0.65rem 0.8rem; font-size: 0.875rem; background-color: #dc3545;">Delete</a>

								</div>
							</div>
						</div>
						<%
						}
						%>

					</div>
				</div>
			</div>
</body>
</html>
