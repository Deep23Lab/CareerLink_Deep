
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!-- Navbar Start -->
<nav
	class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
	<div class="container-fluid">
		<a href="index.html"
			class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
			<h1 class="m-0 text-primary">JobEntry</h1>
		</a>
		<button type="button" class="navbar-toggler me-4"
			data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav ms-auto p-4 p-lg-0">
				<!-- Manage Job Listings -->

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="manageJobDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false"
					style="font-weight: bold;"> Manage Job Listings </a>
					<ul class="dropdown-menu" aria-labelledby="manageJobDropdown">
						<li><a class="dropdown-item" href="#">Edit Existing Job
								Listings</a></li>
						<li><a class="dropdown-item" href="#">Delete Job Postings</a></li>
					</ul></li>

				<!-- User Management -->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="userManagementDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false" style="font-weight: bold;"> User
						Management </a>
					<ul class="dropdown-menu" aria-labelledby="userManagementDropdown">
						<li><a class="dropdown-item" href="#">View Registered
								Users</a></li>
						<li><a class="dropdown-item" href="#">Edit User Profiles</a></li>
						<li><a class="dropdown-item" href="#">Suspend/Delete User
								Accounts</a></li>
						<li><a class="dropdown-item" href="#">Reset User
								Passwords</a></li>
					</ul></li>

				<!-- Category Management -->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="categoryManagementDropdown" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"
					style="font-weight: bold;"> Category Management </a>
					<ul class="dropdown-menu"
						aria-labelledby="categoryManagementDropdown">
						<li><a class="dropdown-item" href="#">Create/Edit/Delete
								Job Categories</a></li>
						<li><a class="dropdown-item" href="#">Assign Job
								Categories to Listings</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>
<!-- Navbar End -->