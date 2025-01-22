<%@page import="com.dubaicity.data.Job"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Jobs List</title>
</head>
<body>
    <h1>Available Jobs</h1>
    <ul>
        <% List<Job> jobs = (List<Job>) request.getAttribute("jobs"); %>
        <% for (Job job : jobs) { %>
            <li>
                <h3><%= job.getTitle() %></h3>
                <p><%= job.getDescription() %></p>
            </li>
        <% } %>
    </ul>
</body>
</html>