<%@page import="com.klef.jfsd.springboot.model.Faculty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    Faculty f = (Faculty) session.getAttribute("faculty");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Faculty Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9;
        }
        .welcome-container {
            margin-top: 50px;
            padding: 20px;
            border-radius: 10px;
            background-color: #fsfffff;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .welcome-title {
            font-size: 2rem;
            color: #5a5a5a;
            font-weight: bold;
        }
        .welcome-message {
            margin-top: 10px;
            color: #6c757d;
        }
    </style>
</head>
<body>
    <%@ include file="facultynavbar.jsp" %>

    <div class="container">
        <div class="welcome-container">
            <div class="welcome-title">
                Welcome, <%= f.getName() %>!
            </div>
            <p class="welcome-message">We're glad to have you here. Check your teaching schedule, manage courses, and engage with your students effectively.</p>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
