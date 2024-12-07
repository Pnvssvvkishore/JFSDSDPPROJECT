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
    <title>Faculty Profile</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <%@ include file="facultynavbar.jsp" %>

    <div class="container mt-5">
        <div class="card">
            <div class="card-header text-center">
                <h3>My Profile</h3>
            </div>
            <div class="card-body">
                <div class="row mb-3">
                    <div class="col-sm-3 font-weight-bold">Faculty ID:</div>
                    <div class="col-sm-9"><%= f.getId() %></div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-3 font-weight-bold">Name:</div>
                    <div class="col-sm-9"><%= f.getName() %></div>
                </div>
               
                <div class="row mb-3">
                    <div class="col-sm-3 font-weight-bold">Department:</div>
                    <div class="col-sm-9"><%= f.getDepartment() %></div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-3 font-weight-bold">Designation:</div>
                    <div class="col-sm-9"><%= f.getDesignation() %></div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-3 font-weight-bold">Qualification:</div>
                    <div class="col-sm-9"><%= f.getQualification() %></div>
                </div>
                 <div class="row mb-3">
                    <div class="col-sm-3 font-weight-bold">Email:</div>
                    <div class="col-sm-9"><%= f.getEmail() %></div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
