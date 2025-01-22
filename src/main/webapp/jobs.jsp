<%@page import="com.dubaicity.data.Job"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Dubai City - Jobs</title>
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="css/jobs.css">
</head>
<body>
	<nav>
		<div class="nav-links">
			<a href="tourism.jsp">Tourism</a> <a href="student.jsp">Student</a> <a
				href="#">Job applicant</a> <a href="business.jsp">Business</a>
		</div>
		<div class="logo">
			<img src="images/mylogo.png" alt="Amazing Thailand Logo">
		</div>
		<a href="#book" class="cta-button">Let's Traveling</a>
		<button class="menu-button">â°</button>
	</nav>

	<div class="jobs">
		<h1>Available Jobs</h1>
		<ul>
			<%
			List<Job> jobs = (List<Job>) request.getAttribute("jobs");
			%>
			<%
			for (Job job : jobs) {
			%>
			<li>
				<h3><%=job.getTitle()%></h3>
				<p><%=job.getDescription()%></p>
			</li>
			<%
			}
			%>
		</ul>
	</div>
</body>
</html>